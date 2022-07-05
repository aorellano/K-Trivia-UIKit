//
//  RegisterController.swift
//  TriviaGameApp
//
//  Created by Alexis Orellano on 6/30/22.
//

import UIKit

class RegisterController: UIViewController {
    let registerView = RegisterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func loadView() {
        view = registerView
    }
}
