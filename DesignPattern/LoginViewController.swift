//
//  LoginViewController.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 11/12/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
        passwordField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
    }
    
    @objc private func validateFields() {
        loginButton.isEnabled = emailField.text != "" && passwordField.text != ""
    }
    
    @IBAction func loginBtnClicked(_ sender: UIButton) {
        NetworkService.shared.login(email: emailField.text!, password: passwordField.text!){ success in
            if success {
                self.gotoHomePage()
            } else {
                print("Invalid credential")
            }
        }
    }
    
    private func gotoHomePage() {
        let controller = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
        as! HomeViewController
        present(controller, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
