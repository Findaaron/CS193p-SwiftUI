//
//  Array+Only.swift
//  MemorizeGame
//
//  Created by Findaaron on 2020/6/15.
//  Copyright © 2020 Findaaron. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
