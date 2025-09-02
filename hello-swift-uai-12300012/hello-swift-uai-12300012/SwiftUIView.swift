//
//  SwiftUIView.swift
//  hello-swift-uai-12300012
//
//  Created by COTEMIG on 02/09/25.
//

import SwiftUI

struct SwiftUIView: View {
    let text: String
    var body: some View {
        HStack{
            Text(text)
                .font(.largeTitle)
                .foregroundColor(.white)

        }
        .padding(20)
        .background(.gray)
        .cornerRadius(5)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(text: "0")
    }
}
