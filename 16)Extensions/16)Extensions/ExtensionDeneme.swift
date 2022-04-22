//
//  ExtensionDeneme.swift
//  16)Extensions
//
//  Created by Muhammed Selimhan gülsever on 22.04.2022.
//

import Foundation
import UIKit

//extensionlar her yerden erişilebilir.
let s = 10.kareExtension()

//burada bir string extension oluşturup ViewControllerde kullanalım
//örnek 2: string değer içindeki fazlalık boşlukları silme
extension String {
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespaces)
    }
    
}
