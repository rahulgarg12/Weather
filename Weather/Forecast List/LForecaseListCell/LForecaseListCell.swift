//
//  LForecaseListCell.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import UIKit

final class LForecaseListCell: UITableViewCell {
    //MARK: - IBOutlets
    @IBOutlet private var dateLabel: UILabel!
    @IBOutlet private var weatherLabel: UILabel!
    @IBOutlet private var tempLabel: UILabel!
    
    
    //MARK: - Override Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
    }
    
    
    //MARK: - Helper Methods
    func setData(model: LForecastDayModel?) {
        dateLabel.text = model?.date
        weatherLabel.text = model?.day?.condition?.text
        
        if let temp = model?.day?.avgtempC {
            tempLabel.isHidden = false
            tempLabel.text = "\(temp)℃"
        } else {
            tempLabel.isHidden = true
        }
        
    }
}
