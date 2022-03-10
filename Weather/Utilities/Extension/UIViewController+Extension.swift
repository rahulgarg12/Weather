//
//  UIViewController+Extension.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

import UIKit

extension UIViewController {
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T(nibName: String(describing: T.self), bundle: nil)
        }
        
        return instantiateFromNib()
    }
}
