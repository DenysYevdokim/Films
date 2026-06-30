//
//  FilmRow.swift
//  Films
//
//  Created by PRO on 18.06.2026.
//
import SwiftUI

struct FilmRow: View {

    let film: Movie

    var body: some View {
        HStack(alignment: .top, spacing: 12) {

            // Постер с TMDB
            AsyncImage(url: posterURL) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Color.gray.opacity(0.3)
            }
            .frame(width: 76, height: 76)
            .cornerRadius(8)
            .clipped()

            VStack(alignment: .leading, spacing: 4) {
                Text(film.title)
                    .font(.headline)
                    .foregroundColor(.white)

                Text(film.overview)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }

            Spacer()

            HStack(spacing: 4) {
                Image(systemName: "star.fill")
                    .foregroundColor(.orange)
                Text(String(format: "%.1f", film.voteAverage))
                    .foregroundColor(.white)
            }
        }
        .padding(.vertical, 6)
    }

    private var posterURL: URL? {
        guard let path = film.posterPath else { return nil }
        return URL(string: "\(APIConstants.imageBaseURL)\(path)")
    }
}
