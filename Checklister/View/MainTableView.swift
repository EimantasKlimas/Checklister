//
//  MainTableView.swift
//  Checklister
//
//  Created by Eimantas Klimas on 2021-11-16.
//

import UIKit

final class MainTableView: UITableView {
        
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        configureView()
        constraintViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        self.backgroundColor = .orange
    }
    
    private func constraintViews() {

    }
}
