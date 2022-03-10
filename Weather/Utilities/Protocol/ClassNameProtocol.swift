//
//  ClassNameProtocol.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

protocol ClassNameProtocol {
    static var className: String { get }
    var className: String { get }
}

extension ClassNameProtocol {
    static var className: String {
        return String(describing: self)
    }

    var className: String {
        return type(of: self).className
    }
}
