//
//  Hourly.swift
//  JSONparsing
//
//  Created by Andrey Piskunov on 23.07.2022.
//

import Foundation

struct Hourly: Decodable {
    
    init (from decoder: Decoder) throws {
        let container  = try decoder.container(keyedBy: CodingKeys.self)
        
        dt = try container.decode(Int.self, forKey: .dt)
        temp = try container.decode(Double.self, forKey: .temp)
        feelsLike = try container.decode(Double.self, forKey: .feelsLike)
        pressure = try container.decode(Int.self, forKey: .pressure)
        humidity = try container.decode(Int.self, forKey: .humidity)
        dewPoint = try container.decode(Double.self, forKey: .dewPoint)
        uvi = try container.decode(Double.self, forKey: .uvi)
        clouds = try container.decode(Int.self, forKey: .clouds)
        visibility = try container.decode(Int.self, forKey: .visibility)
        inwdSpeed = try container.decode(Double.self, forKey: .inwdSpeed)
        windDeg = try container.decode(Int.self, forKey: .windDeg)
        windGust = try container.decode(Double.self, forKey: .windGust)
        weather = try container.decode([Weather].self, forKey: .weather)
        pop = try container.decode(Int.self, forKey: .pop)
    }
    
    let dt: Int
    let temp: Double
    let feelsLike: Double
    let pressure: Int
    let humidity: Int
    let dewPoint: Double
    let uvi: Double
    let clouds: Int
    let visibility: Int
    let inwdSpeed: Double
    let windDeg: Int
    let windGust: Double
    let weather: [Weather]
    let pop: Int
    
    enum CodingKeys: String, CodingKey {
        case dt
        case temp
        case feelsLike = "feels_like"
        case pressure
        case humidity
        case dewPoint = "dew_point"
        case uvi
        case clouds
        case visibility
        case inwdSpeed = "inwd_speed"
        case windDeg = "wind_deg"
        case windGust = "wind_gust"
        case weather
        case pop
    }
}
