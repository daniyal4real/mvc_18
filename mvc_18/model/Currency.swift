//
//  Currency.swift
//  mvc_18
//
//  Created by Daniyal Ganiuly on 11.01.2023.
//

import Foundation


struct currencyToTenge {
    var name: String
    var value: Double
}


extension currencyToTenge {
    static var test = [
    currencyToTenge(name: "US dollar", value: 470),
    currencyToTenge(name: "EU euro", value: 440),
    currencyToTenge(name: "RU rubl", value: 6.5)
    ]
}
