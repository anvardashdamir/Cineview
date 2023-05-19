//
//  ApiService.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import Foundation

protocol ApiService {
    
    func getMovies(from endpoint: MediaListEndpoint, completion: @escaping (Result<MediaResponse, MediaError>) -> ())
    func getMovie(id: Int, completion: @escaping (Result<Media, MediaError>) -> ())
}

enum MediaListEndpoint: String, CaseIterable {
    case topRated = "top_rated"
    case popular = "popular"
    
    var description : String {
        switch self {
        case .topRated: return "Top Rated"
        case .popular: return "Popular"
        }
    }
}

enum MediaError: Error, CustomNSError {
    case apiError
    case invalidEndpoint
    case invalidResponse
    case noDate
    case serializationError
    
    var localizedDescription: String {
        switch self {
        case .apiError: return "Failed to get data"
        case .invalidEndpoint: return "Invalid endpoint"
        case .invalidResponse: return "Invalid response"
        case .noDate: return "No data"
        case .serializationError: return "Failed to decode data"
        }
    }
    
    var errorUserInfo: [String : Any] {
        [NSLocalizedDescriptionKey: localizedDescription]
    }
}
