//
//  Apply.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

protocol Apply {}

extension Apply {
    func apply(closure: (Self) -> ()) -> Void {
        closure(&self)
    }
}
