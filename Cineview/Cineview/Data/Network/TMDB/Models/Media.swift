//
//  Media.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import Foundation

struct MediaResponse: Decodable {
    let results: [Media]
}

struct Media: Decodable, Identifiable {
    let id: Int
    let title: String
    let original_title: String
    let genre_ids: [Int]
    let overview: String
    let poster_path: String?
    let backdrop_path: String?
    let release_date: String
    let language: String
    let vote_average: Double
    
    var backdropUrl: URL {
        return URL(string: "https://image.tmdb.org/t/p/original\(String(describing: backdrop_path))")!
    }

}
