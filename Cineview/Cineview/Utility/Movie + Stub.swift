//
//  Movie + Sub.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import Foundation

extension Media {
    static var stubbedMedias: [Media] {
        let response: MediaResponse? = try? Bundle.main.loadAndDecodeJSON(filename: "movie_list")
        return response!.results
    }
    static var stubbedMedia: Media {
        stubbedMedias[0]
    }
}

extension Bundle {
    func loadAndDecodeJSON<D: Decodable>(filename: String) throws -> D? {
        guard let url = self.url(forResource: filename, withExtension: "json") else
        {
            return nil
        }
        do {
            let data = try Data(contentsOf: url)
            let jsonDecoder = Utils.jsonDecoder
            let decodeModel = try jsonDecoder.decode(D.self, from: data)
            return decodeModel
        } catch {
            return error.localizedDescription as! D?
        }
    }
}
