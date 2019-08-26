//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Alexandre Gibson on 25/08/19.
//  Copyright © 2019 GBSN. All rights reserved.
//

import UIKit

// lets the main story board show whats being designed
@IBDesignable
class CurrencyTxtField: UITextField {
    
    
    // overrides the interface builder
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    
    override func awakeFromNib() {
        super .awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if placeholder != nil {
            let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
