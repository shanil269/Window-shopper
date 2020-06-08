//
//  MainVC.swift
//  window-shopper
//
//  Created by Muhaimin on 1/6/20.
//  Copyright © 2020 Muhaimin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageText: CurrencyTextField!
    
    @IBOutlet weak var priceText: CurrencyTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var hourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        
        calculateButton.backgroundColor = #colorLiteral(red: 1, green: 0.5922443271, blue: 0, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageText.inputAccessoryView = calculateButton
        
        priceText.inputAccessoryView = calculateButton
        
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        
    }
    @objc func calculate() {
        
        if let wageText = wageText.text, let priceText = priceText.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hourLabel.isHidden = false
                
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }
    @IBAction func clearCalculator(_ sender: Any) {
        
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        
        wageText.text = wageText.placeholder
        priceText.text = priceText.placeholder
        
    }
    

}

