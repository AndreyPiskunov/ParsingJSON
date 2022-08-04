//
//  KelvinToCelsius.swift
//  JSONparsing
//
//  Created by Andrey Piskunov on 28.07.2022.
//

import Foundation

protocol ProtocolToCelsius {
    static func inKelvin(_ kelvin: Double) -> Double
}

extension ProtocolToCelsius {

    static func inKelvin(_ kelvin: Double) -> Double {
        let сelsius = round(kelvin - 273.15)
        return сelsius
    }
}
