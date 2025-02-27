//
//  CurrencyConverterViewModel.swift
//  CurrencyConverter
//
//  Created by kim heejun on 2/27/25.
//

import Foundation

@Observable
class CurrencyConverterViewModel {
    
    // MARK: Stored properties
    var providedCad: String    
    var recoverySuggestion: String = ""
    var resultHistory: [CurrencyConverter] = []

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
    
    // MARK: Function(s)
    func saveResult() {
        
        // When there is a valid power based on user input...
        if let power = self.currencyConverter {
            
            // ... save that evaluated power at the top of the history of
            // results
            //
            // NOTE: By inserting the newly evaluated power at the top of
            //       the array, we ensure the user sees
            //       the most recent result first.
            self.resultHistory.insert(power, at: 0)
        }
        
    }
}
