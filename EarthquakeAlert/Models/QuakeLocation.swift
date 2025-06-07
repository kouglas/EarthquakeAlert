//
//  QuakeLocation.swift
//  EarthquakeAlert
//
//  Created by Kari Douglas on 6/5/25.
//

import Foundation

struct QuakeLocation: Decodable {
    var latitude: Double
    var longitude: Double
    private var rootProperties: RootProperties
    
    struct RootProperties: Decodable {
        var products: Products
    }
    
    struct Products: Decodable {
        var origin: [Origin]
    }
    
    struct Origin: Decodable {
        var properties: OriginProperties
    }
    
    struct OriginProperties: Decodable {
        var latitude: Double
        var longitude: Double
    }
}
