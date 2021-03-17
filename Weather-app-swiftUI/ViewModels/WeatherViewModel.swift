//
//  WeatherViewModel.swift
//  Weather-app-swiftUI
//
//  Created by Lilian on 08/03/2021.
//

import Foundation

final class WeatherViewModel {
    private let weatherService: WeatherServiceProtocol
    var showHandler: (_ weather: WeatherModel) -> Void = { _ in}

    init(weatherService: WeatherServiceProtocol = WeatherService.shared) {
        self.weatherService = weatherService
    }

    func getWeather(city: String) {
        weatherService.getFiveDaysForecast(city: city) { [weak self] result in
            guard let self = self else { return }

            switch result {
            case .success(let weather):
                self.showHandler(weather)
            case .failure:
                print("getFiveDaysForecast failed.")
            }
        }
    }
}
