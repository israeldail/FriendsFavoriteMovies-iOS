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
        Movie(title: "John Wick", releaseDate: Date(timeIntervalSinceReferenceDate: -402_000_000)),
        Movie(title: "Difficult People", releaseDate: Date(timeIntervalSinceReferenceDate: -20_000_000)),
        Movie(title: "StarTrek", releaseDate: Date(timeIntervalSinceReferenceDate: 300_000_000)),
        Movie(title: "The Chosen", releaseDate: Date(timeIntervalSinceReferenceDate: 120_000_000)),
        Movie(title: "Interstellar", releaseDate: Date(timeIntervalSinceReferenceDate: 550_000_000)),
        Movie(title: "Shrek", releaseDate: Date(timeIntervalSinceReferenceDate: -20_000_000)),
    ]
}
