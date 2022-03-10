//
//  LForecastAstroModel.swift
//  Weather
//
//  Created by Rahul Garg on 11/03/22.
//

import Foundation

struct LForecastAstroModel: Codable {
    let sunrise, sunset, moonrise, moonset: String?
    let moonPhase, moonIllumination: String?
    
    enum CodingKeys: String, CodingKey {
        case sunrise, sunset, moonrise, moonset
        case moonPhase = "moon_phase"
        case moonIllumination = "moon_illumination"
    }
}
