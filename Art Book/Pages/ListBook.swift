//
//  ListBook.swift
//  Art Book
//
//  Created by David Amouzou on 02/05/2024.
//

import SwiftUI

struct ListBook: View {
    @State var showFavorites = false
    @State private var showingProfile = false
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Art Book")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    
                    Spacer()
                    
                    CircleAvatar()
                        .sheet(isPresented: $showingProfile) {
                            ProfileShort()
                        }
                        .onTapGesture {
                            showingProfile = true
                        }
                }
                .padding(.horizontal)
                
                PageView(pages: bookMarks.map { CarouselImage(bookMark: $0) })
                    .listRowInsets(EdgeInsets())
                
                // List of books
                Spacer(minLength: 24)
                 Text("Popular book")
                    .font(.title2)
                    .bold()
                    .padding(.leading, 12.0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(bookMarks, id: \.id) {bookMark in
                    BookCard(bookMark: bookMark)
                        .listRowInsets(EdgeInsets())
                }
            }
        }
    }
}

#Preview {
    ListBook()
}

