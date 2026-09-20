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
    case videos(Int)
    case credits(Int)
    
    var path: String {
        
        switch self {
            
        case .popular:
            return "/movie/popular"
            
        case .search(let query):
            return "/search/movie?query=\(query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? query)"
            
        case .details(let id):
            return "/movie/\(id)"
            
        case .videos(let id):
            return "/movie/\(id)/videos"
        
        case .credits(let id):
            return "/movie/\(id)/credits"
            
        }
    }
}
