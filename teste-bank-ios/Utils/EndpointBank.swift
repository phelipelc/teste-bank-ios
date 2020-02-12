//
//  EndpointBank.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/12/20.
//  Copyright © 2020 Lopes. All rights reserved.
//
import UIKit
import Alamofire

enum EndpointBank {
    case PostLogin()
    case GetStatements(userId: Int)
    var method: HTTPMethod{
        switch self {
        case .PostLogin:
            return .post
        case .GetStatements:
            return .get

        }
    }
    var url: String {
        switch self {
        case .PostLogin():
            return "\(Constants.bank_URL)login"
        case .GetStatements(let userId):
            return "\(Constants.bank_URL)statements/\(userId)"
        }
    }
}
