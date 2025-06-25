//
//  BundleExtension.swift
//  oSwiftExtensions
//
//  Created by Douglas Gomes on 25/06/25.
//

import Foundation

extension Bundle {
    var appVersion : String {
        var version : String = .EMPTY
        
        if let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            version += appVersion
        }
        
        if let buildVersion = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            version += ".\(buildVersion)"
        }
        
        return version
    }
}
