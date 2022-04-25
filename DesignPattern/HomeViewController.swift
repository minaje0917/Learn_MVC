//
//  HomeViewController.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 11/12/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var welcomeLbl: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = NetworkService.shared.getLoggedInUser()
        welcomeUser()
    }

    private func welcomeUser() {
        welcomeLbl.text = "Hello, \(user.firstName) \(user.lastName)"
    }
    
}
