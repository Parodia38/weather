//
//  CloudLevel.swift
//  Weather-app-swiftUI
//
//  Created by Lilian on 08/03/2021.
//

import Foundation

struct CloudLevel: Decodable {
    let level: Float

    enum CodingKeys: String, CodingKey {
        case level = "all"
    }
}

extension CloudLevel {
    var isCloudy: Bool {
        level > 40
    }
}
