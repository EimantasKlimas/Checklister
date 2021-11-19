//
//  NavigationController.swift
//  Checklister
//
//  Created by Eimantas Klimas on 2021-11-17.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barStyle = .black
        navigationBar.isTranslucent = false
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
