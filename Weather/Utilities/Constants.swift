//
//  Constants.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import Foundation

struct APIKey {
    static let key = "key"
    static let query = "q"
    static let days = "days"
}

struct Value {
    static let apiKey = "c370f429331449de905150931221003"
    static let days = 5
}

struct View {
    struct Lookup {
        static let title = "Lookup"
    }
    
    struct ForecastList {
        static let title = "Forecast"
    }
    
    struct ForecastDetails {
        static let title = "Details"
    }
}
