//
//  PersonCreditItemView.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import SwiftUI

struct PersonCreditItemView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("cineview_icon")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .cornerRadius(10)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Media Name")
                        .font(.headline)
                        .fontWeight(.bold)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                    
                    HStack(alignment: .top, spacing: 25) {
                        Text("Year")
                            .font(.subheadline)
                        
                        Text("Rating")
                            .font(.subheadline)
                    }
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

struct PersonCreditItemView_Previews: PreviewProvider {
    static var previews: some View {
        PersonCreditItemView()
    }
}
