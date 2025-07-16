//
//  RefreshButton.swift
//  EarthquakeAlert
//
//  Created by Kari Douglas on 7/15/25.
//

import Foundation

import SwiftUI

struct RefreshButton: View {
    var action: () -> Void = {}
    var body: some View {
        Button(action: action) {
            Label("Refresh", systemImage: "arrow.clockwise")
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RefreshButton()
}
