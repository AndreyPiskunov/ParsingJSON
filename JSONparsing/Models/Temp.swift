//
//  Temp.swift
//  JSONparsing
//
//  Created by Andrey Piskunov on 23.07.2022.
//

import Foundation

struct Temp: Decodable {
    let day: Double
    let min: Double
    let max: Double
    let night: Double
    let eve: Double
    let morn: Double
}
