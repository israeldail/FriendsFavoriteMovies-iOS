//
//  FriendList.swift
//  FriendsFavoriteMovies
//
//  Created by Israel Dail on 7/7/25.
//

import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        List {
            ForEach(friends) { friend in
                Text(friend.name)
            }
        }
    }
}


#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
