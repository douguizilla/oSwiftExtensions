//
//  SequenceExtension.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

import Foundation

extension Sequence {
    func groupedBy<Key: Hashable>(keyForValue: (Element) -> Key) -> Dictionary {
        let groupedDictionary = self.reduce(into: [Key: [Element]]()) { dictionary, element in
            let key = keyForValue(element)
            dictionary[key, default: []].append(element)
        }
        return groupedDictionary
    }
}
