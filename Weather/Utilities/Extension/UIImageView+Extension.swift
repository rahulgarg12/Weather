//
//  UIImageView+Extension.swift
//  Weather
//
//  Created by Rahul Garg on 11/03/22.
//

import UIKit
import Kingfisher

extension UIImageView {
    func setRemoteImage(url: URL) {
        kf.setImage(with: url)
    }
}
