//
//  Youtube.swift
//  swift-youtube-12300012
//
//  Created by COTEMIG on 02/09/25.
//

import SwiftUI

struct Youtube: View {
    let text: String
    let image: String
    var body: some View {
        
        
        HStack{
            Image("Image")
                .resizable()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
            Text(text)
                .padding(50)
                .font(.largeTitle)
                .foregroundColor(.black)
            
    
        }
        .padding(20)
        .cornerRadius(5)
        
    }
}

struct Youtube_Previews: PreviewProvider {
    static var previews: some View {
        Youtube(text: "Youtube", image: "Image")
    }
}
