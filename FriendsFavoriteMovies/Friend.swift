//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by Israel Dail on 7/7/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    static let sampleData = [
        Friend(name: "Israel"),
        Friend(name: "David"),
        Friend(name: "Shai"),
        Friend(name: "Angela"),
        Friend(name: "Rody"),
    ]
}
