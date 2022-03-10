//
//  LForecastModel.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import Foundation

struct LForecastModel: Codable {
    let forecastday: [LForecastDayModel]?
}
