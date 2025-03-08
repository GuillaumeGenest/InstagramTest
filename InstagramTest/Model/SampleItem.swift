//
//  SampleItem.swift
//  InstagramTest
//
//  Created by Guillaume on 08/03/2025.
//

import Foundation
import SwiftData


struct SampleData {
    static let storyBundles: [StoryBundle] = [
           StoryBundle(
               profileName: "Neo",
               profileImage: "https://i.pravatar.cc/300?u=1",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=1", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=2", isliked: false)
               ]
           ),
           StoryBundle(
               profileName: "Trinity",
               profileImage: "https://i.pravatar.cc/300?u=2",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=3", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=3", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=4", isliked: false)
               ]
           ),
           StoryBundle(
               profileName: "Morpheus",
               profileImage: "https://i.pravatar.cc/300?u=3",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=6", isliked: false)
               ]
           ),
           StoryBundle(
               profileName: "Smith",
               profileImage: "https://i.pravatar.cc/300?u=4",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=7", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=3", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=8", isliked: false)
               ]
           ),
           StoryBundle(
               profileName: "Oracle",
               profileImage: "https://i.pravatar.cc/300?u=5",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=9", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=1", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=10", isliked: false)
               ]
           ),
           StoryBundle(
               profileName: "Cypher",
               profileImage: "https://i.pravatar.cc/300?u=6",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=11", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=3", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=12", isliked: false)
               ]
           ),
           StoryBundle(
               profileName: "Niobe",
               profileImage: "https://i.pravatar.cc/300?u=7",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=14", isliked: false)
               ]
           ),
           StoryBundle(
               profileName: "Dozer",
               profileImage: "https://i.pravatar.cc/300?u=8",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=12", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=9", isliked: false)
               ]
           ),
           StoryBundle(
               profileName: "Switch",
               profileImage: "https://i.pravatar.cc/300?u=9",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=17", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=16", isliked: false)
               ]
           ),
           StoryBundle(
               profileName: "Tank",
               profileImage: "https://i.pravatar.cc/300?u=10",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=19", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=20", isliked: false)
               ]
           )
       ]
       
    static let MoRestoryBundle = [
           StoryBundle(
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
           ),
           StoryBundle(
               profileName: "Leonardo",
               profileImage: "https://i.pravatar.cc/300?u=4",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=4", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=10", isliked: false)
               ]
           ),
           StoryBundle(
               profileName: "Mathile",
               profileImage: "https://i.pravatar.cc/300?u=8",
               isSeen: false,
               stories: [
                   Story(imageURL: "https://i.pravatar.cc/300?u=19", isliked: false),
                   Story(imageURL: "https://i.pravatar.cc/300?u=20", isliked: false)
               ]
           )
       ]
}
