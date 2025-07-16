//
//  Quakes.swift
//  EarthquakeAlert
//
//  Created by Kari Douglas on 7/15/25.
//

import Foundation
import SwiftUI

struct Quakes: View {
    @AppStorage("lastUpdated")
    var lastUpdated = Date.distantFuture.timeIntervalSince1970

    @Environment(QuakesProvider.self) var provider
    @State var editMode: EditMode = .inactive
    @State var selectMode: SelectMode = .inactive
    @State var isLoading = false
    @State var selection: Set<String> = []
    @State private var error: QuakeError?
    @State private var hasError = false

    var body: some View {
        NavigationView {
            List(selection: $selection) {
                ForEach(provider.quakes) { quake in
                    QuakeRow(quake: quake)
                }
                .onDelete(perform: deleteQuakes)
            }
            .listStyle(.inset)
            .navigationTitle(title)
            .toolbar(content: toolbarContent)
            .environment(\.editMode, $editMode)
            .refreshable {
                await fetchQuakes()
            }
            .alert(isPresented: $hasError, error: error) {}
        }
        .task {
            await fetchQuakes()
        }
    }
}

extension Quakes {
    var title: String {
        if selectMode.isActive || selection.isEmpty {
            return "Earthquakes"
        } else {
            return "\(selection.count) Selected"
        }
    }
    func deleteQuakes(at offsets: IndexSet) {
        provider.deleteQuakes(atOffsets: offsets)
    }
    func deleteQuakes(for codes: Set<String>) {
        var offsetsToDelete: IndexSet = []
        for (index, element) in provider.quakes.enumerated() {
            if codes.contains(element.code) {
                offsetsToDelete.insert(index)
            }
        }
        deleteQuakes(at: offsetsToDelete)
        selection.removeAll()
    }
    func fetchQuakes() async {
        isLoading = true
        do {
            try await provider.fetchQuakes()
            lastUpdated = Date().timeIntervalSince1970
        } catch {
            self.error = error as? QuakeError ?? .unexpectedError(error: error)
            self.hasError = true
        }
        isLoading = false
    }
}

//#Preview {
//    Quakes()
//        .environment(
//            QuakesProvider(client:
//                            QuakeClient(downloader: TestDownloader())))
//}
