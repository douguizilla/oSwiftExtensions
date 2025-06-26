//
//  oDecodeable.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

protocol oDecodeable : Decodable {
    init()
}

extension oDecodeable {
    init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
        for child in Mirror(reflecting: self).children {
            guard let decodableKey = child.value as? DecodableKey else { continue }
            try decodableKey.decodeValue(from: &container)
        }
    }
}
