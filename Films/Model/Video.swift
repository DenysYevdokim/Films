//
//  Video.swift
//  Films
//
//  Created by PRO on 06.07.2026.
//

import Foundation

import Foundation

struct VideosResponse: Codable {
    let results: [Video]
}

struct Video: Codable, Identifiable, Hashable {
    let id: String
    let key: String
    let name: String
    let site: String
    let type: String
}


