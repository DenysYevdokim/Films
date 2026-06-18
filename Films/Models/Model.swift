//
//  Model.swift
//  Films
//
//  Created by PRO on 18.06.2026.
//

import Foundation


struct Film: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
    let rating: Double
}
