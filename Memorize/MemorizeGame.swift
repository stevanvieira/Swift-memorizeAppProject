//
//  MemorizeGame.swift
//  Memorize
//
//  Created by stevan on 09/12/2023.
//

import Foundation //import SwiftUI in ModelView and View
//import Foundation because the Model is for the logic
struct MemoryGame<CardContent> {//We are using a Generic data type which we
    //name it <CardContent> to let the View decide which Data will be used
    //on the content. We already know that the emojis are String, but we are
    //practicing Generic Data Type
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
