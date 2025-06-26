//
//  StringExtension.swift
//  oSwiftExtensions
//
//  Created by Douglas Gomes on 25/06/25.
//

import Foundation

extension String {
    var orNil : String? {
        self.isEmpty ? nil : self
    }
    
    var isNotEmpty: Bool {
        !isEmpty
    }
    
    var filterable : String {
        self.lowercased()
            .folding(
                options: .diacriticInsensitive,
                locale: .current
            )
    }
    
    var asCapitalizedName : String {
        let particles = ["da", "de", "di", "do", "du", "das", "des", "dis", "dos", "dus", "a", "e", "i", "o", "u", "as", "es", "is", "os", "us"]
        let parts = self.split(separator: " ")
        return Array(
            parts.map {
                particles.contains(String($0).lowercased()) ? "\($0)".lowercased() : String($0).capitalized
            }
        ).joined(separator: " ")
    }
    
    // MARK: Date
    
    func toDate(
        format: String = .DATE_ISO_8601_FORMAT,
        timeZone: TimeZone? = nil
    ) -> Date? {
        let formatter = DateFormatter()
        if let timeZone = timeZone {
            formatter.timeZone = timeZone
        }
        formatter.dateFormat = format
        return formatter.date(from: self)
    }
    
    // MARK: Base 64 to String
    
    func base64ToString() -> String {
        guard let decodedData = Data(base64Encoded: self),
              let decodedString = String(data: decodedData, encoding: .utf8),
              decodedString.isNotEmpty
        else {
            return .EMPTY
        }
        return decodedString
    }
    
    // MARK: Contants
    
    static let EMPTY = ""
    static let DATE_ISO_8601_FORMAT: String = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
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
