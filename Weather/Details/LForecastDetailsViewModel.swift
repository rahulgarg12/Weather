//
//  LForecastDetailsViewModel.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import Foundation

final class LForecastDetailsViewModel {
    private var data: LForecastDayModel?
    
    init(data: LForecastDayModel?) {
        self.data = data
    }
    
    //MARK: - Computed Properties
    var temp: Double? {
        return data?.day?.avgtempC
    }
    
    var weather: String? {
        return data?.day?.condition?.text
    }
    
    var maxTemp: Double? {
        return data?.day?.maxtempC
    }
    
    var minTemp: Double? {
        return data?.day?.mintempC
    }
    
    var maxWindKph: Double? {
        return data?.day?.maxwindKph
    }
    
    var maxWindMph: Double? {
        return data?.day?.maxwindMph
    }
    
    var visibilityKm: Double? {
        return data?.day?.avgvisKM
    }
    
    var visibilityMiles: Double? {
        return data?.day?.avgvisMiles
    }
    
    var precipitationIn: Double? {
        return data?.day?.totalprecipIn
    }
    
    var precipitationMm: Double? {
        return data?.day?.totalprecipMm
    }
    
    var sunrise: String? {
        return data?.astro?.sunrise
    }
    
    var sunset: String? {
        return data?.astro?.sunset
    }
    
    var moonrise: String? {
        return data?.astro?.moonrise
    }
    
    var moonset: String? {
        return data?.astro?.moonset
    }
    
    var weatherImage: String? {
        if let icon = data?.day?.condition?.icon {
            return "https:\(icon)"
        }
        
        return nil
    }
}
