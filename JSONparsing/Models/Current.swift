//
//  Current.swift
//  JSONparsing
//
//  Created by Andrey Piskunov on 23.07.2022.
//

import Foundation

struct Current: Decodable {
    
    init (from decoder: Decoder) throws {
        let container  = try decoder.container(keyedBy: CodingKeys.self)
        
        let dateCurrent = try container.decode(Int.self, forKey: .dt)
        dt = Date(timeIntervalSince1970:TimeInterval(dateCurrent))
        
        let sunriseCurrent = try container.decode(Int.self, forKey: .sunrise)
        sunrise = Date(timeIntervalSince1970:TimeInterval(sunriseCurrent))
        
        let sunsetCurrent = try container.decode(Int.self, forKey: .sunset)
        sunset = Date(timeIntervalSince1970:TimeInterval(sunsetCurrent))
        
//        let tempCurrent = try container.decode(Double.self, forKey: .temp)
        
        temp = try container.decode(Double.self, forKey: .temp)
        feelsLike = try container.decode(Double.self, forKey: .feelsLike)
        pressure = try container.decode(Int.self, forKey: .pressure)
        humidity = try container.decode(Int.self, forKey: .humidity)
        dewPoint = try container.decode(Double.self, forKey: .dewPoint)
        uvi = try container.decode(Double.self, forKey: .uvi)
        clouds = try container.decode(Int.self, forKey: .clouds)
        visibility = try container.decode(Int.self, forKey: .visibility)
        windSpeed = try container.decode(Int.self, forKey: .windSpeed)
        windDeg = try container.decode(Int.self, forKey: .windDeg)
        weather = try container.decode([Weather].self, forKey: .weather)
        rain = try container.decode(Rain.self, forKey: .rain)
       
    }
    
    let dt: Date
    let sunrise: Date
    let sunset: Date
    let temp: Double
    let feelsLike: Double
    let pressure: Int
    let humidity: Int
    let dewPoint: Double
    let uvi: Double
    let clouds: Int
    let visibility: Int
    let windSpeed: Int
    let windDeg: Int
    let weather: [Weather]
    let rain: Rain
    
    enum CodingKeys: String, CodingKey {
        case dt
        case sunrise
        case sunset
        case temp
        case feelsLike = "feels_like"
        case pressure
        case humidity
        case dewPoint = "dew_point"
        case uvi
        case clouds
        case visibility
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case weather
        case rain 
    }
}
