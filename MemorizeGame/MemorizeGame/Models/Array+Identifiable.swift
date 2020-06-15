//
//  Array+Identifiable.swift
//  MemorizeGame
//
//  Created by 丁海能 on 2020/6/15.
//  Copyright © 2020 丁海能. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
           for index in 0..<self.count {
               if self[index].id == matching.id {
                   return index
               }
           }
           
           return nil
       }
}
