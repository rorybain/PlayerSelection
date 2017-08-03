//
//  Player.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import ObjectMapper

struct Player: Mappable {

    var id = ""
    var firstName = ""
    var lastName = ""
    var image: WebImage?
    var pointsPerGame = 0.0

    init() { }

    init?(map: Map) {
        // required fields
        guard map.JSON["id"] != nil else { return nil }
        guard map.JSON["fppg"] != nil else { return nil }
        guard map.JSON["first_name"] != nil else { return nil }
    }

    mutating func mapping(map: Map) {
        id <- map["id"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        image <- map["images.default"]
        pointsPerGame <- map["fppg"]
    }

}
