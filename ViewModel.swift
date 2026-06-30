//
//  ViewModel.swift
//  Films
//
//  Created by PRO on 24.06.2026.
//


//import Foundation
//import Combine
//
//@MainActor
//final class SearchViewModel: ObservableObject {
//
//    @Published var movies: [Movie] = []
//    @Published var errorMessage: String?
//
//    private let service = MovieService()
//
//    func loadMovies() async {
//        do {
//            movies = try await service.fetchPopularMovies()
//        } catch {
//            errorMessage = error.localizedDescription
//            print(error)
//        }
//    }
//}
