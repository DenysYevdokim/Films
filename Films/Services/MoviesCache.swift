//
//  MoviesCache.swift
//  Films
//
//  Created by PRO on 25.08.2026.
//

import Foundation

class MoviesCache {
    static let shared = MoviesCache()
    private init() {}
    
    private let fileManager = FileManager.default

    private lazy var fileURL: URL = {
        let paths = fileManager.urls(for: .cachesDirectory, in: .userDomainMask)
        return paths[0].appendingPathComponent("movies_cache.json")
    }()
}
