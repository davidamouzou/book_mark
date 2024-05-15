//
//  CarouselImage.swift
//  Art Book
//
//  Created by David Amouzou on 03/05/2024.
//

import SwiftUI

struct CarouselImage: View {
    var bookMark: BookMark
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center
        )
    }
    
    var body: some View {
        Image(bookMark.authorProfile)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay {
                ZStack(alignment: .bottomLeading) {
                    gradient
                    VStack(alignment: .leading) {
                        Text(bookMark.authorName)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                        Text(bookMark.name)
                    }
                    .padding()
                }
                .foregroundStyle(.white)
            }
    }
}

#Preview {
    CarouselImage(bookMark: bookMarks[5])
}
