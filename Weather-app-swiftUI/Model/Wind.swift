//
//  Wind.swift
//  Weather-app-swiftUI
//
//  Created by Lilian on 08/03/2021.
//

import Foundation

struct Wind: Decodable {
    let speed: Float
}

extension Wind {
    var isWindy: Bool {
        speed > 6
    }
}
