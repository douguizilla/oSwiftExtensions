//
//  StringExtension.swift
//  oSwiftExtensions
//
//  Created by Douglas Gomes on 25/06/25.
//

extension String {
    var orNil : String? {
        self.isEmpty ? nil : self
    }
    
    // MARK: Contants
    
    static let EMPTY = ""
}

extension Optional where Wrapped == String {
    var isNilOrEmpty: Bool {
        self.isNil || (self != nil && self!.isEmpty)
    }
    
    var isNotNilOrEmpty: Bool {
        !isNilOrEmpty
    }
    
    var isNotEmpty: Bool {
        !isNilOrEmpty
    }
    
    var orEmpty: String {
        self ?? .EMPTY
    }
}
