//
//  CardsViewModelSpec.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Quick
import Nimble
import Cuckoo
@testable import PlayerSelection

class CardsViewModelSpec: QuickSpec {

    override func spec() {

        var viewModel: CardsViewModel!
        var mockView: MockCardsViewInput!
        var mockPlayerSerice: MockPlayerService!
        var mockWireframe: MockCardsWireframeProtocol!

        var player1 = Player()
        player1.firstName = "Test1"
        player1.id = "21aw"
        player1.lastName = "Test"
        player1.pointsPerGame = 35

        var player2 = Player()
        player2.firstName = "Test2"
        player2.id = "21ae"
        player2.lastName = "Test"
        player2.pointsPerGame = 40

        let players = [player1, player2]


        describe("setup") {

            beforeEach {
                mockView = MockCardsViewInput().spy(on: CardsViewController())
                mockPlayerSerice = MockPlayerService().spy(on: PlayerServiceStub())
                mockWireframe = MockCardsWireframeProtocol().spy(on: CardsWireframeStub())

                viewModel = CardsViewModel(view: mockView, wireframe: mockWireframe, playerService: mockPlayerSerice)
            }

            it("should call the player web service on view did load when no card game is set") {
                viewModel.viewDidLoad()
                verify(mockPlayerSerice).getPlayers(success: any(), failure: any())
            }

            it("should set the view to loading when no car game is set") {
                viewModel.viewDidLoad()

                var wasLoading = false
                if case .loading = mockView.state { // workaround to enum associated val matching woes
                    wasLoading = true
                }
                expect(wasLoading).to(beTrue())
            }

            it("should setup the view with player cards on succesful load") {
                stub(mockPlayerSerice) { playerService in
                    when(playerService).getPlayers(success: any(), failure: any()).then({ (success, _) in
                        success(players)
                    })
                }
                viewModel.viewDidLoad()

                var cards: [CardDisplayItem] = []
                if case .pickACard(let createdCards) = mockView.state {
                    cards = createdCards
                }
                expect(cards.count).to(equal(2))
            }

            it("should call the wireframe to show an alert if the web call fails") {
                stub(mockPlayerSerice) { playerService in
                    when(playerService).getPlayers(success: any(), failure: any()).then({ (_, failure) in
                        failure(nil)
                    })
                }
                viewModel.viewDidLoad()
                verify(mockWireframe).showWebError()
            }

        }

        describe("setupping existing card game") {

            var cardGame: CardGame!
            var cardItem1: CardDisplayItem!
            var cardItem2: CardDisplayItem!

            beforeEach {
                cardGame = CardGame()
                cardItem1 = CardDisplayItem(name: "Steph Curry", points: 35.5, imageURL: nil)
                cardItem2 = CardDisplayItem(name: "LeBron James", points: 34.5, imageURL: nil)
                let cardItem3 = CardDisplayItem(name: "Manu Ginobli", points: 24.2, imageURL: nil)
                let cardItem4 = CardDisplayItem(name: "Michael Jordan", points: 11, imageURL: nil)
                let cardItem5 = CardDisplayItem(name: "Dwayne Wade", points: 1, imageURL: nil)
                let cardItem6 = CardDisplayItem(name: "Chris Bosh", points: 123, imageURL: nil)
                cardGame.cards = [[cardItem1, cardItem2],
                                  [cardItem3, cardItem4],
                                  [cardItem5, cardItem6]]

                mockView = MockCardsViewInput().spy(on: CardsViewController())
                mockPlayerSerice = MockPlayerService().spy(on: PlayerServiceStub())
                mockWireframe = MockCardsWireframeProtocol().spy(on: CardsWireframeStub())

                viewModel = CardsViewModel(view: mockView, wireframe: mockWireframe, playerService: mockPlayerSerice)
                viewModel.currentGame = cardGame
            }

            it("should create a set of display items when there are rounds to be played still") {
                viewModel.viewDidLoad()
                var cards: [CardDisplayItem] = []
                if case .pickACard(let createdCards) = mockView.state {
                    cards = createdCards
                }
                expect(cards.count).to(equal(2))
            }

            it("should show the finished state if all rounds have been played") {
                _ = cardGame.nextRound()
                _ = cardGame.nextRound()
                _ = cardGame.nextRound()

                viewModel.viewDidLoad()
                var didShowFinished = false
                if case .finished = mockView.state {
                    didShowFinished = true
                }
                expect(didShowFinished).to(beTrue())
            }

            it("should update the correct answers when the max points item was selected") {
                viewModel.didSelect(cardItem1, from: [cardItem1, cardItem2])
                expect(cardGame.winLossText()).to(equal("Game complete! You guess 1 out of 0."))
            }
            
        }

        describe("next button routing") {

            it("should go to the next round if the view is not in finished state") {
                viewModel.nextButtonPressed()
                verify(mockWireframe).goToNextRound(cardGame: notNil())
            }
            
        }
        
    }
    
}
