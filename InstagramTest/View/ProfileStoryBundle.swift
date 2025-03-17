//
//  ProfileStoryBundle.swift
//  InstagramTest
//
//  Created by Guillaume on 08/03/2025.
//

import SwiftUI

struct ProfileStoryBundle: View {
    var storybundle: StoryBundle
    
    
    private let coloredGradient = LinearGradient(
        colors: [.red, .purple, .orange, .pink],
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    
    private let grayGradient = LinearGradient(
        gradient: Gradient(colors: [Color.gray.opacity(0.2)]),
        startPoint: .top,
        endPoint: .bottom
    )
    var body: some View {
        VStack{
            ZStack {
                AsyncImage(url: URL(string: storybundle.profileImage)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:70, height: 70)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
               Circle()
                    .stroke(storybundle.isSeen ?  grayGradient : coloredGradient, lineWidth: storybundle.isSeen ? 2 : 4)

                    .frame(width: 80, height: 80)
                    }
                    .padding(2)
                    Text(storybundle.profileName)
                        .font(.caption)
                        .lineLimit(1)
                        .frame(width: 70)
                        .foregroundColor(Color.black)
                }
            }
        }

#Preview {
    ProfileStoryBundle(storybundle: StoryBundle(profileName: "kevin", profileImage: "https://i.pravatar.cc/300?u=1", isSeen: false, stories: []))
}


struct ProfileUserStory: View {
    private let coloredGradient = LinearGradient(
        colors: [.red, .purple, .orange, .pink],
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    
    private let grayGradient = LinearGradient(
        gradient: Gradient(colors: [Color.gray.opacity(0.2)]),
        startPoint: .top,
        endPoint: .bottom
    )
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing) {
                AsyncImage(url: URL(string: "https://i.pravatar.cc/300?u=1")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:70, height: 70)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
                
    
                Button(action: {}) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.blue)
                        .background(Color.white.clipShape(Circle()))
                }
                .offset(x: 5, y: 5)
            }
            Text("kevin")
                .font(.caption)
                .lineLimit(1)
                .frame(width: 70)
                .foregroundColor(Color.black)
        }
       }
}

