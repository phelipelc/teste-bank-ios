//
//  Api.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/12/20.
//  Copyright © 2020 Lopes. All rights reserved.
//

import Foundation
import Alamofire

class Api {
    func postUser(request: CreateUser.Request, completion: @escaping(CreateUser.Response)-> Void) {
        let encoder = JSONEncoder()
        let jsonData = try! encoder.encode(request.user)
        
        var request = URLRequest(url: URL(string: EndpointBank.PostLogin().url)!)
        request.httpMethod = EndpointBank.PostLogin().method.rawValue
        request.httpBody = jsonData
        request.setValue("application/x-www-form-urlenconded", forHTTPHeaderField: "Content-Type")
        
        
        Alamofire.request(request).responseJSON { response in
            switch response.result {
                case .success:
                    guard let jsonData = response.data, let user = try? JSONDecoder().decode(UserResponse.self, from: jsonData) else {
                        fallthrough
                    }
                    completion(CreateUser.Response(user: user))
            case .failure:
                break
                }
            }
        }
    }

