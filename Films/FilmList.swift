//
//  FilmList.swift
//  Films
//
//  Created by PRO on 18.06.2026.
//

import SwiftUI

struct FilmListView: View {
    // Sample data; ensure Film conforms to Identifiable elsewhere
    let films = [
        Film(title: "No Time To Die", description: "James Bond has left active service. His peace is short...", imageName: "image 1", rating: 4.9),
        Film(title: "The Quantum Gambit", description: "James Bond has left active service. His peace is short...", imageName: "quantum_gambit", rating: 4.9),
        Film(title: "Shadows of the Past", description: "James Bond has left active service. His peace is short...", imageName: "shadows_past", rating: 4.9),
        Film(title: "Eclipse of Fate", description: "James Bond has left active service. His peace is short...", imageName: "eclipse_fate", rating: 4.9),
        Film(title: "Chasing the Phantom", description: "James Bond has left active service. His peace is short...", imageName: "no_time", rating: 4.9),
        Film(title: "Veil of Deception", description: "James Bond has left active service. His peace is short...", imageName: "no_time", rating: 4.9),
        Film(title: "The Last Stand", description: "James Bond has left active service. His peace is short...", imageName: "no_time", rating: 4.9),
        Film(title: "Legacy of the Spy", description: "James Bond has left active service. His peace is short...", imageName: "no_time", rating: 4.9),
        Film(title: "Undercover Reckoning", description: "James Bond has left active service. His peace is short...", imageName: "no_time", rating: 4.9),
        Film(title: "Undercover Reckoning", description: "James Bond has left active service. His peace is short...", imageName: "no_time", rating: 4.9),
        Film(title: "Undercover Reckoning", description: "James Bond has left active service. His peace is short...", imageName: "no_time", rating: 4.9)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                (Color(red: 0.08, green: 0.10, blue: 0.17))
                    .ignoresSafeArea()
                
                List(films) { film in
                    FilmRow(film: film)
                        .listRowBackground(Color(red: 0.08, green: 0.10, blue: 0.17))
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("All films")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground((Color(red: 0.08, green: 0.10, blue: 0.17)), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}

#Preview {
    FilmListView()
}
