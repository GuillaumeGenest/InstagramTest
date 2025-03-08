//
//  StoryScrollview.swift
//  InstagramTest
//
//  Created by Guillaume on 08/03/2025.
//

import SwiftUI

struct StoryScrollview : View {
    @Environment(\.dismiss) private var dismiss
    @Bindable var storyBundle: StoryBundle
    var animation: Namespace.ID
    
    @State private var currentIndex: Int = 0
    

    
    var body: some View {

        VStack {
            HeaderStoryView(storyBundle: storyBundle)
                .padding(.top, 50)
        TabView(selection: $currentIndex) {
                        ForEach(storyBundle.stories.indices, id: \.self) { index in
                            StoryCardView(storyBundle: storyBundle)
                                .tag(index)
                        }
                    }
            
        .onChange(of: currentIndex) { oldValue, newValue in
            storyBundle.updateCurrentIndex(to: newValue)
            
        }
        BottomContent(isLiked: $storyBundle.stories[storyBundle.currentStoryIndex].isliked)
                .padding(.bottom, 10)
                .padding()
                .frame(maxWidth: .infinity)
                }.background(Color.black)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    .navigationTransition(.zoom(sourceID: storyBundle.id, in: animation))
    .ignoresSafeArea()
    .onAppear {
                currentIndex = storyBundle.currentStoryIndex
        }
    }
}

#Preview {
    struct PreviewContainer: View {
        @Namespace var animation
        
        var body: some View {
            StoryScrollview(
                storyBundle: StoryBundle(
                    profileName: "Neo",
                    profileImage: "https://i.pravatar.cc/300?u=1",
                    isSeen: false,
                    stories: [
                        Story(imageURL: "https://i.pravatar.cc/300?u=1", isliked: false),
                        Story(imageURL: "https://i.pravatar.cc/300?u=2", isliked: false)
                    ]
                ),
                animation: animation
            )
        }
    }

    return PreviewContainer()
}
