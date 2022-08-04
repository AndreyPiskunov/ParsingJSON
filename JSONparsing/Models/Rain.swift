//
//  Rain.swift
//  JSONparsing
//
//  Created by Andrey Piskunov on 26.07.2022.
//

import Foundation

struct Rain: Decodable {
    let oneHour: Double

    enum CodingKeys: String, CodingKey {
        case oneHour = "1h"
    }
}
