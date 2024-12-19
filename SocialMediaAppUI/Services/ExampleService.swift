//
//  StoryService.swift
//  SocialMediaAppUI
//
//  Created by abdullah on 19.12.2024.
//

import Foundation

class ExampleService {
    static let shared = ExampleService()
    
    private init() {}
    
    
    func getAllStories() -> [Story] { return (0 ... 8).map { Story(imageName: "image\($0)") }}
       
      
        
        func getAllPosts() -> [Post] {
            return [
                Post(
                    name: "Abdullah Arslan",
                    username: "abdullaharslan",
                    userProfileImage: "profile1",
                    postImageName: "image0",
                    description: "Music expresses that which cannot be said and on which it is impossible to remain silent."
                ),
                
                Post(
                    name: "Mert Yılmaz",
                    username: "mertyilmaz",
                    userProfileImage: "profile2",
                    postImageName: "image2",
                    description: "Happiness is not something ready-made. It comes from your own actions."
                ),
                Post(
                    name: "Elif Çelik",
                    username: "elifcelik",
                    userProfileImage: "profile3",
                    postImageName: "image3",
                    description: "Be yourself; everyone else is already taken."
                ),
                Post(
                    name: "İbrahim Akın",
                    username: "ibrahimakin",
                    userProfileImage: "profile4",
                    postImageName: "image4",
                    description: "Success is not the key to happiness. Happiness is the key to success."
                ),
                Post(
                    name: "Ayşe Kara",
                    username: "aysekara",
                    userProfileImage: "profile5",
                    postImageName: "image5",
                    description: "In the middle of every difficulty lies opportunity."
                ),
                Post(
                    name: "Fatih Kaya",
                    username: "fatihkaya",
                    userProfileImage: "profile6",
                    postImageName: "image6",
                    description: "Do what you can with all you have, wherever you are."
                ),
                Post(
                    name: "Zeynep Aksoy",
                    username: "zeynepaksoy",
                    userProfileImage: "profile7",
                    postImageName: "image7",
                    description: "Keep your face always toward the sunshine—and shadows will fall behind you."
                ),
                Post(
                    name: "Ali Şahin",
                    username: "alisahin",
                    userProfileImage: "profile8",
                    postImageName: "image8",
                    description: "The future belongs to those who believe in the beauty of their dreams."
                )
            ]
            
        }
        
    }

