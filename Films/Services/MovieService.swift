//
//  MovieService.swift
//  Films
//
//  Created by PRO on 26.06.2026.

import SwiftUI

import Foundation

final class MovieService {
    
    private let network = NetworkManager()
    
    func fetchPopularMovies() async throws -> [Movie] {
        let response = try await network.request(
            MoviesResponse.self,
            endpoint: .popular
        )
        return response.results
    }
    
    func searchMovies(query: String) async throws -> [Movie] {
        let response = try await network.request(
            MoviesResponse.self,
            endpoint: .search(query)
        )
        return response.results
    }
    
    func fetchMovieDetails(id: Int) async throws -> Movie {
        return try await network.request(
            Movie.self,
            endpoint: .details(id)
        )
    }
    
    func fetchTrailer(id: Int) async throws -> Video? {
        let response = try await network.request(
            VideosResponse.self,
            endpoint: .videos(id)
        )
        return response.results.first { $0.site == "YouTube" && $0.type == "Trailer" }
            ?? response.results.first { $0.site == "YouTube" }
    }
    
    
}
