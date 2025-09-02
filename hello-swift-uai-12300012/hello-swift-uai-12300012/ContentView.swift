//
//  ContentView.swift
//  hello-swift-uai-12300012
//
//  Created by COTEMIG on 02/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
    
            Text("Calculadora")
                .font(.title)
                .fontWeight(.bold)

            HStack{
                SwiftUIView(text: "7")
                SwiftUIView(text: "8")
                SwiftUIView(text: "9")
            }
            HStack{
                SwiftUIView(text: "4")
                SwiftUIView(text: "5")
                SwiftUIView(text: "6")
            }
            HStack{
                SwiftUIView(text: "1")
                SwiftUIView(text: "2")
                SwiftUIView(text: "3")
            }
            HStack{
                SwiftUIView(text: "0")
                    .frame(width: 100)

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
