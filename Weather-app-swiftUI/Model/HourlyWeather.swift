//
//  HourlyWeather.swift
//  Weather-app-swiftUI
//
//  Created by Naomi Duclaux on 14/03/2021.
//

import Foundation
import SwiftUI

struct HourlyWeather: View {
    var hourlyWeather: Weather?
    
    var body: some View {
        VStack {
            Text(hourlyWeather?.formattedDate ?? "")
                .font(.system(size: 17, weight:.medium, design:.default))
                .foregroundColor(Color.white)
            Image(systemName: hourlyWeather?.imageName ?? "")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text(hourlyWeather?.temperature.formattedCelsius ?? "")
                .font(.system(size: 17, weight:.medium, design:.default))
                .foregroundColor(Color.white)
        }
    }
}
