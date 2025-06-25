//
//  oSwiftExtensions.swift
//  oSwiftExtensions
//
//  Created by Douglas Gomes on 25/06/25.
//

import Foundation

extension Optional {
    func ifNil(_ otherwise: () -> Wrapped) -> Wrapped {
        guard let value = self else {
            return otherwise()
        }
        return value
    }
    
    func ifNotNil<T>(_ closure: ((Wrapped) -> T?)) -> T? {
        guard let v = self else { return nil }
        return closure(v)
    }
    
    func `let`(do: (Wrapped)->()){
        guard let value = self else { return }
        `do`(value)
    }
    
    var isNil: Bool {
        return self == nil
    }
    
    var isNotNil: Bool {
        return self != nil
    }
}
