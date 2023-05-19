//
//  PeopleView.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import SwiftUI

struct PeopleView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(movies) { movie in
                            NavigationLink(destination: PersonDetailsView()) {
                                PersonItemView()
                            }
                        }
                    }
                }
                
                ScrollView(.vertical) {
                    ForEach(movies) { movie in
                        NavigationLink(destination: PersonDetailsView()) {
                            PersonItemView()
                        }
                    }
                }
            }
            .navigationTitle("Cineview")
            .padding(.vertical)
        }    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}

