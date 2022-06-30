//
//  ProfilePicView.swift
//  TriviaGameApp
//
//  Created by Alexis Orellano on 6/28/22.
//

import UIKit

class ProfilePicView: UIView {
    let profilePic: String?
    
    init(profilePic: String, size: CGFloat, cornerRadius: CGFloat) {
        self.profilePic = profilePic
        super.init(frame: .zero)
        setupColor()
    }
    
    func setupColor() {
        backgroundColor = .blue
    }
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}
