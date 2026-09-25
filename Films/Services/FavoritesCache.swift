//
//  FavoriteCache.swift
//  Films
//
//  Created by PRO on 25.09.2026.
//

import Foundation

class FavoritesCache {
    static let shared = FavoritesCache()
    private init() {}
    
    private let fileManager = FileManager.default
    
    private lazy var fileURL: URL = {
        let paths = fileManager.urls(for: .cachesDirectory, in: .userDomainMask)
        return paths[0].appendingPathComponent("favorites_cache.json")
    }()
    
    func save(_ movies: [Movie]) {
        do {
            let data = try JSONEncoder().encode(movies)
            try data.write(to: fileURL)
        } catch {
            print("Не удалось сохранить фильмы: \(error)")
        }
    }
    
    func add(_ movie: Movie) {
        var movies = load() ?? []
        
        if !movies.contains(where: { $0.id == movie.id }) {
            movies.append(movie)
            save(movies)
        }
    }
    
    func remove(_ movie: Movie) {
        var movies = load() ?? []
        
        movies.removeAll { $0.id == movie.id }
        
        save(movies)
    }
    
    func isFavorite(_ movie: Movie) -> Bool {
        let movies = load() ?? []

        return movies.contains { $0.id == movie.id }
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
