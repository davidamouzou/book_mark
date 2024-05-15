//
//  BookDetail.swift
//  Art Book
//
//  Created by David Amouzou on 30/04/2024.
//

import SwiftUI

struct BookDetail: View {
    var bookMark: BookMark
    @State private var partie = 1
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(bookMark.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
                    .padding(.horizontal, 12)
                
                HStack {
                    CircleAvatar(image: bookMark.authorProfile, raduis: 54)
                    VStack(alignment: .leading) {
                        Text(bookMark.name)
                            .font(.title)
                        Text("\(bookMark.authorName) - \(bookMark.createA.year!)").italic()
                            .foregroundStyle(.gray)
                    }
                    
                }
                .padding(.horizontal)
                
                
                Divider()
                Spacer(minLength: 16)
                ScrollView {
                    HStack {
                        ForEach(0..<bookMark.content.count, id: \.self) { number in
                            PartieView(number: number + 1, selectedPartie: $partie)
                        }
                    }
                }
                Text(bookMark.content[partie]!)
                    .padding()
                Divider()
                Text("partie \(partie)/\(bookMark.content.count) (Drame Angels ...)")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    BookDetail(bookMark: bookMarks[0])
}



