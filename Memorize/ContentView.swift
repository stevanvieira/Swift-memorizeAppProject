//
//  ContentView.swift
//  Memorize
//
//  Created by stevan on 07/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack { //Vertical Stack Function that returns a Tuple of views. This function accpets arguments. VStack()
            Image(systemName: "globe")//Image struct that behaves like a view
                .imageScale(.large) //imageScale Function, that is being called on the Image struct
                .foregroundColor(.blue) //foregroundColor Function, that is being called on the Image struct
            Text("Hello, Stevan!")//Text struct that behaves like a view
            HStack { //Horizantal Stack Function
                Text("Left")
                Text("Right")
            }
        }
        .padding() //padding Function
        .font(.largeTitle) //font Function
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
