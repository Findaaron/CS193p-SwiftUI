//
//  CardView.swift
//  MemorizeGame
//
//  Created by 丁海能 on 2020/6/12.
//  Copyright © 2020 丁海能. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack{
            if card.isFaceUp {
                ZStack{
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.green.opacity(0.1))
                    RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                }
                .frame(width: UIScreen.main.bounds.width / 6 - 20, height: UIScreen.main.bounds.height / 12 - 20)
                Text(card.content)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(id: 0, content: "🥝"))
    }
}
