//
//  ViewController.swift
//  window-shopper
//
//  Created by Alexandre Gibson on 24/08/19.
//  Copyright © 2019 GBSN. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTextField: CurrencyTxtField!
    @IBOutlet weak var itemPriceTextField: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calculateButton.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calculateButton
        itemPriceTextField.inputAccessoryView = calculateButton
    }
    
    @objc func calculate() {
        
    }


}

