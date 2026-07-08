//
//  SearchViewModel.swift
//  Films
//
//  Created by PRO on 20.06.2026.
//

import SwiftUI
import Foundation
import Combine

final class SearchViewModel: ObservableObject {

    @Published var searchText = ""
    @Published var movies: [Movie] = []
    @Published var errorMessage: String?

    private let service = MovieService()
    private var cancellables = Set<AnyCancellable>()

    init() {
        $searchText
            .debounce(for: .milliseconds(500), scheduler: RunLoop.main)
            .removeDuplicates()
            .sink { [weak self] query in
                Task {
                    await self?.search(query: query)
                }
            }
            .store(in: &cancellables)
    }

    @MainActor
    func search(query: String) async {
        guard !query.isEmpty else {
            movies = []
            return
        }
        do {
            movies = try await service.searchMovies(query: query)
            print("Found movies: \(movies.count)")
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
