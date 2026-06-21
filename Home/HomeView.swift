//
//  HomeView.swift
//  Films
//
//  Created by PRO on 20.06.2026.
//

import SwiftUI

struct HomeView: View {

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        ScrollView(showsIndicators: false) {

            VStack(alignment: .leading, spacing: 25) {

                Text("Top Movies")
                    .font(.title2.bold())
                    .foregroundColor(.white)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {

                    HStack(spacing: 16) {

                        MovieCard(imageName: "Rectangle 432")
                        MovieCard(imageName: "Card-2")
                        MovieCard(imageName: "Card-2-2")
                        MovieCard1(imageName: "Card-3")
                        
                        ForEach(0..<2) { _ in
                            RoundedRectangle(cornerRadius: 18)
                                .fill(Color.gray.opacity(0.25))
                                .frame(width: 150, height: 220)
                        }

                    }
                    .padding(.horizontal)
                }

                Text("Recommended")
                    .font(.title2.bold())
                    .foregroundColor(.white)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {

                    HStack(spacing: 16) {

                        MovieCard1(imageName: "Card-1")
                        MovieCard1(imageName: "Card-2-2")
                        MovieCard1(imageName: "Card-3")
                        MovieCard(imageName: "Card-2")
                        MovieCard(imageName: "Rectangle 432")
                        
                        ForEach(0..<5) { _ in

                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.gray.opacity(0.25))
                                .frame(width: 110, height: 150)

                        }

                    }
                    .padding(.horizontal)
                }

                Text("New arrivals")
                    .font(.title2.bold())
                    .foregroundColor(.white)
                    .padding(.horizontal)

                LazyVGrid(columns: columns, spacing: 16) {

                    MovieCard1(imageName: "Movie")
                    MovieCard1(imageName: "Movie-2")
                    MovieCard1(imageName: "Movie-3")
                    MovieCard1(imageName: "Movie-4")
                    MovieCard1(imageName: "Movie-5")
                    MovieCard1(imageName: "Movie-6")
                    
                    
                    ForEach(0..<0) { _ in

                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.gray.opacity(0.25))
                            .frame(height: 150)

                    }

                }
                .padding(.horizontal)

            }
            .padding(.top)
        }
        .background(Color(red: 0.08, green: 0.10, blue: 0.17))
    }
}
