//
//  Bibliteca.swift
//  swift-youtube-12300012
//
//  Created by COTEMIG on 16/09/25.
//

import SwiftUI

struct Bibliteca: View {
        var headline: String
        var caption: String
        var imageAvatar: String
        var image: String
        var views: String
        var description: String
        
        @State private var selectedTab = 0
        let tabs = ["Inicio", "Videos", "Shorts", "Playlists", "Posts"]
        
        var body: some View {
            VStack(alignment: .leading) {
                
                
                HStack(alignment: .center, spacing: 16) {
                    Image(imageAvatar)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .overlay(Circle().stroke(Color.gray.opacity(0.7), lineWidth: 2))
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text(headline)
                            .font(.title)
                            .bold()
                            .foregroundColor(.primary)
                        
                        Text(caption)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        HStack(spacing: 16) {
                            Text("\(views) inscritos")
                            Text("120 vídeos")
                        }
                        .font(.caption)
                        .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    
                }
                .padding(.horizontal)
                VStack(spacing: 12) {
                    Button(action: {
                        print("Inscrever-se clicado")
                    }) {
                        Text("Inscrever-se")
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    
                    Button(action: {
                        print("Acessar loja clicado")
                    }) {
                        Text("Acessar loja")
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                }.padding(10)
                
                
                Text(description)
                    .font(.body)
                    .foregroundColor(.primary)
                    .padding([.horizontal, .top])
                
                
                Picker(selection: $selectedTab, label: Text("Tabs")) {
                    ForEach(0..<tabs.count, id: \.self) { index in
                        Text(tabs[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                ScrollView {
                    VStack(alignment: .leading) {
                        if selectedTab == 0 {
                            Text("Aqui ficam os vídeos do canal")
                                .foregroundColor(.secondary)
                                .padding()
                        } else if selectedTab == 1 {
                            Text("Playlists")
                                .foregroundColor(.secondary)
                                .padding()
                        } else if selectedTab == 2 {
                            
                            Text("Shorts")
                                .font(.headline)
                                .padding(.leading)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 16) {
                                    ShortItem(imageName: "Image", title: "Cachorro fofo")
                                    ShortItem(imageName: "Image", title: "Natureza linda")
                                    ShortItem(imageName: "Image", title: "Dança divertida")
                                }
                                .padding(.horizontal)
                            }
                            .frame(height: 240)
                        } else if selectedTab == 3 {
                            Text("Playlists")
                                .foregroundColor(.secondary)
                                .padding()
                        } else if selectedTab == 4 {
                            Text("Posts")
                                .foregroundColor(.secondary)
                                .padding()
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .navigationBarTitle(headline, displayMode: .inline)
        }
    }
    
    struct TelaCanal_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                            Bibliteca(
                                headline: "Fundo Verde",
                                caption: "@Lili",
                                imageAvatar: "Image 1",
                                image: "Image 4",
                                views: "101k",
                                description: "Novo canal de variedades de coisas da natureza, dicas de jardinagem, passeios ao ar livre e muito mais!"
                            )
                        }
                    }
                }
