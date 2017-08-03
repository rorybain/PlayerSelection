//
//  CardsViewControllerSpec.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Quick
import Nimble
import Cuckoo
@testable import PlayerSelection

class CardsViewcontrollerSpec: QuickSpec {

    override func spec() {

        var viewController: CardsViewController!
        var viewModel: MockCardsViewOutput!

        beforeEach {
            viewModel = MockCardsViewOutput().spy(on: CardsViewOutputStub())
            viewController = CardsViewController()
            viewController.viewModel = viewModel
        }

        describe("event outputs") {

            it("should inform the view model when a did select event happened") {
                let cardView = CardView()
                cardView.displayItem = CardDisplayItem(name: "", points: 0, imageURL: nil)
                viewController.didTapCard(cardView)
                verify(viewModel).didSelect(any(), from: any())

            }

            it("should inform the view model when the next button is pressed") {
                viewController.nextButtonPressed()
                verify(viewModel).nextButtonPressed()
            }

        }

    }

}
