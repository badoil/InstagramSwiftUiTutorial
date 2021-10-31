//
//  Extensions.swift
//  InstagramSwiftUiTutorial
//
//  Created by 장준호 on 2021/10/31.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
 }
