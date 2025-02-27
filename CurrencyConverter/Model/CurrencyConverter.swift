//
//  CurrencyConverter.swift
//  CurrencyConverter
//
//  Created by kim heejun on 2/27/25.
//

import Foundation

struct CurrencyConverter {
   
    // MARK: Stored properties
    var CAD: Double
    
    // MARK: Computed properties
    
    var USD: Double {
        return CAD * 0.69
    }
    
    var EUR: Double {
        return CAD * 0.66
    }
    
    var GBP: Double {
        return CAD * 0.55
    }
}
