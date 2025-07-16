//
//  EarthquakeAlertApp.swift
//  EarthquakeAlert
//
//  Created by Kari Douglas on 5/30/25.
//

import SwiftUI

@main
struct EarthquakeAlertApp: App {
    @State var quakesProvider = QuakesProvider()
    var body: some Scene {
        WindowGroup {
            Quakes()
                .environment(quakesProvider)
        }
    }
}
