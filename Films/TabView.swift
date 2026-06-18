//
//  TabView.swift
//  Films
//
//  Created by PRO on 18.06.2026.
//

import SwiftUI



struct SearchView: View {
    var body: some View {
        ZStack{
            Color.black
            VStack {
                Spacer()
                Text("Search")
                    .foregroundColor(.gray)
                Spacer()
                
            }
        }

        .background(Color.black)

    }
}

struct AccountView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Account")
                .foregroundColor(.gray)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // растянуть по ширине и высоте
               .background(Color.black) // фон
               .ignoresSafeArea() // игнорировать безопасные зоны (чёлка, низ)
        
    }
}
struct HomeView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Home!")
                .foregroundColor(.gray)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // растянуть по ширине и высоте
               .background(Color.black) // фон
               .ignoresSafeArea() // игнорировать безопасные зоны (чёлка, низ)
    }
}

