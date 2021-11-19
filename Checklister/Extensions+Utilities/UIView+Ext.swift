//
//  UIView+Ext.swift
//  Checklister
//
//  Created by Eimantas Klimas on 2021-11-18.
//

import UIKit

extension UIView {
    func pin(to superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview.rightAnchor).isActive = true
    }
}
