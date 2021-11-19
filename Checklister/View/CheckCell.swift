//
//  CheckCell.swift
//  Checklister
//
//  Created by Eimantas Klimas on 2021-11-18.
//

import UIKit

class CheckCell: UITableViewCell {
    
    let title = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
        configureTitle()
        setLabelConstraints()
    }
         
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(text: String) {
        title.text = text
    }
    
    private func configureCell() {
        self.addSubview(title)
        self.backgroundColor = .clear
        
        let selectedView = UIView()
        selectedView.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        self.selectedBackgroundView = selectedView
        
    }
    
    private func configureTitle()  {
        title.numberOfLines = 0
        title.adjustsFontSizeToFitWidth = true
        title.textColor = .white

    }
    
    private func setLabelConstraints() {
        title.translatesAutoresizingMaskIntoConstraints = false
        title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        title.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        title.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }

}
