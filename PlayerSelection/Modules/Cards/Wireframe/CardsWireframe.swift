//
//  CardsWireframe.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import UIKit

protocol CardsWireframeProtocol {
    func goToNextRound(cardGame: CardGame?)
    func showWebError()
}

class CardsWireframe: CardsWireframeProtocol {

    weak var view: CardsViewController!
    weak var viewModel: CardsViewModel!

    func goToNextRound(cardGame: CardGame?) {
        let next = CardsModule.make(currentGame: cardGame)
        view.navigationController?.setViewControllers([next], animated: true)
    }

    func showWebError() {
        let alert = UIAlertController(title: "Failed to get players",
                                      message: "We appear to be having some problems at the moment. Please try again.",
                                      preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Try Again", style: .default) { [weak self] _ in
            // Should really be a better error handling setup but doing this for brevity
            self?.viewModel.viewDidLoad()
        })
        view.present(alert, animated: true, completion: nil)
    }

}
