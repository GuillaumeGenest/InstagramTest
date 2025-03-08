//
//  Story.swift
//  InstagramTest
//
//  Created by Guillaume on 08/03/2025.
//

import Foundation
import Foundation
import SwiftData

@Model
final class StoryBundle: Identifiable, Hashable, Equatable {
    @Attribute(.unique) var id: String
    var profileName: String
    var profileImage: String
    var isSeen: Bool = false
    @Relationship(deleteRule: .cascade) var stories: [Story]
    //var stories: [Story]
    var currentStoryIndex: Int
    
    init(id: String = UUID().uuidString, profileName: String, profileImage: String, isSeen: Bool, stories: [Story]) {
        self.id = id
        self.profileName = profileName
        self.profileImage = profileImage
        self.isSeen = isSeen
        self.stories = stories
        self.currentStoryIndex = 0
    }
    
    static func == (lhs: StoryBundle, rhs: StoryBundle) -> Bool {
        return lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

       func updateCurrentIndex(to index: Int) {
           guard index >= 0 && index < stories.count else { return }
           currentStoryIndex = index
           markAsSeenIfLastStory()
       }

       func markAsSeenIfLastStory() {
           if currentStoryIndex == stories.count - 1 {
               isSeen = true
           }
       }
}

@Model
class Story: Identifiable{
    var id : String
    var imageURL: String
    var isliked: Bool
    init(id: String = UUID().uuidString, imageURL: String, isliked: Bool = false) {
        self.id = id
        self.imageURL = imageURL
        self.isliked = isliked
    }
}
