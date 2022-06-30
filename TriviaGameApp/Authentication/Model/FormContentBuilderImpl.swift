//
//  FormContentBuilderImpl.swift
//  TriviaGameApp
//
//  Created by Alexis Orellano on 6/29/22.
//

import Foundation

final class FormContentBuilderImpl {
    var formContent: [FormSectionComponent] {
        return [
            FormSectionComponent(items: [
                TextFormComponent(id: .email, placeholder: "Email"),
                TextFormComponent(id: .password, placeholder: "Password"),
                TextFormComponent(id: .email, placeholder: "Email"),
                TextFormComponent(id: .password, placeholder: "Password"),
                ButtonFormItem(id: .submit, title: "Sign In")
            ])
        ]
    }
}

//final class RegisterFormBuilderImpl {
//    var content: [FormSectionComponent] {
//        return [
//            FormSectionComponent(items: [
//                PictureFormComponent(profilePic: ""),
//                TextFormComponent(placeHolder: "Username"),
//                TextFormComponent(placeHolder: "Email", keyboardType: .emailAddress),
//                TextFormComponent(placeHolder: "Password"),
//                ButtonFormItem(title: "Sign Up")
//            ])
//        ]
//    }
//}
