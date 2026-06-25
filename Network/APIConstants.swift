//
//  APIConstants.swift
//  Films
//
//  Created by PRO on 24.06.2026.
//
import Foundation

enum APIConstants {

    static let baseURL = "https://api.themoviedb.org/3"

    static let imageBaseURL = "https://image.tmdb.org/t/p/w500"

    static var apiKey: String {

        guard let key = Bundle.main.object(
            forInfoDictionaryKey: "TMDB_API_KEY"
        ) as? String else {

            fatalError("TMDB_API_KEY not found")
        }

        return key
    }
}

let key = APIConstants.apiKey
let url = URL(
    string:
    "\(APIConstants.baseURL)/movie/popular?api_key=\(APIConstants.apiKey)"
)!
