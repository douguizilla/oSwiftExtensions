//
//  EncodableKey.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

protocol EncodableKey {
    typealias EncodeContainer = KeyedEncodingContainer<DynamicCodingKeys>
    func encodeValue(from container: inout EncodeContainer)
}



