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
            
            TextField("", text: $text, prompt: Text("Search movie").foregroundStyle(.gray.opacity(0.6)))
                .foregroundStyle(.white)
        }
        .padding()
        .background(Color.white.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
