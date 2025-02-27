//
//  CurrencyConverterViewModel.swift
//  CurrencyConverter
//
//  Created by kim heejun on 2/27/25.
//

import Foundation

class CurrencyConverterViewModel {
    
    // MARK: Stored properties
    var providedCad: String
    
    var recoverySuggestion: String = ""
    
    //MARK: Computed properties
    var currencyConverter: CurrencyConverter? {
        guard let CAD = Double(providedCad), CAD > 0 else {
            recoverySuggestion = "Please provide a positive value for the CAD amount."
            return nil
        }
        recoverySuggestion = ""
        return CurrencyConverter(CAD: CAD)
    }
    
    //MARK: Initializer(s)
    init(providedCad: String = "", recoverySuggestion: String = "") {
        self.providedCad = providedCad
        self.recoverySuggestion = recoverySuggestion
    }
}
