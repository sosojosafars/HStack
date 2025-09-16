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
            // Aba Início
            ScrollView {
                VStack {
                    Youtube(
                        headline: "Por do sol",
                        caption: "Travel Time - 12 mil visualizações - há 11 anos",
                        imageAvatar: "2",
                        image: "2"
                    )
                    Youtube(
                        headline: "Paisagem Suiça",
                        caption: "Daily Day- 50 mil visualizações - há 1 ano",
                        imageAvatar: "3",
                        image: "3"
                    )
                }
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Início")
            }

            // Aba Shorts
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 1) {
                    Shorts(
                        headline: "Na neve",
                        caption: "Viagens topis - 4 mil visualizações - há 2 meses",
                        imageAvatar: "4",
                        image: "4"
                    )
                
                }
                .padding()
            }
            .tabItem {
                Image(systemName: "play.rectangle.fill")
                Text("Shorts")
            }

            // Aba Inscrições
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

            // Aba Biblioteca
            NavigationView {
                Bibliteca(
                    headline: "User",
                    caption: "@user",
                    imageAvatar: "c",
                    image: "c",
                    views: "10k",
                    description: "Canal de variedades de coisas da natureza, passeios ao ar livre, pets e muito mais!"
                )
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
