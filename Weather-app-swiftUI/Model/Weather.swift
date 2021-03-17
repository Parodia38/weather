//
//  Weather.swift
//  Weather-app-swiftUI
//
//  Created by Lilian on 08/03/2021.
//

import Foundation

struct Weather: Decodable {
    let temperature: Temperature
    let cloudlevel: CloudLevel
    let wind: Wind
    let date: Date

    enum CodingKeys: String, CodingKey {
        case temperature = "main"
        case cloudlevel = "clouds"
        case wind
        case date = "dt_txt"
    }
}

extension Weather {
    var imageName: String {
        let isWindy = wind.isWindy
        let isCloudy = cloudlevel.isCloudy
        let isRainy = temperature.isRainy

        if isWindy {
            return "wind"
        } else if isCloudy {
            return "cloud.sun.rain.fill"
        } else if isRainy {
            return "cloud.heavyrain.fill"
        } else {
            return "sun.max.fill"
        }
    }
}

extension Weather {
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.init(identifier: "fr_FR")
        dateFormatter.dateFormat = "HH"
        return "\(dateFormatter.string(from: date))h"
    }
}
