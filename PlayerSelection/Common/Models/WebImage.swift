//
//  WebImage.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import ObjectMapper

struct WebImage: Mappable {

    var width: Int = 0
    var height: Int = 0
    var url: URL?

    init?(map: Map) {
        guard map.JSON["url"] != nil else { return nil }
        guard map.JSON["height"] != nil else { return nil }
        guard map.JSON["width"] != nil else { return nil }
    }

    mutating func mapping(map: Map) {
        width <- map["width"]
        height <- map["height"]
        url <- (map["url"], URLTransform())
    }
    
}
