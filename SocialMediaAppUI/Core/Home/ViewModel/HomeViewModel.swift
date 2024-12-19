//
//  HomeViewModel.swift
//  SocialMediaAppUI
//
//  Created by abdullah on 19.12.2024.
//

import Observation
import SwiftUI

@Observable class HomeViewModel {
    
    var selectedStory: Story?
    
    var stories: [Story] = []
    
    var posts: [Post] = []
    
    init(selectedStory: Story? = nil) {
        self.selectedStory = selectedStory
        getAllStories()
        getAllPosts()
    
    }
    
    func getAllStories() {
        stories = ExampleService.shared.getAllStories()
    }
    
    func getAllPosts(){
        posts = ExampleService.shared.getAllPosts()
    }
    
}
