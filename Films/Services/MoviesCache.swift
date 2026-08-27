//
//  MoviesCache.swift
//  Films
//
//  Created by PRO on 25.08.2026.


import Foundation

class MoviesCache {
    static let shared = MoviesCache()
    private init() {}
    
    private let fileManager = FileManager.default
    
    private lazy var fileURL: URL = {
        let paths = fileManager.urls(for: .cachesDirectory, in: .userDomainMask)
        return paths[0].appendingPathComponent("movies_cache.json")
    }()
    
    
    func save(_ movies: [Movie]) {
        do {
            let data = try JSONEncoder().encode(movies)
            try data.write(to: fileURL)
        } catch {
            print("Не удалось сохранить фильмы: \(error)")
        }
    }
    
    func load() -> [Movie]? {
        guard fileManager.fileExists(atPath: fileURL.path) else { return nil }
        do {
            let data = try Data(contentsOf: fileURL)
            let movies = try JSONDecoder().decode([Movie].self,from: data)
            return movies
        } catch {
            print ("Не удалось раскодировать файл: \(error)")
            return nil
        }
    }
    
    
    
    
}
