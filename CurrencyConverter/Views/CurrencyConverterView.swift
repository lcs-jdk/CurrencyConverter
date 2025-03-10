//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by kim heejun on 2/27/25.
//

import SwiftUI

struct CurrencyConverterView: View {
   
    @State var viewModel = CurrencyConverterViewModel()
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            // INPUT
            TextField("CAD", text: $viewModel.providedCad)
            
            // OUTPUT
            if let currencyConverter = viewModel.currencyConverter{
                Text("USD: \(currencyConverter.USD)$, EUR: \(currencyConverter.EUR)€, GBP: \(currencyConverter.GBP)£")
            }

            Text(viewModel.recoverySuggestion)
            
            // Add a button so that the result can be saved
            Button {
                viewModel.saveResult()
                // DEBUG: Show how many items are in the resultHistory array
                print("There are \(viewModel.resultHistory.count) elements in the resultHistory array.")
            } label: {
                Text("Save")
            }
            .buttonStyle(.borderedProminent)
            .padding(.bottom)
            
            // Show a title for the history

            HStack {
                Text("History")
                    .bold()
                Spacer()
            }
            .padding(.vertical)
             
      
            
        }
        
    }
}



#Preview {
    CurrencyConverterView()
}
