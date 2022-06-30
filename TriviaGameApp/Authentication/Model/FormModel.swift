//
//  FormModel.swift
//  TriviaGameApp
//
//  Created by Alexis Orellano on 6/29/22.
//

import Foundation
import UIKit

enum FormField: String, CaseIterable {
    case username
    case email
    case password
    case profilePic
    case submit
}
protocol FormItem {
    var id: UUID { get }
    var formId: FormField { get }
}

protocol FormSetionItem {
    var id: UUID { get }
    var items: [FormComponent] { get }
    init(items: [FormComponent])
}

final class FormSectionComponent: FormSetionItem, Hashable {
    var id: UUID = UUID()
    var items: [FormComponent]
    
    init(items: [FormComponent]) {
        self.items = items
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: FormSectionComponent, rhs: FormSectionComponent) -> Bool {
        lhs.id == rhs.id
    }
}

class FormComponent: FormItem, Hashable {
    var id: UUID = UUID()
    let formId: FormField
    var value: Any?
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: FormComponent, rhs: FormComponent) -> Bool {
        lhs.id == rhs.id
    }
    
    init(_ id: FormField) {
        self.formId = id
    }
    
}

final class TextFormComponent: FormComponent {
    let placeholder: String
    let keyboardType: UIKeyboardType
    
    init(id: FormField, placeholder: String, keyboardType: UIKeyboardType = .default) {
        self.placeholder = placeholder
        self.keyboardType = keyboardType
        super.init(id)
    }
}

final class PictureFormComponent: FormComponent {
    let profilePic: String
    init(id: FormField, profilePic: String) {
        self.profilePic = profilePic
        super.init(id)
    }
}

final class ButtonFormItem: FormComponent {
    let title: String
    init(id: FormField, title: String) {
        self.title = title
        super.init(id)
    }
}
