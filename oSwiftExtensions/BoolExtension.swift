//
//  BoolExtension.swift
//  oSwiftExtensions
//
//  Created by Douglas Gomes on 25/06/25.
//

extension Optional where Wrapped == Bool {
    var orFalse: Bool {
        self ?? false
    }
    
    var orTrue: Bool {
        self ?? true
    }
    
    var isNilOrFalse: Bool {
        self.isNil || self == false
    }
    
    var isNilOrTrue: Bool {
        self.isNil || self == true
    }
}
