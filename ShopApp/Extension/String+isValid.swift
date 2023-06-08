//
//  String.swift
//  ShopApp
//
//  Created by Dmitryi Velko on 08.06.2023.
//

import Foundation

extension String {
    
    func isValidEmail() -> Bool {
        let regex = try! NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}",
                                             options: .caseInsensitive)
        
        return regex.firstMatch(in: self, range: NSRange(location: 0, length: count)) != nil
    }
    
    func isValidPassword(_ password: String) -> Bool {
        let passwordRegex = NSPredicate(format: "SELF MATCHES %@",
                                        "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$")
        return passwordRegex.evaluate(with: password)
    }
    
}
