//
//  ContentView.swift
//  SoobeenCard
//
//  Created by Soo Jang on 2023/01/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.75, green: 0.55, blue: 0.42, alpha: 1.00))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("soobeen")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color(.white), lineWidth: 5)
                    )
                Text("Soobeen Jang")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+82 10 4050 1521", imageName: "phone.fill")
                InfoView(text: "youdew27@icloud.com", imageName: "envelope.fill")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
