//
//  TableViewController.swift
//  Checklister
//
//  Created by Eimantas Klimas on 2021-11-17.
//

import UIKit

class MainViewController: UIViewController {
    
    let tableView = MainTableView(frame: CGRect.zero, style: .plain)
    let addItemController = AddItemVC()
    
    var checkData: [String] = ["TEST","TEST2","TEST3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureTab()
    }
    
    @objc private func goToAddView() {
        navigationController?.pushViewController(addItemController, animated: true)
    }
    
    private func configureView() {
        self.view = tableView
        tableView.rowHeight = 100
        tableView.register(CheckCell.self, forCellReuseIdentifier: "CheckCell")
        setDelegates()
    }
    
    private func configureTab() {
        let barButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(goToAddView))
        barButton.tintColor = .white
        navigationItem.setRightBarButton(barButton, animated: true)
    }
    
    private func setDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
        
}

//MARK: - Delegate
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checkData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckCell") as! CheckCell
        cell.set(text: checkData[indexPath.row])
        
        return cell
    }
        
}
