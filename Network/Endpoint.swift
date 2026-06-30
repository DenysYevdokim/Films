//
//  Endpoint.swift
//  Films
//
//  Created by PRO on 24.06.2026.
//

import Foundation



enum Endpoint {

    case popular
    case search(String)
    case details(Int)

    var path: String {

        switch self {

        case .popular:
            return "/movie/popular"

        case .search(let query):
            return "/search/movie?query=\(query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? query)"

        case .details(let id):
            return "/movie/\(id)"
        }
    }
}
