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
        CachedAsyncImage(url: URL(string: APIConstants.imageBaseURL + (movie.posterPath ?? "")))
            .aspectRatio(contentMode: .fill)
            .clipShape(RoundedRectangle(cornerRadius: 18))
            .clipped()
    }
}
