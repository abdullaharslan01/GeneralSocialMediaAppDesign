//
//  PostListView.swift
//  SocialMediaAppUI
//
//  Created by abdullah on 19.12.2024.
//

import SwiftUI

struct PostListView: View {
    
    let posts: [Post]
    
    var body: some View {
        LazyVStack(spacing: 50) {
            ForEach(posts) { post in
                PostCard(post: post)
            }
        }
    }
}

#Preview {
    ScrollView {
        PostListView(posts: ExampleService.shared.getAllPosts())
    }
}
