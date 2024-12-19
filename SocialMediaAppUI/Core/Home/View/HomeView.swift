//
//  HomeView.swift
//  SocialMediaAppUI
//
//  Created by abdullah on 19.12.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State var vm = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                StoryView(stories: $vm.stories, selectedStory: $vm.selectedStory)
                    .padding(.top,10)
                    .padding(.bottom, 20)
                PostListView(posts: vm.posts)
                   
            }
        }
    }
}

#Preview {
    HomeView()
}
