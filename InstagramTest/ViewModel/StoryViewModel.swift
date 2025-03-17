//
//  StoryViewModel.swift
//  InstagramTest
//
//  Created by Guillaume on 08/03/2025.
//

import Foundation
import SwiftUI
import SwiftData

@Observable
class StoryViewModel {
    
    var modelContext: ModelContext
    
    init(modelContext: ModelContext) {
        self.modelContext = modelContext
        fetchStoryBundles()
    }
    
    var stories: [StoryBundle] = []
    
    var showStory: Bool = false
    var currentStory: String = ""
    
    var currentBundleIndex: Int = 0
    
    var currentStoryBundle: StoryBundle {
        stories[currentBundleIndex]
    }

    
    func fetchStoryBundles() {
        let descriptor = FetchDescriptor<StoryBundle>()
        do {
            stories = try modelContext.fetch(descriptor)
            if stories.isEmpty {
                StoryBundle.insertSampleData(modelContext: modelContext)
                stories = try modelContext.fetch(descriptor)
            }
        } catch {
            print("Erreur lors du chargement des StoryBundles: \(error)")
        }
    }
    
    
    func loadMoreStories(){
        StoryBundle.insertMoreSampleData(modelContext: self.modelContext)
    }
    
    
    func moveToNextStoryBundle() -> Bool {
            if currentBundleIndex < stories.count - 1 {
                stories[currentBundleIndex].isSeen = true
                currentBundleIndex += 1
                return true
            }
            return false
        }
    
    func moveToPreviousStoryBundle() -> Bool {
        if currentBundleIndex > 0 {
            currentBundleIndex -= 1
            return true
        }
        return false
    }
    
     func updateCurrentStoryIndex(to newIndex: Int) {
         stories[currentBundleIndex].updateCurrentIndex(to: newIndex)
     }
     
     var isOnLastStory: Bool {
         let bundle = currentStoryBundle
         return bundle.currentStoryIndex == bundle.stories.count - 1
     }
     

     var isOnFirstStory: Bool {
         return currentStoryBundle.currentStoryIndex == 0
     }
/*
 func toggleLike(for story: Story) {
     story.isliked.toggle()
 }
 */

}
