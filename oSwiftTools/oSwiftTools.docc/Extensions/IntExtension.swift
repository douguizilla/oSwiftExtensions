//
//  IntExtension.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

extension Optional where Wrapped == Int {
    var orZero: Int {
        self ?? 0
    }
}


