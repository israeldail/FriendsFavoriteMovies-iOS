//
//  Movie.swift
//  FriendsFavoriteMovies
//
//  Created by Israel Dail on 7/7/25.
//

import Foundation
import SwiftData


@Model
class Movie {
    var title: String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }
    
    static let samepleData = [
        Movie(title: "John Wick", releaseDate: Date(timeIntervalSinceReferenceDate: -402_000_000))
    ]
}
