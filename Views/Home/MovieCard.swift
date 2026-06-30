//
//  MovieCard.swift
//  Films
//
//  Created by PRO on 21.06.2026.
//

import Foundation

import SwiftUI


struct MovieCard: View {
    let movie: Movie
    
    var body: some View {
        AsyncImage(url: URL(string: APIConstants.imageBaseURL + (movie.posterPath ?? ""))) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            Color.gray.opacity(0.3)
        }
        .frame(width: 150, height: 220)
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}
