//
//  AddItemVC.swift
//  Checklister
//
//  Created by Eimantas Klimas on 2021-11-18.
//

import UIKit

class AddItemVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
        let barButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(back))
        barButton.tintColor = .white
        navigationItem.setLeftBarButton(barButton, animated: true)
    }
    
   @objc func back() {
       navigationController?.popViewController(animated: true)
    }

}
