//
//  DoubleExtension.swift
//  oSwiftExtensions
//
//  Created by Douglas Gomes on 25/06/25.
//

import Foundation

extension Double {
    func toCurrency(locale: Locale = .current) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.roundingMode = .floor
        formatter.locale = locale
        return formatter.string(from: self as NSNumber)!
    }
}

extension Optional where Wrapped == Double {
    var orZero: Double {
        self ?? 0
    }
}
