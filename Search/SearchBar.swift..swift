//
//  SearchBar.swift..swift
//  Films
//
//  Created by PRO on 20.06.2026.
//


import SwiftUI

struct SearchBar: View {

    @Binding var text: String

    var body: some View {

        HStack(spacing: 12) {

            Image(systemName: "magnifyingglass")
                .foregroundStyle(.gray)

            TextField("Search movie", text: $text)
                .foregroundStyle(.white)
        }
        .padding()
        .background(Color.white.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
