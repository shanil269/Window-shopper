//
//  wage.swift
//  window-shopper
//
//  Created by Muhaimin on 1/6/20.
//  Copyright © 2020 Muhaimin. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        
        return Int(ceil(price / wage))
        
    }
}
