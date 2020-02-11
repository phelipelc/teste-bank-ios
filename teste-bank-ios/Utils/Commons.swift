//
//  Commons.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/11/20.
//  Copyright © 2020 Lopes. All rights reserved.
//

import Foundation


class Commons {
static func isValidEmail(stringValue: String) ->Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: stringValue)
    }
    static func validaCPF(cpf : String) -> Bool{
        
        let cpfA = cpf
        var dig1: Int = 0
        var dig2 : Int = 0
        let newCpf = cpfA.replacingOccurrences(of: ".", with: "")
        let cpf = newCpf.replacingOccurrences(of: "-", with: "")
        var cpfIsValid = false
        
        let itens = [Character] (cpf.characters)
        
        
        if(cpf.characters.count != 11){
            
            print("Digite corretamente o cpf")
            
        }else if(
            cpf == "00000000000" ||
                cpf == "11111111111" ||
                cpf == "22222222222" ||
                cpf == "33333333333" ||
                cpf == "44444444444" ||
                cpf == "55555555555" ||
                cpf == "66666666666" ||
                cpf == "77777777777" ||
                cpf == "88888888888" ||
                cpf == "99999999999"){
        }else{
            
            let (dv1, dv2) = (Int(String(itens[9]))!,Int(String(itens[10]))!)
            
            print(dv1)
            print(dv2)
            
            for posicao in 0 ..< 9 {
                
                let numero = (Int(String(itens[posicao])))!
                dig1 += ((posicao + 1) * numero)
                dig2 += (posicao * numero)
                
            }
            dig1 %= 11
            dig1 = (dig1 > 9) ? 0 : dig1
            
            
            dig2 += (dig1 * 9)
            dig2 %= 11
            dig2 = (dig2 > 9) ? 0 : dig2
            
            cpfIsValid = (dig1 == dv1 && dig2 == dv2) ? true : false
            
        }
        
        return cpfIsValid
        
    }
    static func isValidPassword(password:String) -> Bool {
            
            let regex = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$&*])")
            return regex.evaluate(with: password)
        }
}
