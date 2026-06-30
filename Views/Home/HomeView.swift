//
//  HomeView.swift
//  Films
//
//  Created by PRO on 20.06.2026.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            
            ForEach(viewModel.movies) { movie in
                MovieCard(movie: movie)
            }
        }
        .task {
            await viewModel.loadMovies()
        }
    }
}
