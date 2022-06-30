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
    }
        
    override func loadView() {
        super.loadView()
        view = loginView
        title = "Login"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

