//
//  DateJSONDecoder.swift
//  Weather-app-swiftUI
//
//  Created by Lilian on 08/03/2021.
//

import Foundation

final class DateJSONDecoder: JSONDecoder {
    init(dateFormat: String = "yyyy-MM-dd HH:mm:ss") {
        super.init()

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        dateDecodingStrategy = .formatted(dateFormatter)
    }
}
