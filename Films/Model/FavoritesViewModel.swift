//
//  FavoritesViewModel.swift
//  Films
//
//  Created by PRO on 25.09.2026.
//

import Foundation
import Combine

class FavoritesViewModel: ObservableObject {
    
    @Published var favorites: [Movie] = []
    
    private let cache = FavoritesCache.shared
    
    init() {
        favorites = cache.load() ?? []
    }
    
    func add(_ movie: Movie) {
        cache.add(movie)
        favorites = cache.load() ?? []
    }
    
    func remove(_ movie: Movie) {
        cache.remove(movie)
        favorites = cache.load() ?? []
    }
    
    func isFavorite(_ movie: Movie) -> Bool {
        favorites.contains { $0.id == movie.id }
    }
    
}
