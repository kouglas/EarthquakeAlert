//
//  EarthquakeAlertTests.swift
//  EarthquakeAlertTests
//
//  Created by Kari Douglas on 5/31/25.
//

import Testing
import Foundation
@testable import EarthquakeAlert

struct EarthquakeAlertTests {

    @Test func geoJSONDecoderDecodesQuake() throws {
        let decoder  = JSONDecoder()
        
        let quake = try decoder.decode(Quake.self, from: testFeature_nc73649170)
        #expect(quake.code == "73649170")
    }
}
