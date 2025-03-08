//
//  StoryCardView.swift
//  InstagramTest
//
//  Created by Guillaume on 08/03/2025.
//

import SwiftUI

struct StoryCardView: View {
    var storyBundle: StoryBundle
    var body: some View {
        ZStack{
            Color.black
            VStack(spacing: 0) {
                ImageView(storyBundle: storyBundle)   
            }
        }
       
    }
}

#Preview {
    StoryCardView(storyBundle: StoryBundle(id: UUID().uuidString, profileName: "Marie", profileImage: "https://i.pravatar.cc/300?u=3", isSeen: false, stories: [Story(id: UUID().uuidString, imageURL: "https://i.pravatar.cc/300?u=1"), Story(id: UUID().uuidString, imageURL: "https://i.pravatar.cc/300?u=6"), Story(id: UUID().uuidString, imageURL: "https://i.pravatar.cc/300?u=7")]))
        .background(Color.black)
        .ignoresSafeArea()
}


struct ImageView: View {
    var storyBundle: StoryBundle
    var body: some View{
                ZStack {
                    AsyncImage(url: URL(string: storyBundle.stories[storyBundle.currentStoryIndex].imageURL)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .cornerRadius(10)
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
    }


struct HeaderStoryView: View {
    @Environment(\.dismiss) private var dismiss
    var storyBundle: StoryBundle
    var body: some View{
            HStack {
                AsyncImage(url: URL(string: storyBundle.profileImage)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
                Text(storyBundle.profileName)
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .bold))
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(Color.white)
                }
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color.white)
                }
            }
            .padding(.horizontal, 15)
            .padding(.top, 8)
    }
}


struct BottomContent: View {
    @Binding var isLiked: Bool
    @State var name: String = ""
    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                RoundedRectangle(cornerRadius: 22.5)
                    .stroke(Color.white, lineWidth: 1)
                    .frame(height: 45)
                HStack{
                    TextField("Envoyer un message..." ,text: $name)
                        .foregroundColor(.white)
                        .tint(Color.white)
                }
            }
            
            Button {
                isLiked.toggle()
            } label: {
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .bold()
                    .foregroundColor(isLiked ? Color.red: Color.white )
            }
            Image(systemName: "paperplane")
                .foregroundColor(Color.white)
        }
    }
}
