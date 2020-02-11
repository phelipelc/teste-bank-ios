//
//  CustomLogo.swift
//  teste-bank-ios
//
//  Created by user150042 on 2/10/20.
//  Copyright © 2020 Lopes. All rights reserved.
//

import Foundation
import UIKit
class CustomLogo: UIView {
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 125, height: 70))
        let _ = loadNib()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        addSubview(view)
        return view
    }
    


}

