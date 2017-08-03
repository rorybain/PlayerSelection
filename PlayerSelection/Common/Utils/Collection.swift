//
//  Collection.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Foundation

extension Collection {

    private func distance(from startIndex: Index) -> IndexDistance {
        return distance(from: startIndex, to: self.endIndex)
    }

    private func distance(to endIndex: Index) -> IndexDistance {
        return distance(from: self.startIndex, to: endIndex)
    }

    public subscript(safe index: Index) -> Iterator.Element? {
        if distance(to: index) >= 0 && distance(from: index) > 0 {
            return self[index]
        }
        return nil
    }
    
}
