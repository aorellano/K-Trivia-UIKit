//
//  ViewController.swift
//  TriviaGameApp
//
//  Created by Alexis Orellano on 6/28/22.
//

import UIKit

class LoginController: UIViewController {
    var loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonTargets()
    }
        
    override func loadView() {
        super.loadView()
        view = loginView
        title = "Login"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension LoginController {
    func setupButtonTargets() {
        loginView.loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        loginView.registerButton.addTarget(self, action: #selector(registerButtonPressed), for: .touchUpInside)
    }
    @objc func loginButtonPressed() {
        print("Trying to Login")
    }
    
    @objc func registerButtonPressed() {
        let vc = RegisterController()
        vc.modalPresentationStyle = .pageSheet
        self.present(vc, animated: true)
    }
}




