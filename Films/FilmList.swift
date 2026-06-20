//
//  FilmList.swift
//  Films
//
//  Created by PRO on 18.06.2026.
//

import SwiftUI

struct FilmListView: View {
   let filmsu = films
    
    
    
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
