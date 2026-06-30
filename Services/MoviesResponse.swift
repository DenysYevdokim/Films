//
//  MoviesResponse.swift
//  Films
//
//  Created by PRO on 24.06.2026.
//

//import Foundation
//
//struct MoviesResponse: Decodable {
//    
//    let results: [Movie]
//}

import Foundation

struct MoviesResponse: Decodable {
    let results: [Movie]
    let page: Int
    let totalPages: Int

    enum CodingKeys: String, CodingKey {
        case results
        case page
        case totalPages = "total_pages"
    }
}
