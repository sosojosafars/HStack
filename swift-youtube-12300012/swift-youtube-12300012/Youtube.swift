//
//  Youtube.swift
//  swift-youtube-12300012
//
//  Created by COTEMIG on 02/09/25.
//

import SwiftUI

struct Youtube: View {
    var headline : String
    var caption:String
    var imageAvatar:String
    var image:String
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Image(image)
                .resizable()
                .scaledToFit()
            HStack{
                Image(imageAvatar)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 100, height: 70)
                VStack(alignment: HorizontalAlignment.leading){
                    Text(headline).font(.headline)
                    Text(caption).font(.caption2)
                }
                
            }
        }
    }
}

struct Youtube_Previews: PreviewProvider {
    static var previews: some View {
            Youtube(headline:"Vídeo", caption: "Legenda",imageAvatar: "3", image:"3")
        }
}
