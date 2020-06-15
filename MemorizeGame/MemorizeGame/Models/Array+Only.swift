//
//  Array+Only.swift
//  MemorizeGame
//
//  Created by 丁海能 on 2020/6/15.
//  Copyright © 2020 丁海能. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
