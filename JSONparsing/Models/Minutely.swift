//
//  Minutely.swift
//  JSONparsing
//
//  Created by Andrey Piskunov on 23.07.2022.
//

import Foundation

struct Minutely: Decodable {
    init (from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        dt = try container.decode(Int.self, forKey:.dt)
        precipitation = try container.decode(Double.self, forKey:.precipitation)
    }
    
   let dt: Int
   let precipitation: Double
    
    enum CodingKeys: String, CodingKey {
        case dt
        case precipitation
    }
}
