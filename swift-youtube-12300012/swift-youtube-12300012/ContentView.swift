//
//  ContentView.swift
//  swift-youtube-12300012
//
//  Created by COTEMIG on 02/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                    VStack {
                        Youtube(headline: "Paisagens", caption: "Travel Time - 12 mil visualizações - há 11 anos", imageAvatar: "2", image: "2")
                        Youtube(headline: "Canal do Youtube", caption: "Youtube - 12 mil visualizações - há 11 anos", imageAvatar: "3", image: "3")
                    }
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Início")
                    }

                    VStack {
                        
                        
                    }
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Shorts")
                    }
            
                    VStack(alignment: .leading) {
                        Text("Inscrições")
                            .font(.largeTitle)
                            .bold()
                            .padding()

                        ScrollView {
                            ForEach(1..<4) { index in
                                HStack {
                                    Image("\(index)")
                                        .resizable()
                                        .clipShape(Circle())
                                        .frame(width: 60, height: 60)

                                    VStack(alignment: .leading) {
                                        Text("Canal \(index)")
                                            .font(.headline)
                                        Text("Novo vídeo disponível")
                                            .font(.caption)
                                    }
                                    .padding(.leading, 8)
                                }
                                .padding(.vertical, 3)
                                .padding(.horizontal)
                            }
                        }
                    }
                    .tabItem {
                        Image(systemName: "bell.fill")
                        Text("Inscrições")
                    }

            
                    VStack(alignment: .leading) {
                        Text("Biblioteca")
    
                    }
                    .tabItem {
                        Image(systemName: "play.square.stack.fill")
                        Text("Biblioteca")
                    }
                }
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environment(\.sizeCategory, .extraExtraExtraLarge)
    }
}
