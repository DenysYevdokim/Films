//
//  ImageCache.swift
//  Films
//
//  Created by PRO on 06.08.2026.
//
import SwiftUI
import UIKit

class ImageCache {
    static let shared = ImageCache()
    private init() {}
    private  let cache = NSCache<NSString, UIImage>()
    
    func image(for key: String) -> UIImage? {
        cache.object(forKey: key as NSString)
    }
    
    func insert(_ image: UIImage, for key: String) {
        cache.setObject(image, forKey: key as NSString)
    }
}
