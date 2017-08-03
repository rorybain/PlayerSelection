//
//  PlayerSpec.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Quick
import Nimble
@testable import ObjectMapper
@testable import PlayerSelection

class PlayerSpec: QuickSpec {

    override func spec() {

        var json: [String: Any]!

        beforeEach {
            json = [
                "id": "41231a",
                "first_name": "Test",
                "last_name": "Testy",
                "fppg": 65.3,
                "images":
                    ["default":
                        ["width": 30,
                         "height": 50,
                         "url": "https://d17odppiik753x.cloudfront.net/playerimages/nba/9524.png"]]]
        }

        describe("Required values") {

            it("should init to nil if no id is given") {
                json.removeValue(forKey: "id")
                let player = Player(JSON: json)
                expect(player).to(beNil())
            }

            it("should init to nil if no first name is given") {
                json.removeValue(forKey: "first_name")
                let player = Player(JSON: json)
                expect(player).to(beNil())
            }

            it("should init to nil if no fppg is given") {
                json.removeValue(forKey: "fppg")
                let player = Player(JSON: json)
                expect(player).to(beNil())
            }

            it("should create a non nil object if all required values are given") {
                let player = Player(JSON: json)
                expect(player).toNot(beNil())
            }
            
        }

        describe("parsing values") {

            it("should parse the id as is") {
                let player = Player(JSON: json)
                expect(player?.id).to(equal("41231a"))
            }

            it("should parse the name as is") {
                let player = Player(JSON: json)
                expect(player?.firstName).to(equal("Test"))
                expect(player?.lastName).to(equal("Testy"))
            }

            it("should parse fppd for points per game") {
                let player = Player(JSON: json)
                expect(player?.pointsPerGame).to(equal(65.3))
            }

            it("should get the image from the path images.default") {
                let player = Player(JSON: json)
                expect(player?.image).toNot(beNil())
            }

        }
        
    }
    
}
