//
//  DynamicCodingKeys.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

import Foundation

struct DynamicCodingKeys: CodingKey {
    var stringValue: String
    var intValue: Int?
    
    init(key: String){
        self.stringValue = key
    }
    init?(stringValue: String){
        self.stringValue = stringValue
    }
    init?(intValue: Int){
        self.intValue = intValue
        self.stringValue = String(intValue)
    }
}
