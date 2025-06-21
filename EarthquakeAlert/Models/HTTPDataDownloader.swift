//
//  HTTPDataDownloader.swift
//  EarthquakeAlert
//
//  Created by Kari Douglas on 6/19/25.
//

import Foundation


let validStatus = 200...299
protocol HTTPDataDownloader: Sendable {
    func httpData(from: URL) -> async throws -> Data
    
}

extension URLSession: HTTPDataDownloader {
    func httpData(from url: URL) async throws -> Data {
    }
}
