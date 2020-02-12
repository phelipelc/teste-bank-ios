//
//  LoginConfigurator.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/10/20.
//  Copyright © 2020 Lopes. All rights reserved.
//

import Foundation
import UIKit

struct LoginConfigurator {
    static var shared = LoginConfigurator()
    
    func configure(controller: UIViewController) {
        let viewController = controller as! LoginViewController
        viewController.router = LoginRouter()
        
        let interactor = LoginInteractor()
        viewController.interactor = interactor
        
        let presenter = LoginPresenter()
        interactor.presenter = presenter
        presenter.view = viewController
        
        
    }
    
}
