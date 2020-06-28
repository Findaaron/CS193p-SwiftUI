//
//  CardView.swift
//  MemorizeGame
//
//  Created by Findaaron on 2020/6/12.
//  Copyright © 2020 Findaaron. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
    
    @ViewBuilder
    private func body(for size: CGSize) -> some View {
            if card.isFaceUp || !card.isMatched {
                ZStack{
                    Pie(startAngle: Angle.degrees(0-90), endAngle: Angle.degrees(110-90), clockwise: true).padding(5).opacity(0.4)
                    Text(card.content).font(Font.system(size: fontSize(for: size)))
                }.cardify(isFaceUp: card.isFaceUp)
            }
        }
    
    
    // MARK: - Drawing Constants
    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height)*0.7
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(id: 0, content: "🥝"))
    }
}
