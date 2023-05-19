//
//  MediaItemView.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import SwiftUI

struct MediaItemView: View {
    let media: Media
    
    var body: some View {
        
        ZStack {
            HStack(alignment: .top) {
                Image("cineview_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 125)
                    .cornerRadius(20)
                    .padding(.vertical)
                    .padding(.leading, 15)
                
                VStack(alignment: .leading) {
                    Text(self.media.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 1)
                    
                    Text("Media Genres")
                        .font(.subheadline)
                        .lineLimit(2)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 2)
                        .padding(.leading, 1)
                    
                    Text(self.media.release_date)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.leading, 1)
                    
                    Text(String(self.media.vote_average))
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.leading, 1)
                    
                    Text(self.media.language)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.leading, 1)
                }
                .frame(width: 200, height: 150)
                .padding(.trailing, 30)
            }
            .frame(width: 350, height: 175)
            .fixedSize()
            .padding(.horizontal)
        }
        .background(.blue)
        .cornerRadius(15)
    }
}

struct MediaItemView_Previews: PreviewProvider {
    static var previews: some View {
        MediaItemView(media: Media.stubbedMedia)
    }
}

