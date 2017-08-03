//
//  CardsViewModel.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

protocol CardsViewOutput {
    func viewDidLoad()
}

class CardsViewModel {

    private weak var view: CardsViewInput!
    private var wireframe: CardsWireframeProtocol
    fileprivate var playerService: PlayerService

    init(view: CardsViewInput, wireframe: CardsWireframeProtocol, playerService: PlayerService) {
        self.view = view
        self.wireframe = wireframe
        self.playerService = playerService
    }

}

extension CardsViewModel: CardsViewOutput {

    func viewDidLoad() {
        playerService.getPlayers(success: { players in
            print(players) // TODO
        }) { error in
            print(error) // TODO
        }
    }
    
}
