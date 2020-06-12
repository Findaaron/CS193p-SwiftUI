//
//  MemoryGame.swift
//  MemorizeGame
//
//  Created by 丁海能 on 2020/6/11.
//  Copyright © 2020 丁海能. All rights reserved.
//
/*
 Model - MVVM 数据模型
 */

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    mutating func choose(card: Card) {
        print("card choosen: \(card)")
        let chosenIndex: Int = self.index(of: card)
        self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
        
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<self.cards.count {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return 0 // TODO: bogus!
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int)-> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
             let content = cardContentFactory(pairIndex)
            cards.append(Card(id:pairIndex*2, content: content))
            cards.append(Card(id:pairIndex*2+1, content: content))
        }
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
