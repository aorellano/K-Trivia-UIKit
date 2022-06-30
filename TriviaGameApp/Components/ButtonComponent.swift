//
//  ButtonComponent.swift
//  TriviaGameApp
//
//  Created by Alexis Orellano on 6/29/22.
//

import UIKit

class ButtonComponent: UIButton {
    var cornerRadius: CGFloat = 10
    var shadowColor: CGColor = UIColor.black.cgColor
    var shadowOffset = CGSize(width: 0.0, height: 4.0)
    var shadowRadius: CGFloat = 4
    var shadowOpacity: Float = 0.5
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    func setupButton() {
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowColor = shadowColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = shadowOpacity
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
