//
//  EncodableExtension.swift
//  oSwiftExtensions
//
//  Created by Douglas Gomes on 25/06/25.
//
import Foundation

extension Encodable {
    var asParameters : Parameters {
        var attributes: Parameters = [:]
        let mirror = Mirror(reflecting: self)
        for child in mirror.children {
            guard let label = child.label else { continue }
            attributes[label] = child.value
        }
        return attributes
    }
    
    func asData() -> Data {
        do{
            return try JSONEncoder().encode(self)
        }catch{
            return Data()
        }
    }
}
