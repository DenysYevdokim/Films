//
//  FilmRow.swift
//  Films
//
//  Created by PRO on 18.06.2026.
//

import SwiftUI


struct FilmRow: View {
   
    let film: Film

    var body: some View {
        HStack(alignment: .top) {
            Image(film.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 76, height: 76)
                .cornerRadius(8)
                .clipped()

            VStack(alignment: .leading, spacing: 4) {
                Text(film.title)
                    .font(.headline)
                    .foregroundColor(.white)

                Text(film.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }

            Spacer()

            HStack(spacing: 4) {
                Image(systemName: "star.fill")
                    .foregroundColor(.orange)
                Text(String(format: "%.1f", film.rating))
                    .foregroundColor(.white)
            }
        }
        .padding(.vertical, 6)
    }
}
