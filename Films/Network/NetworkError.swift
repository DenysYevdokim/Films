
//  Created by PRO on 24.06.2026.


//import Foundation
//
//enum NetworkError: Error {
//
//    case invalidResponse
//
//    case decodingError
//
//    case invalidURL
//}
import Foundation

enum NetworkError: LocalizedError {

    case invalidResponse
    case decodingError
    case invalidURL

    var errorDescription: String? {
        switch self {
        case .invalidResponse:
            return "Некоректна відповідь від сервера. Перевірте з'єднання з інтернетом."
        case .decodingError:
            return "Не вдалося обробити відповідь сервера."
        case .invalidURL:
            return "Некоректна адреса запиту."
        }
    }
}
