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
            ScrollView {
                cards
            }
            Spacer()
            cardCountAdjusters
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.orange)
    }
    
    var cardCountAdjusters: some View {
        HStack {
            cardRemover
            Spacer()
            cardAdder
        }
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offset
        }, label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    
    var cardRemover: some View {
        cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
    }
    
    var cardAdder: some View {
        cardCountAdjuster(by: +1, symbol: "rectangle.stack.badge.plus.fill")
    }
}

struct CardView: View {
    let content: String //New argument for CardView
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack(content: {
            let base = RoundedRectangle(cornerRadius: 12)
            Group { //if we dont Group, we needed to use .opacity 3xtimes
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
            
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

