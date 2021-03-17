//
//  WeatherModel.swift
//  Weather-app-swiftUI
//
//  Created by Lilian on 08/03/2021.
//

import Foundation

struct WeatherModel: Decodable {
    let city: City
    let list: [Weather]
}

extension WeatherModel {
    var firstHour: Weather? {
        guard let weather = list.first else { return nil }

        return weather
    }

    var secondHour: Weather? {
        guard list.count > 1 else { return nil }

        return list[1]
    }

    var thirdHour: Weather? {
        guard list.count > 2 else { return nil }

        return list[2]
    }

    var fourthHour: Weather? {
        guard list.count > 3 else { return nil }

        return list[3]
    }

    var fifthHour: Weather? {
        guard list.count > 4 else { return nil }

        return list[4]
    }
}
