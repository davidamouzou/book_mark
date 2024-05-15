//
//  ProfileShort.swift
//  Art Book
//
//  Created by David Amouzou on 03/05/2024.
//

import SwiftUI

struct ProfileShort: View {
    @State private var isDarkMode: Bool = false
    var body: some View {
        ScrollView {
            ZStack(alignment: .bottom) {
                Image("bgavatar")
                    .resizable()
                    .scaledToFit()
                VStack {
                    CircleAvatar(raduis: 100)
                        .padding(.all, 4)
                }
                .background(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.bottom, -48)
                .shadow(radius: 8)
            }
            
            Spacer(minLength: 64)
            
            // Name display
            VStack {
                Text("Anastasi Fardran").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack {
                    Image(systemName: "bolt.fill")
                    Text("Gold member")
                }
                .foregroundStyle(.orange)
                
                // Cordonner
                Spacer(minLength: 36)
                HStack {
                    Text("Phone")
                    Spacer()
                    Text("+ 33 06 84 92 91 23").font(.subheadline).foregroundColor(.gray)
                }
                Spacer()
                HStack {
                    Text("Mail")
                    Spacer()
                    Text("flaa.bun@gmail.com").font(.subheadline).foregroundColor(.gray)
                }
            }
            .padding(.horizontal)
            Spacer(minLength: 24)
            
            // Title action
            Divider()
            Spacer(minLength: 24)
            VStack {
                HStack {
                    Image(systemName: "moon.circle")
                    Text("Dark mode")
                    Spacer()
                    Toggle(isOn: $isDarkMode) {Text("")}
                }.padding(.all, 8)
                
                Divider()
                HStack {
                    Image(systemName: "creditcard.circle")
                    Text("Card")
                    Spacer()
                }.padding(.all, 8)
                
                Divider()
                HStack {
                    Image(systemName: "person.crop.circle")
                    Text("Profile detail")
                    Spacer()
                }.padding(.all, 8)
                
                Divider()
                HStack {
                    Image(systemName: "gearshape")
                    Text("Settings")
                    Spacer()
                }.padding(.all, 8)
                Divider()
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea()
    }
}


#Preview {
    ProfileShort()
}
