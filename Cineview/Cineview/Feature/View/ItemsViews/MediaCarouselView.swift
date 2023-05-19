//
//  MediaCarouselView.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import SwiftUI

struct MediaCarouselView: View {
    let medias: [Media]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(self.medias) { media in
                        NavigationLink(destination: MediaDetailsView()) {
                            MediaItemView(media: media)
                        }.buttonStyle(PlainButtonStyle())
                            .padding(.leading, media.id == self.medias.first!.id ? 16 : 0)
                            .padding(.trailing, media.id == self.medias.last!.id ? 16 : 0)
                    }
                }
//            }
        }
    }
}

struct MediaCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        MediaCarouselView(medias: Media.stubbedMedias)
    }
}

