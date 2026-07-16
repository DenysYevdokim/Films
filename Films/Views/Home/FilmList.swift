//
//  FilmList.swift
//  Films
//
//  Created by PRO on 18.06.2026.
//
import SwiftUI

struct FilmListView: View {
    
    @StateObject private var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.08, green: 0.10, blue: 0.17)
                    .ignoresSafeArea()
                
               
                    
                    if viewModel.movies.isEmpty {
                        if let message = viewModel.errorMessage {
                            Spacer()
                            Text(message)
                                .foregroundColor(.white.opacity(0.7))
                                .multilineTextAlignment(.center)
                                .padding()
                            Spacer()
                        } else {
                            Spacer()
                            ProgressView()
                                .tint(.white)
                            Spacer()
                        }
                    } else {
                        List(viewModel.movies) { film in
                            NavigationLink {
                                MovieDetailView(movie: film)
                            } label: {
                                FilmRow(film: film)
                            }
                            .listRowBackground(Color(red: 0.08, green: 0.10, blue: 0.17))
                        }
                        .listStyle(.plain)
                        .scrollContentBackground(.hidden)
                        .refreshable {
                            await viewModel.loadAll()
                        }
                    }
                }
                .navigationTitle("All films")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color(red: 0.08, green: 0.10, blue: 0.17), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbarColorScheme(.dark, for: .navigationBar)
            }
            .task {
                await viewModel.loadAll()
            }
        }
    }

    #Preview {
        FilmListView()
    }

