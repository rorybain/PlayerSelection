//
//  CardGameSpec.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Quick
import Nimble
@testable import PlayerSelection

class CardGameSpec: QuickSpec {

    override func spec() {

        let cardItem1 = CardDisplayItem(name: "Steph Curry", points: 35.5, imageURL: nil)
        let cardItem2 = CardDisplayItem(name: "LeBron James", points: 34.5, imageURL: nil)
        let cardItem3 = CardDisplayItem(name: "Manu Ginobli", points: 24.2, imageURL: nil)
        let cardItem4 = CardDisplayItem(name: "Michael Jordan", points: 11, imageURL: nil)
        let cardItem5 = CardDisplayItem(name: "Dwayne Wade", points: 1, imageURL: nil)
        let cardItem6 = CardDisplayItem(name: "Chris Bosh", points: 123, imageURL: nil)

        let cards = [[cardItem1, cardItem2], [cardItem3, cardItem4], [cardItem5, cardItem6]]

        describe("next round") {

            it("should return an array of card items when are cards available") {
                let game = CardGame()
                game.cards = cards
                expect(game.nextRound()).toNot(beNil())
            }

            it("should return the cards in order of the matrix") {
                let game = CardGame()
                game.cards = cards
                expect(game.nextRound()?.first?.name).to(equal("Steph Curry"))
                expect(game.nextRound()?.first?.name).to(equal("Manu Ginobli"))
            }

            it("should iterate the played number when a non nil next round is returned") {
                let game = CardGame()
                game.cards = cards
                expect(game.winLossText()).to(equal("Game complete! You guess 0 out of 0."))
                _ = game.nextRound()
                expect(game.winLossText()).to(equal("Game complete! You guess 0 out of 1."))
            }

            it("should not iterate the played number when a nil next round is returned") {
                let game = CardGame()
                game.cards = cards
                _ = game.nextRound()
                _ = game.nextRound()
                _ = game.nextRound()
                expect(game.winLossText()).to(equal("Game complete! You guess 0 out of 3."))
                _ = game.nextRound()
                expect(game.winLossText()).to(equal("Game complete! You guess 0 out of 3."))
            }

            it("should iterate the win number when a round is won") {
                let game = CardGame()
                game.cards = cards
                expect(game.winLossText()).to(equal("Game complete! You guess 0 out of 0."))
                game.userPickedCorrectAnswer()
                expect(game.winLossText()).to(equal("Game complete! You guess 1 out of 0."))
            }
            
        }
        
    }
    
}
