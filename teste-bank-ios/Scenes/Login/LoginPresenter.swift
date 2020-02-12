//
//  LoginPresenter.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/10/20.
//  Copyright © 2020 Lopes. All rights reserved.
//

import Foundation
protocol LoginPresenterProtocol {
    func loginSucess()
    func loginFailure(textField: TextFieldType)}

class LoginPresenter: LoginPresenterProtocol {
    var view: LoginViewProtocol?
    func loginSucess() {
        view?.OnSucess()
    }
    func loginFailure(textField: TextFieldType) {
        view?.getFieldError(txtType: textField)
    }
}
