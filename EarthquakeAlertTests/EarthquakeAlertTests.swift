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
        decoder.dateDecodingStrategy = .millisecondsSince1970
        let quake = try decoder.decode(Quake.self, from: testFeature_nc73649170)
        #expect(quake.code == "73649170")
        
        let expectedSeconds = TimeInterval(1636129710550 / 1000.0)
        let expectedTime = Date(timeIntervalSince1970: expectedSeconds)
        #expect(quake.time == expectedTime)
    }
    
    
    @Test func geoJSONDecoderDecodesTsunami() throws {
        let decoder  = JSONDecoder()
//        decoder.dateDecodingStrategy = .millisecondsSince1970
        let quake = try decoder.decode(Quake.self, from: testFeature_nc73649170)
        #expect(quake.tsunami == 0)
        
//        let expectedSeconds = TimeInterval(1636129710550 / 1000.0)
//        let expectedTime = Date(timeIntervalSince1970: expectedSeconds)
//        #expect(quake.time == expectedTime)
    }
    
    @Test func geoJSONDecoderDecodesGeoJSON() throws {
        let decoder = JSONDecoder()
//        decoder.dateDecodingStrategy = .millisecondsSince1970
        let decoded = try decoder.decode(GeoJSON.self, from: testQuakesData)
        #expect(decoded.quakes.count == 12 )
        #expect(decoded.quakes[0].code == "021cqg006b")
        
//        let expectedSeconds = TimeInterval(1636129710550 / 1000.0)
//        let expectedTime =  Date(timeIntervalSince1970: expectedSeconds)
//        #expect(decoded.quakes[0].time == expectedTime)
    }
    
    @Test func quakeDetailsDecoderForLatitude() throws {
        let decoded = try JSONDecoder().decode(
            QuakeLocation.self,
            from: testDetail_hv72783692
        )
        #expect(decoded.latitude == 19.2189998626709)
    }
    
    @Test func quakeDetailsDecoderForLongitude() throws {
        let decoded = try JSONDecoder().decode(
            QuakeLocation.self,
            from: testDetail_hv72783692
        )
        #expect(decoded.longitude == -155.434173583984)
    }
}


