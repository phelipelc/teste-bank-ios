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
    var worker: LoginWorkerProtocol?
    
    func doLogin(user: String, password: String) {
        if(validateFields(user: user, password: password)){
            
        }
        
    }
    
    func validateFields(user: String, password: String) -> Bool {
        if(!Commons.isValidEmail(stringValue: user)
            || !Commons.validaCPF(cpf: user)) {
            return false
        }
        
        if(!Commons.isValidPassword(password: password)) {
           return false
        }
        return true
    }
    
}
