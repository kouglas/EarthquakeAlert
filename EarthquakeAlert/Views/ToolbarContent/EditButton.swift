//
//  EditButton.swift
//  EarthquakeAlert
//
//  Created by Kari Douglas on 7/15/25.
//

import Foundation

import SwiftUI

struct EditButton: View {
    @Binding var editMode: EditMode
    var action: () -> Void = {}
    var body: some View {
        Button {
            withAnimation {
                if editMode == .active {
                    action()
                    editMode = .inactive
                } else {
                    editMode = .active
                }
            }
        } label: {
            if editMode == .active {
                Text("Cancel").bold()
            } else {
                Text("Edit")
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    EditButton(editMode: .constant(.inactive))
    EditButton(editMode: .constant(.active))
    EditButton(editMode: .constant(.transient))
}
