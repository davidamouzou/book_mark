//
//  BookMark.swift
//  Art Book
//
//  Created by David Amouzou on 30/04/2024.
//

import Foundation

struct BookMark: Hashable, Codable {
    var id: Int
    var name: String
    var image: String
    var authorName: String
    var createA: DateComponents
    var authorProfile: String
    var content: [Int: String] = [
        1: """
        When you use SwiftUI’s List type, you can display a platform-specific list of views. The elements of the list can static, like the child views of the stacks you’ve created so far, or dynamically generated. You can even mix static and dynamically generated views.
        When you use SwiftUI’s List type, you can display a platform-specific list of views. The elements of the list can static, like the child views of the stacks you’ve created so far, or dynamically generated. You can even mix static and dynamically generated views.
        """,
        
        2: """
        Asrt SwiftUI’s List type, you can display a platform-specific list of views. The elements of the list can static, like the child views of the stacks you’ve created so far, or dynamically generated. You can even mix static and dynamically generated views.
        """
    ]
    
}
