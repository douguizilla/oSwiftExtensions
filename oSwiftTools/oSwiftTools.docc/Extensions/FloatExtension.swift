//
//  FloatExtension.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//


extension Optional where Wrapped == Float {
    var orZero: Float {
        self ?? 0
    }
}