//
//  NetworkingError.swift
//  Weather-app-swiftUI
//
//  Created by Lilian on 08/03/2021.
//

import Foundation

enum NetworkingError: Error {
    case internetConnectivity
    case noData
    case decode
    case invalidUrl
}

