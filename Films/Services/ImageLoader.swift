//
//  ImageLoader.swift
//  Films
//
//  Created by PRO on 16.08.2026.
//

import Foundation
import UIKit
 
class ImageLoader {
    static let shared = ImageLoader()
    private init() {}
    
    func loadImage(from url: URL) async throws -> UIImage {
        let key = url.absoluteString
        
        if let cachedImage = ImageCache.shared.image(for: key) {
            return cachedImage
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        guard let image = UIImage(data: data) else {
            throw URLError(.cannotDecodeContentData)
        }
        ImageCache.shared.insert(image, for: key)
        
        return image
    }
}
