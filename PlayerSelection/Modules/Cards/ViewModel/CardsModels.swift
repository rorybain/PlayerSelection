//
//  CardsState.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Foundation

enum CardState {
    case loading
    case pickACard(currentCards: [CardDisplayItem])
    case finished(winLossText: String)
}

class CardGame {

    var cards: [[CardDisplayItem]] = []
    private var played: Int = 0
    private var won: Int = 0

    func nextRound() -> [CardDisplayItem]? {
        if let next = cards[safe: played] {
            played += 1
            return next
        }
        return nil
    }

    func winLossText() -> String {
        return "Game complete! You guess \(won) out of \(played)."
    }

    func userPickedCorrectAnswer() {
        won += 1
    }

}

class CardDisplayItem {

    var name: String
    var points: Double
    var imageURL: URL?

    init(name: String, points: Double, imageURL: URL?) {
        self.name = name
        self.points = points
        self.imageURL = imageURL
    }
    
}
