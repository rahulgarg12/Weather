//
//  LLocationCurrentModel.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import Foundation

struct LLocationCurrentModel: Codable {
    let location: LLocationModel?
    let current: LCurrentModel?
    let forecast: LForecastModel?
    let error: LLocationErrorModel?
}
