//
//  QuakeLocation.swift
//  EarthquakeAlert
//
//  Created by Kari Douglas on 6/5/25.
//

import Foundation

struct QuakeLocation: Decodable {
    var latitude: Double {
        properties.products.origin.first!.properties.latitude
    }
    var longitude: Double {
        properties.products.origin.first!.properties.longitude
    }
    private var properties: RootProperties
    
    // this one holds products key
    struct RootProperties: Decodable {
        var products: Products
    }
    
    // this one holds origin key
    struct Products: Decodable {
        var origin: [Origin]
    }
    
    // this one holds the properties key
    struct Origin: Decodable {
        var properties: OriginProperties
    }
    
    // this parent key and the child key that
    // has the desired nested properties (latitude longitude)
    struct OriginProperties {
        var latitude: Double
        var longitude: Double
    }
}

extension QuakeLocation.OriginProperties: Decodable {
    private enum OriginPropertiesCodingKeys: String, CodingKey {
        case latitude
        case longitude
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(
            keyedBy: OriginPropertiesCodingKeys
                .self)
        let longitude = try container.decode(String.self, forKey: .longitude)
        let latitude = try container.decode(String.self, forKey: .latitude)
        guard let longitude = Double(longitude),
              let latitude = Double(latitude) else {
            throw QuakeError.missingData
        }
        self.longitude = longitude
        self.latitude = latitude
    }
}
