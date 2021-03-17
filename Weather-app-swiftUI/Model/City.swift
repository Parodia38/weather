//
//  City.swift
//  Weather-app-swiftUI
//
//  Created by Lilian on 08/03/2021.
//

import Foundation

struct City: Decodable {
    let name: String
    let country: String
}

extension City {
    var fullName: String {
        "\(name), \(country)"
    }
}
