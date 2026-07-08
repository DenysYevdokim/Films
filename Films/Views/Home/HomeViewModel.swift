//
//  HomeViewModel.swift
//  Films
//
//  Created by PRO on 29.06.2026.
//

import Foundation
import Combine

@MainActor
class HomeViewModel: ObservableObject {
    @Published var topMovies: [Movie] = []
    @Published var recommended: [Movie] = []
    @Published var newArrivals: [Movie] = []
    
    private let service = MovieService()
    
    func loadMovies() async {
        do {
            let popular = try await service.fetchPopularMovies()
            topMovies = Array(popular.prefix(5))
            recommended = Array(popular.dropFirst(5).prefix(5))
            newArrivals = Array(popular.dropFirst(10).prefix(6))
        } catch {
            print("Error: \(error)")
        }
    }
}
