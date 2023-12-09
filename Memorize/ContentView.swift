//
//  ContentView.swift
//  Memorize
//
//  Created by stevan on 07/12/2023.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🎃","🕷","😈", "💀", "🕸", "🧙‍♀️", "🙀", "👹", "😱", "☠️", "🍭"] //Array of emojis
    @State var cardCount: Int = 4
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<cardCount, id: \.self) { index in
                    CardView(content: emojis[index])
                }
            }
            HStack {
                Button("Remove") {
                    cardCount -= 1
                }
                Button("Add") {
                    cardCount += 1
                }
            }
        }
        .padding() //padding Function called on ZStack
        .foregroundColor(.orange) //Function called on ZStack
    }
}

struct CardView: View {
    let content: String //New argument for CardView
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 12)
            }
        }).onTapGesture {
            isFaceUp.toggle() //The variable isFaceUp can't be changed
            //unless you put a pointer @State on it.
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Commented Code:

//###############################################
//###############################################
//        VStack { //Vertical Stack Function that returns a Tuple of views. This function accpets arguments. VStack()
//            Image(systemName: "globe")//Image struct that behaves like a view
//                .imageScale(.large) //imageScale Function, that is being called on the Image struct
//                .foregroundColor(.blue) //foregroundColor Function, that is being called on the Image struct
//            Text("Hello, Stevan Vieira!")//Text struct that behaves like a view
//            HStack { //Horizantal Stack Function
//                Text("Left")
//                Text("Right")
//            }
//        }

//###############################################
//###############################################

