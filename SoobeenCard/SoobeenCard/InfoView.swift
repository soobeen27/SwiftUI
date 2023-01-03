//
//  InfoView.swift
//  SoobeenCard
//
//  Created by Soo Jang on 2023/01/03.
//

import SwiftUI


struct InfoView: View {
    
    let text: String
    let imageName: String

    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
            .overlay(HStack{
                Image(systemName: imageName).foregroundColor(.green)
                Text(text).foregroundColor(.black)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
