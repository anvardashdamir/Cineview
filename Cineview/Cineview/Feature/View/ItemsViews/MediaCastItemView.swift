//
//  MediaCastItemView.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import SwiftUI

struct MediaCastItemView: View {
    var body: some View {
        
        HStack(alignment: .top) {
            Image("person")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .cornerRadius(10)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Person Name")
                        .font(.headline)
                        .fontWeight(.bold)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 2)
                    
                    Text("As")
                        .font(.caption)
                    
                    Text("Character Name")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                }
            }
        }.frame(width: 250, height: 100)
    }
}

struct MediaCastItemView_Previews: PreviewProvider {
    static var previews: some View {
        MediaCastItemView()
    }
}

