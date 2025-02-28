//
//  CurrencyConverterItemView.swift
//  CurrencyConverter
//
//  Created by kim heejun on 2/27/25.
//

import SwiftUI

struct CurrencyConverterItemView: View {
    // MARK: Stored properties
    let currencyconverter: CurrencyConverter
    
    // MARK: Computed properties
    var body: some View{
        VStack(alignment: .center){
            VStack {
                
                Text("\(currencyconverter.CAD.formatted())$")
                Spacer()
                
                HStack(alignment: .center) {
                    Spacer()
                    Text("\(currencyconverter.USD.formatted())$")
                    Spacer()
                    Text("\(currencyconverter.EUR.formatted())€")
                    Spacer()
                    Text("\(currencyconverter.GBP.formatted())£")
                    Spacer()

                }
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            Spacer()
        }
    }
}

#Preview {
    CurrencyConverterItemView(currencyconverter: .init(CAD: 18))
}
