//
//  RegisterView.swift
//  TriviaGameApp
//
//  Created by Alexis Orellano on 7/5/22.
//

import UIKit

class RegisterView: UIView {
    let profilePic = UIImageView()
    let usernameTextField = TextFieldComponent()
    let emailTextField = TextFieldComponent()
    let passwordTextField = TextFieldComponent()
    let registerButton = ButtonComponent()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackground()
        setupProfilePic()
        setupUsernameTextField()
        setupEmailTextField()
        setupPasswordTextField()
        setupRegisterButton()
    }
    
    func setupBackground() {
        backgroundColor = UIColor.primaryColor
    }
    
    func setupProfilePic() {
        profilePic.translatesAutoresizingMaskIntoConstraints = false
        profilePic.image = UIImage(systemName: "person.crop.circle.badge.plus")
        profilePic.tintColor = .white
        positionProfilePic()
    }
    
    func setupUsernameTextField() {
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.placeholder = "Username"
        positionUsernameTextField()
    }
    
    func setupEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.placeholder = "Email"
        positionEmailTextField()
    }
    
    func setupPasswordTextField() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        positionPasswordTextField()
    }
    
    func setupRegisterButton() {
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.setTitle("Register", for: .normal)
        registerButton.backgroundColor = UIColor.accentColor
        positionRegisterButton()
    }
    
    func positionProfilePic() {
        addSubview(profilePic)
        NSLayoutConstraint.activate([
            profilePic.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            profilePic.centerXAnchor.constraint(equalTo: centerXAnchor),
            profilePic.heightAnchor.constraint(equalToConstant: 150),
            profilePic.widthAnchor.constraint(equalToConstant: 160)
        ])
    }
    
    func positionUsernameTextField() {
        addSubview(usernameTextField)
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: profilePic.bottomAnchor, constant: 60),
            usernameTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            usernameTextField.heightAnchor.constraint(equalToConstant: 40),
            usernameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            usernameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15)
        ])
    }
    func positionEmailTextField() {
        addSubview(emailTextField)
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 10),
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
    
    func positionRegisterButton() {
        addSubview(registerButton)
        NSLayoutConstraint.activate([
            registerButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            registerButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
