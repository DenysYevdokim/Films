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

        let (data, response) =
        try await URLSession.shared.data(from: endpoint.url)

        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {

            throw NetworkError.invalidResponse
        }

        do {

            return try JSONDecoder().decode(type, from: data)

        } catch {

            throw NetworkError.decodingError
        }
    }
}

func request<T: Decodable>(
    endpoint: Endpoint
) async throws -> T
