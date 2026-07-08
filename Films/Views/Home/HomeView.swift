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
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    Text("Home")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                    
                    Text("TMDB")
                        .font(.caption.bold())
                        .foregroundColor(.green)
                    
                    sectionTitle("Top Movies")
                    horizontalRow(viewModel.topMovies)
                    
                    sectionTitle("Recommended")
                    horizontalRow(viewModel.recommended)
                    
                    sectionTitle("New arrivals")
                    gridSection(viewModel.newArrivals)
                }
                .padding(.horizontal)
                .padding(.top, 20)
            }
            .background(Color(red: 0.08, green: 0.10, blue: 0.17))
            .toolbarBackground(Color(red: 0.08, green: 0.10, blue: 0.17), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
        .task {
            await viewModel.loadMovies()
        }
    }
    
    @ViewBuilder
    func sectionTitle(_ title: String) -> some View {
        Text(title)
            .font(.title2.bold())
            .foregroundColor(.white)
    }
    
    @ViewBuilder
    func horizontalRow(_ movies: [Movie]) -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(movies) { movie in
                    NavigationLink {
                        MovieDetailView(movie: movie)
                    } label: {
                        VStack(alignment: .leading, spacing: 4) {
                            MovieCard(movie: movie)
                            Text(movie.title)
                                .font(.subheadline.bold())
                                .foregroundColor(.white)
                                .lineLimit(1)
                            if movie.voteAverage > 0 {
                                Text("⭐ \(String(format: "%.1f", movie.voteAverage))")
                                    .font(.caption)
                                    .foregroundColor(.yellow)
                            }
                        }
                        .frame(width: 150)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
    
    @ViewBuilder
    func gridSection(_ movies: [Movie]) -> some View {
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(movies) { movie in
                NavigationLink {
                    MovieDetailView(movie: movie)
                } label: {
                    VStack(alignment: .leading, spacing: 4) {
                        MovieCard(movie: movie)
//                       .frame( minHeight: 220, maxHeight: 220)
                        
                        Text(movie.title)
                            .font(.caption.bold())
                            .foregroundColor(.white)
                            .lineLimit(1)
                        if movie.voteAverage > 0 {
                            Text("⭐ \(String(format: "%.1f", movie.voteAverage))")
                                .font(.caption2)
                                .foregroundColor(.yellow)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .buttonStyle(.plain)
            }
        }
    }
}

#Preview {
    HomeView()
}
