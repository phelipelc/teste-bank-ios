//
//  LoginModels.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/12/20.
//  Copyright © 2020 Lopes. All rights reserved.
//
import Foundation
class UserResponse: Codable {
    
    var userAccount: User?
    enum CodingKeys: String, CodingKey {
        case userAccount
    }
}

class UserRequest: Codable {
    var user = String.empty
    var password = String.empty
    
    enum CodingKeys: String, CodingKey {
        case user, password
    }
}

class User: Codable {
    var userId: Int = 0
    var name = String.empty
    var account = String.empty
    var agency = String.empty
    var balance: Int = 0
    //  "error": {}
    enum CodingKeys: String, CodingKey {
        case userId, name, account = "bankAccount", agency, balance
    }
}
enum CreateUser {
    struct Request {
        var user: UserRequest?
    }
    struct Response {
        var user = UserResponse()
    }
    struct ViewModel {
        
    }
}
