//
//  CardsViewModel.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Foundation

protocol CardsViewOutput {
    func viewDidLoad()
    func nextButtonPressed()
    func didSelect(_ item: CardDisplayItem, from options: [CardDisplayItem])
}

class CardsViewModel {

    fileprivate static let numberOfRounds = 3
    fileprivate static let cardsPerRound = 2

    fileprivate weak var view: CardsViewInput!
    fileprivate var wireframe: CardsWireframeProtocol
    fileprivate var playerService: PlayerService
    var currentGame: CardGame?

    init(view: CardsViewInput,
         wireframe: CardsWireframeProtocol,
         playerService: PlayerService) {

        self.view = view
        self.wireframe = wireframe
        self.playerService = playerService
    }

}

extension CardsViewModel: CardsViewOutput {

    func viewDidLoad() {
        if let currentGame = currentGame {
            setupRound(currentGame)
        } else {
            getPlayers()
        }
    }

    // MARK: Creating new game as non exists

    private func getPlayers() {
        view.state = .loading
        playerService.getPlayers(success: { [weak self] players in
            self?.createGame(from: players)
        }) { [weak self] error in
            print(error as Any)
            self?.wireframe.showWebError()
        }

    }

    private func createGame(from players: [Player]) {
        let game = CardGame()
        for _ in 0..<CardsViewModel.numberOfRounds {

            let round = (0..<CardsViewModel.cardsPerRound).map({ _ -> CardDisplayItem in
                let randomIndex = Int(arc4random_uniform(UInt32(players.count)))
                let player = players[randomIndex]

                return CardDisplayItem(name: "\(player.firstName) \(player.lastName)",
                    points: player.pointsPerGame,
                    imageURL: player.image?.url)
            })

            game.cards.append(round)
        }
        self.currentGame = game
        setupRound(game)
    }

    // Getting and setting up the view with cards for this round

    private func setupRound(_ game: CardGame) {
        guard let nextRound = game.nextRound() else {
            view.state = .finished(winLossText: game.winLossText())
            return
        }

        view.state = .pickACard(currentCards: nextRound)
    }

    // MARK: User actions

    func nextButtonPressed() {
        if case .finished = view.state {
            wireframe.goToNextRound(cardGame: nil)
        } else {
            wireframe.goToNextRound(cardGame: currentGame)
        }
    }

    func didSelect(_ item: CardDisplayItem, from options: [CardDisplayItem]) {
        if let max = options.max(by: { $1.points > $0.points }) {
            if max === item {
                currentGame?.userPickedCorrectAnswer()
            }
        }

    }
    
}
