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
    private let fileManager = FileManager.default
    
    private lazy var cacheDirectory: URL = {
        let paths = fileManager.urls(for: .cachesDirectory, in: .userDomainMask)
     return paths[0]
    }()
    
    private func fileURL(for key: String) -> URL {
        cacheDirectory.appendingPathComponent (key)
    }
    
    func image(for key: String) -> UIImage? {
        cache.object(forKey: key as NSString)
    }
    
    func insert(_ image: UIImage, for key: String) {
        cache.setObject(image, forKey: key as NSString)
    }
}
