//
//  LForecastDayModel.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import Foundation

struct LForecastDayModel: Codable {
    let date: String?
    let dateEpoch: Int?
    let day: LForecastDayNestedModel?
    let astro: LForecastAstroModel?

    enum CodingKeys: String, CodingKey {
        case date
        case dateEpoch = "date_epoch"
        case day
        case astro
    }
}
