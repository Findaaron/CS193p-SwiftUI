//
//  Cardify.swift
//  MemorizeGame
//
//  Created by Findaaron on 2020/6/28.
//  Copyright © 2020 FIndaaron. All rights reserved.
//

import SwiftUI

struct Cardify: ViewModifier {
    
    private let cornerRadius: CGFloat = 10.0
    
    private let edgeLineWidth: CGFloat = 3
    
    var isFaceUp:Bool
    
    func body(content: Content) -> some View {
        ZStack{
            if isFaceUp {
                  RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                  RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: 3)
                  content
            } else {
                
                  RoundedRectangle(cornerRadius: cornerRadius).fill()
            }
        }
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
