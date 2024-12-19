//
//  PostCard.swift
//  SocialMediaAppUI
//
//  Created by abdullah on 19.12.2024.
//

import SwiftUI

struct PostCard: View {

    let post: Post

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(post.userProfileImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(.circle)
                    .overlay {
                        Circle().stroke(.white, lineWidth: 3)

                    }.shadow(radius: 3)
                    

                VStack(alignment: .leading) {
                    Text(post.name)
                        .bold()

                    Text("@\(post.username)")
                        .font(.footnote)
                }.frame(maxWidth: .infinity, alignment: .leading)

                Image(systemName: "ellipsis")
                    .padding()

            }.padding(.horizontal, 10)

            VStack {
                Image(post.postImageName)
                    .resizable()
                    .scaledToFill()
            }.frame(maxHeight: 400)
                .background(Color.white)
                .clipped()

            VStack {
                HStack {
                    HStack {
                        ActionButton(systemName: "heart")
                        ActionButton(systemName: "message")
                        ActionButton(systemName: "paperplane")
                    }.frame(maxWidth: .infinity, alignment: .leading)

                    ActionButton(systemName: "bookmark")
                }.foregroundStyle(.black)
                    .font(.title3)
                    .padding(.vertical, 5)

                HStack {
                    Text("@\(post.username) ")
                        .bold()
                        .font(.footnote) +
                        Text(post.description)
                        .font(.footnote)
                }
            }          .padding(.horizontal, 10)

        }
    }
}

#Preview {
    PostCard(post: ExampleService.shared.getAllPosts()[0])
}

struct ActionButton: View {

    let systemName: String
    var onTapGesture: (() -> ())? = nil

    var body: some View {
        Button {
            onTapGesture?()
        } label: {
            Image(systemName: systemName)
        }

    }
}
