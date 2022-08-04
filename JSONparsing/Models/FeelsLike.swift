//
//  FeelsLike.swift
//  JSONparsing
//
//  Created by Andrey Piskunov on 23.07.2022.
//

import Foundation

struct FeelsLike: Decodable {
    let day: Double
    let night: Double
    let eve: Double
    let morn: Double
}
