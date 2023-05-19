//
//  PersonItemView.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import SwiftUI

struct PersonItemView: View {
    var body: some View {
        
        HStack(alignment: .top) {
            Image("person")
                .resizable()
                .scaledToFit()
                .frame(height: 125)
                .cornerRadius(10)
                .padding(.vertical)
                .padding(.leading, 0)
            
            VStack(alignment: .leading) {
                Text("Person Name")
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
                Text("Known for: Acting")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 2)
                
                Text("Popularity: 85")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text("Female")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .frame(width: 200, height: 150)
        }
        .frame(width: 350, height: 175)
        .fixedSize()
        .padding(.horizontal)
    }
}

struct PersonItemView_Previews: PreviewProvider {
    static var previews: some View {
        PersonItemView()
    }
}

