//
//  URLRequestExtension.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//
import Foundation

extension URLRequest {
    mutating func addAllHeaders(_ headers: Headers) -> Void {
        for (key, value) in headers {
            self.addValue(value, forHTTPHeaderField: key)
        }
    }
}


