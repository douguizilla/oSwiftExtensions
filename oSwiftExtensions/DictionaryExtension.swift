//
//  DictionaryExtension.swift
//  oSwiftExtensions
//
//  Created by Douglas Gomes on 25/06/25.
//

import Foundation

extension Dictionary {
    func compactMapKeys<T>(_ transform: (Key) throws -> T?) rethrows -> [T: Value] {
        var result: [T: Value] = [:]
        for (key, value) in self {
            if let newKey = try transform(key) {
                result[newKey] = value
            }
        }
        return result
    }
    
    func printAll(){
        if self.isEmpty {
            print("Dictionary \(self.description) is empty")
        }else{
            self.forEach { (key, value) in
                print(key, value)
            }
        }
    }
}
