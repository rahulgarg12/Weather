//
//  LForecastConditionModel.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import Foundation

enum LForecastConditionTextModel: String, Codable {
    case clear = "Clear"
    case sunny = "Sunny"
    case cloudy = "Cloudy"
}

struct LForecastConditionModel: Codable {
    let text: String?
    let code: Int?
    let icon: String?
}
