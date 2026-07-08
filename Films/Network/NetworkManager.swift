//
//  NetworkManager.swift
//  Films
//
//  Created by PRO on 24.06.2026.
//

import Foundation

final class NetworkManager {
    
    func request<T: Decodable>(_ type: T.Type,
                               endpoint: Endpoint) async throws -> T {
        
        
//        let urlString = "\(APIConstants.baseURL)\(endpoint.path)&api_key=\(APIConstants.apiKey)"
        let urlString = "\(APIConstants.baseURL)\(endpoint.path)\(endpoint.path.contains("?") ? "&" : "?")api_key=\(APIConstants.apiKey)"
        
        guard let url = URL(string: urlString) else {
            throw NetworkError.invalidResponse
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse else {
            throw NetworkError.invalidResponse
        }
        
        print("Status code: \(response.statusCode)")
        
        guard response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            return try JSONDecoder().decode(type, from: data)
        } catch  {
            
            throw NetworkError.decodingError
        }
    }
}
