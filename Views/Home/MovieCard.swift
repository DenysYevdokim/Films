//
//  MovieCard.swift
//  Films
//
//  Created by PRO on 21.06.2026.
//

import Foundation

import SwiftUI

struct MovieCard: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 220)
            .clipShape(RoundedRectangle(cornerRadius: 18))
    }
    
    
}

struct MovieCard1: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 126, height: 190)
            .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}

struct MovieCard2: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 104, height: 152)
            .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}
