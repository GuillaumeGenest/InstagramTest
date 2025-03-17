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
final class StoryBundle: Identifiable {
    @Attribute(.unique) var id: String
    var profileName: String
    var profileImage: String
    var isSeen: Bool
    @Relationship(deleteRule: .cascade) var stories: [Story]
    var currentStoryIndex: Int
  
    
    init(id: String = UUID().uuidString, profileName: String, profileImage: String, isSeen: Bool = false, stories: [Story], currentStoryIndex: Int = 0) {
        self.id = id
        self.profileName = profileName
        self.profileImage = profileImage
        self.isSeen = isSeen
        self.stories = stories
        self.currentStoryIndex = currentStoryIndex
    }

//       func updateCurrentIndex(to index: Int) {
//           guard index >= 0 && index < stories.count else { return }
//           currentStoryIndex = index
//           markAsSeenIfLastStory()
//       }

    func updateCurrentIndex(to index: Int) {
        guard !stories.isEmpty, index >= 0, index < stories.count else { return }
        
        currentStoryIndex = index
        markAsSeenIfLastStory()
        if stories.count == 1 || index == stories.count - 1 {
            markAsSeenIfLastStory()
        }
    }
    
    
       func markAsSeenIfLastStory() {
           if stories.count == 1 || currentStoryIndex == stories.count - 1 {
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
