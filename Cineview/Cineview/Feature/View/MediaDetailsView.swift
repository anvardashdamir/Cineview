//
//  MediaDetailsView.swift
//  Cineview
//
//  Created by Enver Dashdemirov on 18.05.23.
//

import SwiftUI


struct MediaDetailsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                Image("cineview_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                
                Text("Movie Name")
                    .font(.title)
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.8)
                    .multilineTextAlignment(.leading)
                
                Text("Original Movie Name")
                    .font(.headline)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 7)
                
                HStack {
                    Text("Genres")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Text("Language")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 75)
                }
                
                HStack {
                    Text("Year")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Text("Rating")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 75)
                }
                
                Text(description)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding([.trailing, .top])
            }
            
            Text("Cast")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .padding(.top)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(movies) { movie in
                        NavigationLink(destination: PersonDetailsView()) {
                            MediaCastItemView()
                        }
                    }
                }
            }
        }.padding(.horizontal)
    }
}

struct MediaDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MediaDetailsView()
    }
}

let description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mollis ac ante in tincidunt. Suspendisse felis neque, lobortis vitae maximus et, porta id mi. Sed sed dui justo. Etiam id ante lobortis, commodo enim ut, sollicitudin dolor. Maecenas at vehicula dui. Duis placerat lacus sed odio scelerisque, eget vulputate lorem aliquam. Nullam consequat fringilla leo, in pellentesque ex posuere nec. Sed nec urna dolor. Proin non suscipit mi. Integer varius, lorem non viverra convallis, nulla nisi eleifend lorem, vitae volutpat metus ex sed elit. Donec nec erat arcu. Nunc lobortis venenatis tortor, nec finibus nisi cursus id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mollis ac ante in tincidunt. Suspendisse felis neque, lobortis vitae maximus et, porta id mi. Sed sed dui justo. Etiam id ante lobortis, commodo enim ut, sollicitudin dolor. Maecenas at vehicula dui. Duis placerat lacus sed odio scelerisque, eget vulputate lorem aliquam. Nullam consequat fringilla leo, in pellentesque ex posuere nec. Sed nec urna dolor. Proin non suscipit mi. Integer varius, lorem non viverra convallis, nulla nisi eleifend lorem, vitae volutpat metus ex sed elit. Donec nec erat arcu. Nunc lobortis venenatis tortor, nec finibus nisi cursus id."

