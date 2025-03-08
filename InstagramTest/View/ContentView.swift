//
//  ContentView.swift
//  InstagramTest
//
//  Created by Guillaume on 08/03/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var viewModel : StoryViewModel
    @Namespace private var animation
    @State private var isLoading = false
    
    init(modelContext: ModelContext) {
        let viewModel = StoryViewModel(modelContext: modelContext)
        _viewModel = State(initialValue: viewModel)
    }
    
    
    var body: some View {
        
        @Bindable var binding = viewModel
        NavigationStack{
            VStack(spacing: 0){
                ScrollView(.vertical){
                
                Text("Instagram")
                
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing: 10){
                        ForEach($binding.stories){ $story in
                            NavigationLink(value: story){
                                ProfileStoryBundle(storybundle: story)
                                    .matchedTransitionSource(id: story.id, in: animation){
                                        $0
                                    }
                                }
                            }
                        }.padding(.horizontal, 5)
                            .padding()
                    }
                    Text("Feed Instagram")
                    RoundedRectangle(cornerRadius: 15,
                                     style: .continuous)
                    .fill(Color.red)
                    .shadow(color: Color(Color.RGBColorSpace.sRGB,
                                         white: 0, opacity: 0.2) , radius: 4)
                    .frame(height:100)
                }
            }.refreshable {
                viewModel.loadMoreStories()
            }
            .navigationDestination(for: StoryBundle.self) { story in
                StoryScrollview(storyBundle: story, animation: animation)
                    .environment(viewModel)
                    .toolbarVisibility(.hidden, for: .navigationBar)
                    .interactiveDismissDisabled(true)
            }
            }
        }
}





