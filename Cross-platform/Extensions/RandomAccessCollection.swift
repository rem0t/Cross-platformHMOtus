//
//  RandomAccessCollection.swift
//  Cross-platform
//
//  Created by Влад Калаев on 04.04.2021.
//

import Foundation

extension RandomAccessCollection where Self.Element: Identifiable {
    
    func isLast(_ item: Element) -> Bool {
        guard isEmpty == false else {
            return false
        }
        guard let itemIndex = lastIndex(where: { AnyHashable($0.id) == AnyHashable(item.id) }) else {
            return false
        }
        return distance(from: itemIndex, to: endIndex) == 1
    }
}
