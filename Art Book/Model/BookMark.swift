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
}
