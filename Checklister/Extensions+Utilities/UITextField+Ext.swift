//
//  UITextField+Ext.swift
//  Checklister
//
//  Created by Eimantas Klimas on 2021-11-20.
//

import UIKit

extension UITextField {
    func setTextPadding(left: CGFloat, right: CGFloat) {
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: self.frame.size.height))
        let rightPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: self.frame.size.height))
    }
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
