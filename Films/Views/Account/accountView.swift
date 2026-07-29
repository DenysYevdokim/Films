//
//  accountView.swift
//  Films
//
//  Created by PRO on 19.06.2026.
//


import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Account")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                    .listRowBackground(Color.clear)
                    .listRowInsets(EdgeInsets())
                    .padding(.bottom, 16)
                
                Section {
                    NavigationLink(destination: Text("Profile")) {
                        Label("Profile", systemImage: "person.circle")
                    }
                    NavigationLink(destination: Text("Settings")) {
                        Label("Settings", systemImage: "gearshape")
                    }
                    NavigationLink(destination: Text("Favorite")) {
                        Label("Favorite", systemImage: "heart")
                    }
                }
                
                .listRowBackground(Color(red: 0.15, green: 0.17, blue: 0.24))
                Section {
                    Button(role: .destructive) {
                        
                    } label: {
                        Text("Sign out")
                            .foregroundStyle(.red)
                    }
                }
                
                .listRowBackground(Color(red: 0.15, green: 0.17, blue: 0.24))
            }
            
            .scrollContentBackground(.hidden)
            .background (Color(red: 0.08, green: 0.10, blue: 0.17))
            .foregroundStyle(.white)
        }
        
    }
}
#Preview {
    AccountView()
}
