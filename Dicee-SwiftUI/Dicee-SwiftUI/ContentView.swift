//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Soo Jang on 2023/01/04.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNum = 1
    @State var rightDiceNum = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNum)
                    DiceView(n: rightDiceNum)
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNum = Int.random(in: 1...6)
                    self.rightDiceNum = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                }
                    .background(Color.red)
                    .padding()
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .padding()
    }
}
