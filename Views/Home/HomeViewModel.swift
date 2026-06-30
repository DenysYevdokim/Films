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
    @Published var movies: [Movie] = []
    
    private let service = MovieService()
    
    func loadMovies() async {
        do {
            movies = try await service.fetchPopularMovies()
        } catch {
            print(error)
        }
    }
}

