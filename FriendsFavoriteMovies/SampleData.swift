//
//  SampleData.swift
//  FriendsFavoriteMovies
//
//  Created by Israel Dail on 7/7/25.
//

import Foundation
import SwiftData

@MainActor
class SampleData {
    static let shared = SampleData()
    
    let modelContainer: ModelContainer
    
    //computed property to access main context of model container
    // Xcode error saying you should access the mainContext property
    // from the main actor
    // The error is related to Swift concurrency
    // a way to execute several tasks at the same time. Swift uses actors to manage code that runs concurrently
    // error is fixed by annotating entire SampleData class as @MainActor
    
    var context: ModelContext {
        modelContainer.mainContext
    }
    
    private init() {
        let schema = Schema([
            Friend.self,
            Movie.self,
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
            
            insertSampleData()
            try context.save()
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
        
    }
    
    private func insertSampleData() {
        for friend in Friend.sampleData {
            context.insert(friend)
        }
        
        for movie in Movie.samepleData {
            context.insert(movie)
        }
    }
}
