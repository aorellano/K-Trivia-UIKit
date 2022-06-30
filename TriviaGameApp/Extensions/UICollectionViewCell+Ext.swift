//
//  UICollectionViewCell+Ext.swift
//  TriviaGameApp
//
//  Created by Alexis Orellano on 6/29/22.
//

import Foundation
import UIKit

extension UICollectionViewCell {
    static var cellId: String {
        String(describing: self)
    }
    
    func removeViews() {
        contentView.subviews.forEach { $0.removeFromSuperview() }
    }
}
