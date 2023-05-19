//
//  ContentView.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                MoviesView()
                    .tabItem() {
                        Image(systemName: "film.fill")
                        Text("Movies")
                }
                SeriesView()
                    .tabItem() {
                        Image(systemName: "tv.fill")
                        Text("TV Shows")
                    }
                PeopleView()
                    .tabItem() {
                        Image(systemName: "person.crop.circle")
                        Text("Artists")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
