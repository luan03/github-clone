//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Luan Fagundes on 07/10/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import Foundation

enum ErrorMessage: String, Error {
    case invalidUsername = "This username created an invalid request. Please Try Again."
    case unableToComplete = "Unable to complete your request. Please check your connection."
    case invalidResponse = "Invalid response from server. Please try again."
    case invalidData = "The Data received from server was invalid. Please Try Again"
}
