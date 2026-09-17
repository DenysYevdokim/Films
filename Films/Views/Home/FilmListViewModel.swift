//
//  FilmListViewModel.swift
//  Films
//
//  Created by PRO on 17.09.2026.
//
import SwiftUI
import Combine

@MainActor
final class FilmListViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    @Published var errorMessage: String?
    
    private let service = MovieService()
    
    func loadAll() async {
        do {
            movies = try await service.fetchPopularMovies()
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
