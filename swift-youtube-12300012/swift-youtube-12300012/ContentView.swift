//
//  ContentView.swift
//  swift-youtube-12300012
//
//  Created by COTEMIG on 02/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Image("Image")
                .resizable()
                .scaledToFit()
            
            HStack{
                Youtube(text: "Youtube", image: "Image")
            }
            HStack{
                Text("Canal do Youtube")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
