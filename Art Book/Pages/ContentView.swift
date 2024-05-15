//
//  ContentView.swift
//  Art Book
//
//  Created by David Amouzou on 30/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .list
    
    enum Tab {
        case list
        case favorite
        case search
        case profile
    }
    
    var body: some View {
        TabView(selection: $selection) {
            ListBook()
                .tabItem {
                    Label("Book List", systemImage: "house.circle")
                }.tag(Tab.list)
            
            Text("Favorite")
                .tabItem {
                    Label("Favorite", systemImage: "heart.circle")
                }.tag(Tab.favorite)
            
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass.circle")
                }.tag(Tab.search)
            
            Text("Settings")
                .tabItem {
                    Label("Profile", systemImage: "swirl.circle.righthalf.filled")
                }.tag(Tab.profile)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ContentView()
}
