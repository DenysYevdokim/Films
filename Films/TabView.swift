//
//  TabView.swift
//  Films
//
//  Created by PRO on 18.06.2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Home!")
                .foregroundColor(.gray)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // растянуть по ширине и высоте
        .background (Color(red: 0.08, green: 0.10, blue: 0.17))// фон
            .ignoresSafeArea() // игнорировать безопасные зоны (чёлка, низ)
    }
}

struct SearchView: View {
    var body: some View {
        ZStack{
            (Color(red: 0.08, green: 0.10, blue: 0.17))
            VStack {
                Spacer()
                Text("Search")
                    .foregroundColor(.gray)
                Spacer()
                
            }
        }
        
        .background(Color(red: 0.08, green: 0.10, blue: 0.17))
        
    }
}
