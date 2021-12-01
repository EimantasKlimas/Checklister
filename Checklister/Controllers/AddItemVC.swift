//
//  AddItemVC.swift
//  Checklister
//
//  Created by Eimantas Klimas on 2021-11-18.
//

import UIKit

class AddItemVC: UIViewController {
    
    let formView = AddItemFormView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureFormView()
        configureNavigation()
    }
    
    func configureFormView() {
        view.backgroundColor = .systemMint
        view.addSubview(formView)
        formView.translatesAutoresizingMaskIntoConstraints = false
        formView.backgroundColor = .purple
        formView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        formView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        formView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        formView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
                
    }
    
    func configureNavigation() {
        let barButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(goBack))
        barButton.tintColor = .white
        navigationItem.setLeftBarButton(barButton, animated: true)
    }
    
   @objc func goBack() {
       navigationController?.popViewController(animated: true)
    }

}

//MARK: - Delegate

extension AddItemVC: AddItemFormViewDelegate {
    func save() {
        print("click")
    }
}
