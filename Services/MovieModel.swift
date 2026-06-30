//
//  MovieModel.swift
//  Films
//
//  Created by PRO on 24.06.2026.
//

import Foundation

struct Movie: Identifiable, Decodable {

    let id: Int
    let title: String
    let overview: String
    let posterPath: String?
    let voteAverage: Double

    enum CodingKeys: String, CodingKey {

        case id
        case title
        case overview

        case posterPath = "poster_path"

        case voteAverage = "vote_average"
    }
}
