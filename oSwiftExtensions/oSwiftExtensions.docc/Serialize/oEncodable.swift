//
//  oEncodable.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

protocol oEncodable: Encodable {}

extension oEncodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DynamicCodingKeys.self)
        for child in Mirror(reflecting: self).children {
            guard let encodableKey = child.value as? encodableKey else { continue }
            try encodableKey.encodeValue(from: &container)
        }
    }
}

