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
    
    private func saveToDisk(_ image: UIImage, for key: String) {
        guard let data = image.pngData() else {return}
        
        do {
            try data.write(to: fileURL(for : key))
        } catch {
            print("Не удалось сохранить картинку: \(error)")
        }
    }
    
    private func loadFromDisk(for key: String) -> UIImage? {
        let url = fileURL(for: key)
        
        guard fileManager.fileExists(atPath: url.path) else {return nil}
        
        do {
            let data = try Data(contentsOf: url)
            return UIImage(data: data)
        } catch {
            print("Не удалось прочитать картинку: \(error)")
            return nil
        }
    }
    
    
    
    
}
