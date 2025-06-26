//
//  ViewExtension.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

import SwiftUI

extension View {
    func generateQRCode(to value: String) -> UIImage? {
        let context = CIContext()
        let filter = CIFilter.qrCodeGenerator()
        
        filter.message = Data(value.utf8)
        
        guard let outputImage = filter.outputImage,
              let cgimg = context.createCGImage(
                outputImage,
                from: outputImage.extent
        )else {
            return nil
        }
        
        return UIImage(cgImage: cgimg)
    }
}
