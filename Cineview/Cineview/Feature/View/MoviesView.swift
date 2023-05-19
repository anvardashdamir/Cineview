//
//  MoviesView.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import SwiftUI

struct MoviesView: View {
    
    @ObservedObject private var topRatedState = MediaViewModel()
    @ObservedObject private var popularState = MediaViewModel()
    
    var body: some View {
        NavigationView {
            List {
                Group {
                    if topRatedState.medias != nil {
                        ScrollView(.horizontal) {
                            MediaCarouselView(medias: topRatedState.medias!)
                        }
                    } else {
                        LoadingView(isLoading: topRatedState.isLoading, error: topRatedState.error) {
                            self.topRatedState.loadMedias(with: .topRated)
                        }
                    }
                }
                
                Group {
                    if popularState.medias != nil {
                        ScrollView(.vertical) {
                            MediaCarouselView(medias: popularState.medias!)
                        }
                    } else {
                        LoadingView(isLoading: popularState.isLoading, error: popularState.error) {
                            self.popularState.loadMedias(with: .popular)
                        }
                    }
                }
            }
            .navigationTitle("Cineview")
            .onAppear {
                self.topRatedState.loadMedias(with: .topRated)
                self.popularState.loadMedias(with: .popular)
            }
        }
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}

struct ListItem: Identifiable {
    var id = UUID()
    var movieName: String
    var genres: String
    var rating: String
    var year: String
    var language: String
    var image: String
}

var movies = [
    ListItem(movieName: "Godfather", genres: "Drama", rating: "9.0", year: "1972", language: "en", image: "cineview_icon"),
    ListItem(movieName: "Scarface", genres: "Drama", rating: "8.5", year: "1985", language: "en", image: "cineview_icon"),
    ListItem(movieName: "Inception", genres: "Thriller", rating: "8.0", year: "2015", language: "en", image: "cineview_icon"),
    ListItem(movieName: "Interstellar", genres: "Sci-fi", rating: "8.2", year: "2016", language: "en", image: "cineview_icon"),
    ListItem(movieName: "Dark Knight", genres: "Crime", rating: "8.7", year: "2005", language: "en", image: "cineview_icon"),
]

