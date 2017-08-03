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

        beforeEach {
            mockView = MockCardsViewInput().spy(on: CardsViewInputStub())
            mockPlayerSerice = MockPlayerService().spy(on: PlayerServiceStub())
            mockWireframe = MockCardsWireframeProtocol().spy(on: CardsWireframeStub())

            viewModel = CardsViewModel(view: mockView, wireframe: mockWireframe, playerService: mockPlayerSerice)
        }

        describe("setup") {

            it("should call the player web service on view did load") {
                viewModel.viewDidLoad()
                verify(mockPlayerSerice).getPlayers(success: any(), failure: any())
            }

        }

    }

}
