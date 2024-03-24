//
//  MemorizeGame.swift
//  MemorizeApp
//
//  Created by Umair Salam on 3/24/24.
//


//Model
import Foundation
struct MemoryGame<CardContent> {
    
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        // add numberOfPairsOfCards x 2
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content: CardContent = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
            
        }
    }
    
    func choose(_ card: Card) {
        
    }

    mutating func shuffle() {
        cards.shuffle()
        //print(cards)
    }
    
    struct Card {
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
    }
    
    
}
