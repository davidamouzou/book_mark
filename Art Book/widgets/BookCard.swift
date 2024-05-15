//
//  BookCard.swift
//  Art Book
//
//  Created by David Amouzou on 30/04/2024.
//

import SwiftUI

struct BookCard: View {
    var bookMark: BookMark
    var padding = 12.0
    
    var body: some View {
       
            NavigationLink(destination: BookDetail(bookMark: bookMark)){
                ZStack(alignment: .bottomLeading) {
                    Image(bookMark.image)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(12.0)
                    HStack {
                        CircleAvatar(image: bookMark.authorProfile)
                        VStack(alignment: .leading) {
                            Text(bookMark.name)
                                .foregroundStyle(Color.black)
                            Text("\(bookMark.authorName) - \(bookMark.createA.year!)")
                                .foregroundStyle(Color.gray).italic().font(.subheadline)
                        }
                        .padding(.trailing, 8.0)
                        
                    }
                    .padding(.all, 4.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    .cornerRadius(100.0)
                    .offset(x: 12, y: -12)
                    
                }
                .padding(.horizontal, padding)
        }
    }
}

#Preview {
    BookCard(bookMark: bookMarks[0])
}

