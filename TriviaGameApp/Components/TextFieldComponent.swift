//
//  TextFieldComponent.swift
//  TriviaGameApp
//
//  Created by Alexis Orellano on 6/29/22.
//

import UIKit

class TextFieldComponent: UITextField {
    let bgColor: UIColor = .white
    let textFieldStyle: UITextField.BorderStyle = .roundedRect
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }
    
    func setupTextField() {
        self.delegate = self
        self.backgroundColor = bgColor
        self.borderStyle = textFieldStyle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TextFieldComponent: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.endEditing(true)
        return false
    }
}


