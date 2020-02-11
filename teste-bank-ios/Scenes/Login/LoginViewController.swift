//
//  ViewController.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/10/20.
//  Copyright © 2020 Lopes. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var router: LoginRouterProtocol?
    var interactor: LoginInteractorProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupLayout() {
        let logo = CustomLogo()
        logo.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(logo)
        
        logo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 56).isActive = true
        logo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
       
    }


}

