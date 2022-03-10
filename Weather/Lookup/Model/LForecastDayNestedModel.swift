//
//  LForecastDayNestedModel.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import Foundation

struct LForecastDayNestedModel: Codable {
    let maxtempC, maxtempF, mintempC, mintempF: Double?
    let avgtempC: Double?
    let avgtempF, maxwindMph, maxwindKph: Double?
    let totalprecipMm, totalprecipIn, avgvisKM, avgvisMiles: Double?
    let avghumidity, dailyWillItRain, dailyChanceOfRain, dailyWillItSnow: Double?
    let dailyChanceOfSnow: Double?
    let condition: LForecastConditionModel?
    let uv: Double?

    enum CodingKeys: String, CodingKey {
        case maxtempC = "maxtemp_c"
        case maxtempF = "maxtemp_f"
        case mintempC = "mintemp_c"
        case mintempF = "mintemp_f"
        case avgtempC = "avgtemp_c"
        case avgtempF = "avgtemp_f"
        case maxwindMph = "maxwind_mph"
        case maxwindKph = "maxwind_kph"
        case totalprecipMm = "totalprecip_mm"
        case totalprecipIn = "totalprecip_in"
        case avgvisKM = "avgvis_km"
        case avgvisMiles = "avgvis_miles"
        case avghumidity
        case dailyWillItRain = "daily_will_it_rain"
        case dailyChanceOfRain = "daily_chance_of_rain"
        case dailyWillItSnow = "daily_will_it_snow"
        case dailyChanceOfSnow = "daily_chance_of_snow"
        case condition, uv
    }
}
