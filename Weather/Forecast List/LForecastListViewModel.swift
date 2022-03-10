//
//  LForecastListViewModel.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import Foundation

final class LForecastListViewModel {
    private var data: LLocationCurrentModel?
    
    init(data: LLocationCurrentModel?) {
        self.data = data
    }
    
    var country: String? {
        return data?.location?.name ?? data?.location?.region
    }
    
    var forecastday: [LForecastDayModel]? {
        return data?.forecast?.forecastday
    }
    
    var forecastDayCount: Int? {
        return data?.forecast?.forecastday?.count
    }
    
    func forecaseDayObject(at index: Int) -> LForecastDayModel? {
        if let forecastday = forecastday, forecastday.count > index{
            return forecastday[index]
        } else {
            return nil
        }
    }
}
