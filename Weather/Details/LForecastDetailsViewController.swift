//
//  LForecastDetailsViewController.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import UIKit

final class LForecastDetailsViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet private var tempLabel: UILabel!
    @IBOutlet private var weatherLabel: UILabel!
    @IBOutlet private var weatherImageView: UIImageView!
    @IBOutlet private var maxTempLabel: UILabel!
    @IBOutlet private var minTempLabel: UILabel!
    @IBOutlet private var maxWindMphLabel: UILabel!
    @IBOutlet private var maxWindKphLabel: UILabel!
    @IBOutlet private var precipMmLabel: UILabel!
    @IBOutlet private var precipInLabel: UILabel!
    @IBOutlet private var visibilityKmLabel: UILabel!
    @IBOutlet private var visibilityMilesLabel: UILabel!
    @IBOutlet private var sunriseLabel: UILabel!
    @IBOutlet private var sunsetLabel: UILabel!
    @IBOutlet private var moonriseLabel: UILabel!
    @IBOutlet private var moonsetLabel: UILabel!
    
    var viewModel: LForecastDetailsViewModel?
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initNavigationBar()
        setData()
    }
    
    
    //MARK: - Private Helpers
    private func initNavigationBar() {
        title = View.ForecastDetails.title
    }
    
    private func setData() {
        if let temp = viewModel?.temp {
            tempLabel.text = "\(temp)℃"
        } else {
            tempLabel.text = "NA"
        }
        
        if let weather = viewModel?.weather, !weather.isEmpty {
            weatherLabel.text = weather
        } else {
            weatherLabel.text = "NA"
        }
        
        if let maxTemp = viewModel?.maxTemp {
            maxTempLabel.text = "\(maxTemp)℃"
        } else {
            maxTempLabel.text = "NA"
        }
        
        if let minTemp = viewModel?.minTemp {
            minTempLabel.text = "\(minTemp)℃"
        } else {
            minTempLabel.text = "NA"
        }
        
        if let maxWindKph = viewModel?.maxWindKph {
            maxWindKphLabel.text = "\(maxWindKph)"
        } else {
            maxWindKphLabel.text = "NA"
        }
        
        if let maxWindMph = viewModel?.maxWindMph {
            maxWindMphLabel.text = "\(maxWindMph)"
        } else {
            maxWindMphLabel.text = "NA"
        }
        
        if let precipitationIn = viewModel?.precipitationIn {
            precipInLabel.text = "\(precipitationIn)"
        } else {
            precipInLabel.text = "NA"
        }
        
        if let precipitationMm = viewModel?.precipitationMm {
            precipMmLabel.text = "\(precipitationMm)"
        } else {
            precipMmLabel.text = "NA"
        }
        
        if let visibilityKm = viewModel?.visibilityKm {
            visibilityKmLabel.text = "\(visibilityKm)"
        } else {
            visibilityKmLabel.text = "NA"
        }
        
        if let visibilityMiles = viewModel?.visibilityMiles {
            visibilityMilesLabel.text = "\(visibilityMiles)"
        } else {
            visibilityMilesLabel.text = "NA"
        }
        
        if let sunrise = viewModel?.sunrise, !sunrise.isEmpty {
            sunriseLabel.text = sunrise
        } else {
            sunriseLabel.text = "NA"
        }
        
        if let sunset = viewModel?.sunset, !sunset.isEmpty {
            sunsetLabel.text = sunset
        } else {
            sunsetLabel.text = "NA"
        }
        
        if let moonrise = viewModel?.moonrise, !moonrise.isEmpty {
            moonriseLabel.text = moonrise
        } else {
            moonriseLabel.text = "NA"
        }
        
        if let moonset = viewModel?.moonset, !moonset.isEmpty {
            moonsetLabel.text = moonset
        } else {
            moonsetLabel.text = "NA"
        }
        
        if let weatherImage = viewModel?.weatherImage, !weatherImage.isEmpty, let url = URL(string: weatherImage) {
            weatherImageView.isHidden = false
            weatherImageView.setRemoteImage(url: url)
        } else {
            weatherImageView.isHidden = true
        }
    }
}
