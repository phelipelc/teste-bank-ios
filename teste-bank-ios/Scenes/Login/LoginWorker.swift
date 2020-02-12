//
//  LoginWorker.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/11/20.
//  Copyright © 2020 Lopes. All rights reserved.
//

import Foundation
import Alamofire

class LoginWorker {
    func requestLogin(request: CreateUser.Request, completion: @escaping(CreateUser.Response) -> Void) {
        Api().postUser(request:  request) { (response) in
            completion(response)
        }
        
    }
    
}
