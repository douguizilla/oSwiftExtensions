//
//  oSwiftExtensions.swift
//  oSwiftExtensions
//
//  Created by Douglas Gomes on 25/06/25.
//

import Foundation

extension Optional {
    func ifNil(otherwise: () -> Wrapped) -> Wrapped {
        guard let value = self else {
            return otherwise()
        }
        return value
    }
}
