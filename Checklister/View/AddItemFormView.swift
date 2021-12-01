//
//  AddItemView.swift
//  Checklister
//
//  Created by Eimantas Klimas on 2021-11-26.
//

import UIKit


protocol AddItemFormViewDelegate {
    func save()
}

class AddItemFormView: UIView {
    var delegate: AddItemFormViewDelegate?
    
    lazy var formView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 15
        stack.alignment = .fill
        stack.distribution = .fillProportionally
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .purple
        
        
        return stack
    }()
    
    let itemNameInput = UITextField()
    let addItemButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureForm()
        configureFormElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureForm() {        
        addSubview(formView)
    }
    func configureFormElements() {
//        formView.addArrangedSubview(itemNameInput)
//        formView.addArrangedSubview(addItemButton)
//
//        itemNameInput.translatesAutoresizingMaskIntoConstraints = false
//        addItemButton.translatesAutoresizingMaskIntoConstraints = false
//
//        itemNameInput.backgroundColor = #colorLiteral(red: 0, green: 0.6811013818, blue: 0.6550846696, alpha: 1)
//        itemNameInput.attributedPlaceholder = NSAttributedString(
//            string: Constants.placeholder.itemName,
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
//        )
//        itemNameInput.textColor = .white
//        itemNameInput.textAlignment = .center
//
//        addItemButton.backgroundColor =  #colorLiteral(red: 0, green: 0.6811013818, blue: 0.6550846696, alpha: 1)
    }
}
