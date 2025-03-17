//
//  SampleItem.swift
//  InstagramTest
//
//  Created by Guillaume on 08/03/2025.
//

import Foundation
import SwiftData


extension StoryBundle{

    static func insertSampleData(modelContext: ModelContext) {
        modelContext.insert(StoryBundle.storyexemple)
        modelContext.insert(StoryBundle.storyBundle2)
        modelContext.insert(StoryBundle.storyBundle3)
        modelContext.insert(StoryBundle.storyBundle4)
        modelContext.insert(StoryBundle.storyBundle5)
        modelContext.insert(StoryBundle.storyBundle6)
        modelContext.insert(StoryBundle.storyBundle7)
        modelContext.insert(StoryBundle.storyBundle8)
        modelContext.insert(StoryBundle.storyBundle9)
        modelContext.insert(StoryBundle.storyBundle10)

    }
    static func insertMoreSampleData(modelContext: ModelContext) {
        modelContext.insert(StoryBundle.MoreStoryBundle1)
        modelContext.insert(StoryBundle.MoreStoryBundle2)
        modelContext.insert(StoryBundle.MoreStoryBundle3)


    }
}

extension StoryBundle {
    static let storyexemple = StoryBundle(profileName: "Neo", profileImage: "https://i.pravatar.cc/300?u=1", isSeen: false, stories: [Story(imageURL: "https://i.pravatar.cc/300?u=1", isliked: false)])
    static let storyBundle1 = StoryBundle(
            profileName: "Gubis",
            profileImage: "https://i.pravatar.cc/300?u=1",
            isSeen: false,
            stories: [
                Story(imageURL: "https://i.pravatar.cc/300?u=1", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=2", isliked: false)]
        )

    static let storyBundle2 = StoryBundle(
            profileName: "Trinity",
            profileImage: "https://i.pravatar.cc/300?u=2",
            isSeen: false,
            stories: [
                Story(imageURL: "https://i.pravatar.cc/300?u=3", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=3", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=4", isliked: false)
            ]
        )
    static let storyBundle3 = StoryBundle(
            profileName: "Morpheus",
            profileImage: "https://i.pravatar.cc/300?u=3",
            isSeen: false,
            stories: [
                Story(imageURL: "https://i.pravatar.cc/300?u=6", isliked: false)
            ]
        )
    static let storyBundle4 = StoryBundle(
            profileName: "Smith",
            profileImage: "https://i.pravatar.cc/300?u=4",
            isSeen: false,
            stories: [
                Story(imageURL: "https://i.pravatar.cc/300?u=7", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=3", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=8", isliked: false)
            ]
        )
    static let storyBundle5 = StoryBundle(
            profileName: "Oracle",
            profileImage: "https://i.pravatar.cc/300?u=5",
            isSeen: false,
            stories: [
                Story(imageURL: "https://i.pravatar.cc/300?u=9", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=1", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=10", isliked: false)
            ]
        )
    static let storyBundle6 = StoryBundle(
            profileName: "Cypher",
            profileImage: "https://i.pravatar.cc/300?u=6",
            isSeen: false,
            stories: [
                Story(imageURL: "https://i.pravatar.cc/300?u=11", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=3", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=12", isliked: false)
            ]
        )
    static let storyBundle7 = StoryBundle(
            profileName: "Niobe",
            profileImage: "https://i.pravatar.cc/300?u=7",
            isSeen: false,
            stories: [
                Story(imageURL: "https://i.pravatar.cc/300?u=14", isliked: false)
            ]
        )
    static let storyBundle8 = StoryBundle(
            profileName: "Dozer",
            profileImage: "https://i.pravatar.cc/300?u=8",
            isSeen: false,
            stories: [
                Story(imageURL: "https://i.pravatar.cc/300?u=12", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=9", isliked: false)
            ]
        )
    static let storyBundle9 =
        StoryBundle(
            profileName: "Switch",
            profileImage: "https://i.pravatar.cc/300?u=9",
            isSeen: false,
            stories: [
                Story(imageURL: "https://i.pravatar.cc/300?u=17", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=16", isliked: false)
            ]
        )
    static let storyBundle10 =
        StoryBundle(
            profileName: "Pedro",
            profileImage: "https://i.pravatar.cc/300?u=10",
            isSeen: false,
            stories: [
                Story(imageURL: "https://i.pravatar.cc/300?u=19", isliked: false),
                Story(imageURL: "https://i.pravatar.cc/300?u=1", isliked: false)
            ]
        )
}
  
   extension StoryBundle {
       static let MoreStoryBundle1 = StoryBundle(
                  profileName: "Papax",
                  profileImage: "https://i.pravatar.cc/300?u=8",
                  isSeen: false,
                  stories: [
                      Story(imageURL: "https://i.pravatar.cc/300?u=11", isliked: false),
                      Story(imageURL: "https://i.pravatar.cc/300?u=6", isliked: false),
                      Story(imageURL: "https://i.pravatar.cc/300?u=1", isliked: false),
                      Story(imageURL: "https://i.pravatar.cc/300?u=3", isliked: false),
                      Story(imageURL: "https://i.pravatar.cc/300?u=5", isliked: false)
                  ]
              )
       static let MoreStoryBundle2 = StoryBundle(
                  profileName: "Leonardo",
                  profileImage: "https://i.pravatar.cc/300?u=4",
                  isSeen: false,
                  stories: [
                      Story(imageURL: "https://i.pravatar.cc/300?u=4", isliked: false),
                      Story(imageURL: "https://i.pravatar.cc/300?u=10", isliked: false)
                  ]
              )
       static let MoreStoryBundle3 = StoryBundle(
                  profileName: "Mathile",
                  profileImage: "https://i.pravatar.cc/300?u=8",
                  isSeen: false,
                  stories: [
                      Story(imageURL: "https://i.pravatar.cc/300?u=19", isliked: false),
                      Story(imageURL: "https://i.pravatar.cc/300?u=20", isliked: false)
                  ]
              )
   }

   
