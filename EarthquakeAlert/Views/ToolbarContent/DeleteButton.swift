//
//  DeleteButton.swift
//  EarthquakeAlert
//
//  Created by Kari Douglas on 7/15/25.
//

import Foundation
import SwiftUI
struct DeleteButton: View {
    var action: () -> Void = {}
    var body: some View {
        Button(action: action) {
            Label("Delete", systemImage: "trash")
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    DeleteButton()
}
