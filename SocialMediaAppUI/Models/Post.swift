//
//  Post.swift
//  SocialMediaAppUI
//
//  Created by abdullah on 19.12.2024.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    let name: String
    let username: String
    let userProfileImage: String
    let postImageName: String
    let description: String
}
