//
//  ContentView.swift
//  Memorize
//
//  Created by stevan on 07/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
        .padding() //padding Function called on ZStack
        .foregroundColor(.orange) //Function called on ZStack
    }
}

struct CardView: View {
    var isFaceUp: Bool = false //false is a default value
    var body: some View {
        if isFaceUp == true {
            ZStack(content: {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            })
        }
        else {
            RoundedRectangle(cornerRadius: 12)
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

