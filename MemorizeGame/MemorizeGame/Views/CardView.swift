//
//  CardView.swift
//  MemorizeGame
//
//  Created by 丁海能 on 2020/6/12.
//  Copyright © 2020 丁海能. All rights reserved.
//

/*
 简洁代码:使代码结构更清晰
 */

import SwiftUI

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    let cornerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
    
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        ZStack{
            if card.isFaceUp {
                  RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                  RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: 3)
                  Text(card.content)
            } else {
                if !card.isMatched {
                  RoundedRectangle(cornerRadius: cornerRadius).fill()
                }
            }
        }.font(Font.system(size: fontSize(for: size)))
    }
    
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height)*0.7
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(id: 0, content: "🥝"))
    }
}
