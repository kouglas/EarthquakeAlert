//
//  GeoJSON.swift
//  EarthquakeAlert
//
//  Created by Kari Douglas on 6/4/25.
//

import Foundation

struct GeoJSON: Decodable {
    
    private enum RootCodingKeys: String, CodingKey {
        case features
    }
    private enum FeaturesCodingKeys: String, CodingKey {
        case properties
        
    }
    
    private(set)  var quakes: [Quake] = []
    init(from decoder: Decoder) throws {
        let rootContainer = try decoder.container(keyedBy: RootCodingKeys.self)
        var featuresContainer = try rootContainer.nestedUnkeyedContainer(
            forKey: .features
        )
        
        while !featuresContainer.isAtEnd {
            let propertiesContainer = try featuresContainer.nestedContainer(
                keyedBy: FeaturesCodingKeys.self
            )
            
            if let properties = try? propertiesContainer.decode(
                Quake.self,
                forKey: .properties
            ) {
                quakes.append(properties)
            }
        }
    }
}
