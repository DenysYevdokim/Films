//
//  SearchView.swift
//  Films
//
//  Created by PRO on 20.06.2026.
//

import Foundation

import SwiftUI

struct SearchView: View {

    @StateObject private var viewModel = SearchViewModel()

    var body: some View {

        NavigationStack {
            ZStack {

                Color(red: 0.08, green: 0.10, blue: 0.17)
                    .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 24) {

                    Text("Search")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)

                    SearchBar(text: $viewModel.searchText)

                    ScrollView {

                        LazyVStack(spacing: 20) {

                            ForEach(viewModel.movies) { movie in

                                NavigationLink {
                                    MovieDetailView(movie: movie)
                                } label: {
                                    MovieRow(movie: movie)
                                }
                                .buttonStyle(.plain)

                            }
                        }
                    }

                    Spacer()
                }
                .padding(.horizontal, 24)
                .padding(.top, 20)
            }
            .toolbarBackground(Color(red: 0.08, green: 0.10, blue: 0.17), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}

#Preview {
    SearchView()
}
