//
//  CardsModule.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import UIKit

struct CardsModule {

    static func make() -> UIViewController {
        let viewController = CardsViewController()

        let wireframe = CardsWireframe()
        wireframe.view = viewController

        let playerService = PlayerWebService()

        let viewModel = CardsViewModel(view: viewController, wireframe: wireframe, playerService: playerService)

        viewController.viewModel = viewModel

        return viewController
    }

}
