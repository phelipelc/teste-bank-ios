//
//  LoginInteractor.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/10/20.
//  Copyright © 2020 Lopes. All rights reserved.
//

import Foundation

protocol LoginInteractorProtocol {
    func doLogin(user: String, password: String)
}

class LoginInteractor: LoginInteractorProtocol  {
    var worker = LoginWorker()
    var presenter: LoginPresenterProtocol?
    func doLogin(user: String, password: String) {
        if(validateFields(user: user, password: password)){
            worker.requestLogin(request: CreateUser.Request(user: CreateUser.UserRequest(user: user , password: password )), completion: { (result) in
                if result.user != nil {
                    self.presenter?.loginSucess()
                }
            })
        }
        
    }
    
    func validateFields(user: String, password: String) -> Bool {
        if(!Commons.isValidEmail(stringValue: user)
            && !Commons.validaCPF(cpf: user)) {
            presenter?.loginFailure(textField: .userField)
            return false
        }
        
        if(!Commons.isValidPassword(password: password)) {
            presenter?.loginFailure(textField: .passwordField)
           return false
        }
        return true
    }
    
}
