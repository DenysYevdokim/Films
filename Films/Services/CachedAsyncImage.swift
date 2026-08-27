//
//  CachedAsyncImage.swift
//  Films
//
//  Created by PRO on 21.08.2026.


import SwiftUI

struct CachedAsyncImage: View {
    let url: URL?
    @State private var image: UIImage?
    
    var body: some View {
        Group {
            if let image {
                Image(uiImage: image)
                    .resizable()
            } else {
                Color.gray.opacity(0.3)
            }
        }
        .task {
            guard let url else { return }
            
            do {
                image = try await ImageLoader.shared.loadImage(from: url)
            } catch {
                print ("Не удалось загрузить картинку!")
            }
            
        }
    }
}
