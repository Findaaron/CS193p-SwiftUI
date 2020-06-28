//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Findaaron on 2020/6/11.
//  Copyright © 2020 Findaaron. All rights reserved.
//

/*
 View - MVVM 视图
 */

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {

        Grid(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)    
            }.padding(5)
            }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
