//
//  ContentView.swift
//  MemorizeGame
//
//  Created by 丁海能 on 2020/6/11.
//  Copyright © 2020 丁海能. All rights reserved.
//

/*
 View - MVVM 视图
 */

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
       NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<viewModel.cards.count ){ _ in
                    HStack{
                        ForEach(self.viewModel.cards) { card in
                            
                            CardView(card: card)
                                .onTapGesture {self.viewModel.choose(card: card)}
                        }
                    }
                    .padding()
                    .foregroundColor(Color.orange)
                    .font(Font.largeTitle)
                }
            }.navigationBarTitle(Text("MVVM 示例"),displayMode: .inline)
        } 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
