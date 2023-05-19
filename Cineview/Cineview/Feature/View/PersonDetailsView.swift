//
//  PersonDetailsView.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import SwiftUI

struct PersonDetailsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack(alignment: .top) {
                        Image("person")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .cornerRadius(10)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Person Name")
                                .font(.title)
                                .lineLimit(3)
                                .multilineTextAlignment(.leading)
                                .fontWeight(.bold)
                            
                            Text("Known for: Acting")
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Text("Female")
                        .italic()
                        .padding(.bottom, 5)
                    
                    HStack(alignment: .top, spacing: 30) {
                        Text("Birthday")
                            .italic()
                        Text("Death day")
                            .italic()
                    }
                    
                    Text("Birth place")
                        .italic()
                        .padding(.bottom)
                    
                    Text("Biography")
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Text(description)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding([.trailing, .top])
                }
            }
            
            Text("Movies")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .padding(.top)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(movies) { movie in
                        NavigationLink(destination: MediaDetailsView()) {
                            PersonCreditItemView()
                        }
                    }
                }
            }
            
            Text("TV Shows")
                .fontWeight(.bold)
                .font(.system(size:20))
                .padding(.top)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(movies) { movie in
                        NavigationLink(destination: MediaDetailsView()) {
                            PersonCreditItemView()
                        }
                    }
                }
            }
        }.padding(.horizontal)
    }
}

struct PersonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailsView()
    }
}














