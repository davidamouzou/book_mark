//
//  BookDetail.swift
//  Art Book
//
//  Created by David Amouzou on 30/04/2024.
//

import SwiftUI

struct BookDetail: View {
    var bookMark: BookMark
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Image(bookMark.image)
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: .fit)
                
            VStack (alignment: .leading) {
                
                Text(bookMark.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("\(bookMark.authorName) ⏤ \(bookMark.createA.year!)").italic().foregroundStyle(.gray)
            }.padding()
            Divider()
            Text("""
                 Ce tableau est paint en 1998 par Luis marie lors de son voyage a narbiam un monde imaginaire.
                 
                 Dans son histoire, Luis un paintre tanlantieur nous rencontre son imagination sur la terre des anges. Dans son histoire, Luis un paintre tanlantieur nous rencontre son imagination sur la terre des anges. Dans son histoire, Luis un paintre tanlantieur nous rencontre son imagination sur la terre des anges. Dans son histoire, Luis un paintre tanlantieur nous rencontre son imagination sur la terre des anges.
                 """).padding()
            Divider()
            Text("partie 1/2 (Drame Angels ...)")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                
        }
    }
}

#Preview {
    BookDetail(bookMark: bookMarks[0])
}
