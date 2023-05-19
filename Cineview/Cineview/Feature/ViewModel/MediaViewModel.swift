//
//  MediaViewModel.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import Foundation

class MediaViewModel: ObservableObject {
    @Published var medias: [Media]?
    @Published var isLoading = false
    @Published var error: NSError?
    
    private let apiService: ApiService
    
    init(apiService: ApiService = MediaRepository.shared) {
        self.apiService = apiService
    }
    
    func loadMedias(with endpoint: MediaListEndpoint) {
        self.medias = nil
        self.isLoading = false
        self.apiService.getMovies(from: endpoint) { [weak self] (result) in
            guard let self = self else {return}
            self.isLoading = false
            
            switch result {
            case .success(let response):
                self.medias = response.results
            case .failure(let error):
                self.error = error as NSError
            }
        }
    }
}
