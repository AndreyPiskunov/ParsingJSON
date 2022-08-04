//
//  Alerts.swift
//  JSONparsing
//
//  Created by Andrey Piskunov on 24.07.2022.
//

import Foundation

struct Alerts: Decodable {
    let senderName: String
    let event: String
    let start: Int
    let end: Int
    let description: String
    let tags: [String]
    
    enum CodingKeys: String, CodingKey {
        case senderName = "sender_name"
        case event
        case start
        case end
        case description
        case tags
    }
}
