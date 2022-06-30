//
//  LoginView.swift
//  TriviaGameApp
//
//  Created by Alexis Orellano on 6/28/22.
//

import UIKit

class LoginView: UIView {
    let appIcon = UIImageView()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let loginButton = ButtonComponent()
    let registerButton = ButtonComponent()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackground()
        setupAppIcon()
        setupEmailTextField()
        setupPasswordTextField()
        setupLoginButton()
        setupRegisterButton()
    }
    
    func setupBackground() {
        backgroundColor = UIColor.primaryColor
    }
    
    func setupAppIcon() {
        appIcon.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "icon")
        appIcon.image = image
        appIcon.layer.cornerRadius = 90
        positionAppIcon()
    }
    
    func setupEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.placeholder = "Email"
        emailTextField.borderStyle = .roundedRect
        emailTextField.backgroundColor = .white
        positionEmailTextField()
    }
    
    func setupPasswordTextField() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = .white
        positionPasswordTextField()
    }
    
    func setupLoginButton() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Sign In", for: .normal)
        loginButton.backgroundColor = UIColor.secondaryColor
        positionLoginButton()
    }
    
    func setupRegisterButton() {
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.setTitle("Register", for: .normal)
        registerButton.backgroundColor = UIColor.accentColor
        positionRegisterButton()
    }
    
    func positionAppIcon() {
        addSubview(appIcon)
        NSLayoutConstraint.activate([
            appIcon.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            appIcon.heightAnchor.constraint(equalToConstant: 180),
            appIcon.widthAnchor.constraint(equalToConstant: 180),
            appIcon.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -5)
        ])
    }
    
    func positionEmailTextField() {
        addSubview(emailTextField)
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: appIcon.bottomAnchor, constant: 60),
            emailTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15)
        ])
    }
    
    func positionPasswordTextField() {
        addSubview(passwordTextField)
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            passwordTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor)
        ])
    }
    
    func positionLoginButton() {
        addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func positionRegisterButton() {
        addSubview(registerButton)
        NSLayoutConstraint.activate([
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            registerButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
