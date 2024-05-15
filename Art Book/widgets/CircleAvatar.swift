//
//  CircleAvatar.swift
//  Art Book
//
//  Created by David Amouzou on 02/05/2024.
//

import SwiftUI

struct CircleAvatar: View {
    var image = "avatar"
    var raduis: Double = 36
    var body: some View {
        Image(image)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: raduis, height: raduis)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CircleAvatar(image: "avatar", raduis: 36)
}
