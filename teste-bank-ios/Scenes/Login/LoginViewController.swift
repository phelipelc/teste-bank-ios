//
//  ViewController.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/10/20.
//  Copyright © 2020 Lopes. All rights reserved.
//

import UIKit
import DTTextField
protocol LoginViewProtocol {
    func showTextFieldError(textField: DTTextField)
}

class LoginViewController: UIViewController {
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtPassword: DTTextField!
    @IBOutlet weak var txtUser: DTTextField!
    
    var router: LoginRouterProtocol?
    var interactor: LoginInteractorProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        addTarget()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func addTarget(){
        btnLogin.addTarget(self, action: #selector(doLogin), for: .touchUpInside)
    }
    @objc func doLogin() {
        if(txtUser.text!.isEmpty) {
            showTextFieldError(textField: txtUser)
            return
        }
        if(txtPassword.text!.isEmpty) {
            showTextFieldError(textField: txtPassword)
            return
        }
         interactor?.doLogin(user: txtUser.text!, password: txtPassword.text!)
    }
    
    func showTextFieldError(textField: DTTextField) {
        textField.showError(message: "\(textField.placeholder) invalido")
    }
    
    func setupLayout() {
        let logo = CustomLogo()
        logo.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(logo)
        
        logo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 56).isActive = true
        logo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
       
    }


}

