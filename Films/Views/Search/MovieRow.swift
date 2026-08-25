//
//  MovieRow.swift
//  Films
//
//  Created by PRO on 20.06.2026.
//

import SwiftUI

struct MovieRow: View {

    let movie: Movie

    var body: some View {
        HStack(alignment: .top, spacing: 16) {

            CachedAsyncImage(url: posterURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 76, height: 76)
                .cornerRadius(8)
                .clipped()

            VStack(alignment: .leading, spacing: 8) {
                Text(movie.title)
                    .font(.headline)
                    .foregroundStyle(.white)

                Text(movie.overview)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .lineLimit(2)
            }

            Spacer()

            HStack(spacing: 4) {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                Text(String(format: "%.1f", movie.voteAverage))
                    .foregroundStyle(.white)
            }
        }
    }

    private var posterURL: URL? {
        guard let path = movie.posterPath else { return nil }
        return URL(string: "\(APIConstants.imageBaseURL)\(path)")
    }
}
