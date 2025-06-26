//
//  DecoableKey.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

protocol DecodableKey {
    typealias DecodeContainer = KeyedDecodingContainer<DynamicCodingKeys>
    func decodeValue(from container: DecodeContainer) throws
}


