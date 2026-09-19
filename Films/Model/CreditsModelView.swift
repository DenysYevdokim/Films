//
//  CreditsModelView.swift
//  Films
//
//  Created by PRO on 19.09.2026.
//

import Foundation

struct CreditsResponse: Codable {
    let id: Int
    let cast: [Cast]
    let crew: [Crew]
}

struct Cast: Identifiable, Codable, Hashable {
    let id: Int
    let name: String
    let character: String
    let profilePath: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case character
        case profilePath = "profile_path"
    }
}

struct Crew: Identifiable, Codable, Hashable {
    let id: Int
    let name: String
    let job: String
    let profilePath: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case job
        case profilePath = "profile_path"
    }
}
