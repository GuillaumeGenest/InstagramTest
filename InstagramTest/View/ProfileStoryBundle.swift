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
                
                AsyncImage(url: URL(string: storybundle.profileImage)) { phase in
                            switch phase {
                            case .success(let image):
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:70, height: 70)
                                    .clipShape(Circle())
                            case .failure:
                                Color.gray
                                    .frame(width:70, height: 70)
                                    .clipShape(Circle())
                            case .empty:
                                frame(width:70, height: 70)
                                .clipShape(Circle())
                            @unknown default:
                                Color.gray
                                    .frame(width:70, height: 70)
                                    .clipShape(Circle())
                            }
                    }
               Circle()
                    .stroke(storybundle.isSeen ?  grayGradient : coloredGradient, lineWidth: storybundle.isSeen ? 2 : 4)

                    .frame(width: 80, height: 80)
                    }
                    .padding(2)
//                    .onTapGesture {
//                            withAnimation(.easeInOut) {
//                                storybundle.isSeen = true
//                            }
//                        }
                    Text(storybundle.profileName)
                        .font(.caption)
                        .lineLimit(1)
                        .frame(width: 70)
                        .foregroundColor(Color.black)
                }
            }
        }

#Preview {
    ProfileStoryBundle(storybundle: StoryBundle( profileName: "kevin", profileImage: "https://i.pravatar.cc/300?u=1", isSeen: false, stories: []))
}

/*
struct ProfileUserStory: View {
    var user: User
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
                Image(user.profileImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                
    
                Button(action: {}) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24) // Taille du bouton
                        .foregroundColor(.blue)
                        .background(Color.white.clipShape(Circle()))
                }
                .offset(x: 5, y: 5) // Dépasse légèrement en bas à droite
            }
            Text(user.profileName)
                .font(.caption)
                .lineLimit(1)
                .frame(width: 70)
                .foregroundColor(Color.black)
        }
       }
}
*/
