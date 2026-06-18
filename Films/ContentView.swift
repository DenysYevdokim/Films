//
//  ContentView.swift
//  Films
//
//  Created by PRO on 18.06.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            FilmListView()
                .tabItem {
                    Image(systemName: "film")
                    Text("Films")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
        .accentColor(.blue)
        .background(Color.black)
    }
}

#Preview {
    ContentView()
}
