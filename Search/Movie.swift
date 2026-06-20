//
//  Movie.swift
//  Films
//
//  Created by PRO on 20.06.2026.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let overview: String
    let rating: Double
    let poster: String
}
