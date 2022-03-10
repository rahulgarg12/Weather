//
//  HTTPErrorMessage.swift
//  Weather
//
//  Created by Rahul Garg on 10/03/22.
//

struct HTTPErrorMessage {
    static let internalError = "Something went wrong! Please try again later."
    static let badRequest = "Bad Request"
    static let resourceNotFound = "API Not found"
    static let inputError = "Please check the input provided"
    static let decoding = "An error occurred while decoding data"
    static let encoding = "Cannot encode given object into Data"
    static let timeout = "Request timed out"
}
