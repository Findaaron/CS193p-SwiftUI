//
//  EmojiMemoryGame.swift
//  MemorizeGame
//
//  Created by 丁海能 on 2020/6/11.
//  Copyright © 2020 丁海能. All rights reserved.
//

/*
 ViewModel - MVVM 视图模型, 使用 class 类型
 */

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🍏","🐳","🥝"]
        return MemoryGame<String>(numberOfPairsOfCards:emojis.count){ pairIndex in
            return emojis[pairIndex]
        }
        
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
//        objectWillChange.send() // 或使用 @Published
        model.choose(card: card)
    }
}
 
