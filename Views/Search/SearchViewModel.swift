//
//  SearchViewModel.swift
//  Films
//
//  Created by PRO on 20.06.2026.
//

//import SwiftUI

import Foundation
import Combine

final class SearchViewModel: ObservableObject {
    
    @Published var searchText = ""
    
    
    @Published var movies: [Movie] = films.map { film in
        Movie(title: film.title, overview: film.description, rating: film.rating, poster: film.imageName)
    }
    
}
