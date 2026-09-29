//
//  FavoritesListView.swift
//  Films
//
//  Created by PRO on 27.09.2026.
//

import SwiftUI

struct FavoritesListView: View {
    @ObservedObject var viewModel: FavoritesViewModel
    
    var body: some View {
        List {
            if viewModel.favorites.isEmpty {
                Text("No favorites yet")
                    .foregroundStyle(.gray)
            } else {
                ForEach(viewModel.favorites) { movie in
                    FilmRow(film: movie)
                }
            }
        }
        .scrollContentBackground(.hidden)
        .background(Color(red: 0.08, green: 0.10, blue: 0.17))
    }
}
