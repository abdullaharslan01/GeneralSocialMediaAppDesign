//
//  StoryView.swift
//  SocialMediaAppUI
//
//  Created by abdullah on 19.12.2024.
//

import SwiftUI

struct StoryView: View {
    
    @Binding var stories:[Story]
    
    @Binding  var selectedStory: Story?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 10) {
                ForEach(stories) { story in
                    Image(story.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .clipShape(.circle)
                        .overlay {
                            Circle().stroke(Color.white,lineWidth: 3)
                        }
                        .shadow(radius: 3)
                        .onTapGesture {
                            withAnimation {
                                self.selectedStory = story
                            }
                        }
                }
            }
            
            .padding([.horizontal,.vertical], 10)
        }.fullScreenCover(item: $selectedStory) { story in
            
            
                FullScreenStoryView(story: story)
                .transition(.slide)
            
        }
    }
}




struct FullScreenStoryView: View {
    let story: Story
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack {
                Image(story.imageName)
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
            }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .center)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            withAnimation {
                                dismiss()
                            }
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                        }
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview(body: {
    StoryView(stories: .constant(ExampleService.shared.getAllStories()), selectedStory: .constant(nil))
})
