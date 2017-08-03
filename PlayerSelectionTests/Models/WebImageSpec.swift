//
//  WebImageSpec.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Quick
import Nimble
@testable import PlayerSelection
@testable import ObjectMapper

class WebImageSpec: QuickSpec {

    override func spec() {

        var json: [String: Any]!

        beforeEach {
            json = ["width": 30,
                    "height": 50,
                    "url": "https://d17odppiik753x.cloudfront.net/playerimages/nba/9524.png"]
        }

        describe("parsing values") {

            it("should parse width and height as is") {
                let image = WebImage(JSON: json)
                expect(image?.width).to(equal(30))
                expect(image?.height).to(equal(50))
            }

            it("should create a url from the url string") {
                let image = WebImage(JSON: json)
                expect(image?.url?.lastPathComponent).to(equal("9524.png"))
            }

        }
        
    }
    
}
