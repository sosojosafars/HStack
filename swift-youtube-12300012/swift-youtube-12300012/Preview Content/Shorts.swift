//
//  Shorts.swift
//  swift-youtube-12300012
//
//  Created by COTEMIG on 16/09/25.
//

import SwiftUI

struct Shorts: View {
    var headline: String
    var caption: String
    var imageAvatar: String
    var image: String

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(image)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            HStack(alignment: .center, spacing: 12) {
                Image(imageAvatar)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 48, height: 48)
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(headline)
                        .font(.headline)
                        .bold()
                        .foregroundColor(.white)

                    Text(caption)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                }
            }
            .padding([.leading, .bottom], 20)
        }
    }
}


struct Shots_Previews: PreviewProvider {
    static var previews: some View {
        Shorts(
            headline: "Fundo verde",
            caption: "Youtube - 4 mil visualizações - há 2 anos",
            imageAvatar: "Image 1",
            image: "4"
        )
    }
}


import SwiftUI

struct ShortItem: View {
    var imageName: String
    var title: String

    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 200)
                .clipped()
                .cornerRadius(12)

            Text(title)
                .font(.caption)
                .foregroundColor(.primary)
                .lineLimit(1)
                .padding(.top, 4)
        }
        .frame(width: 120)
    }
}
