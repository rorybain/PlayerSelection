//
//  PlayerWebService.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Alamofire

protocol PlayerService {
    func getPlayers(success: ((_ players: [Player]) -> Void), failure: ((_ error: Error?) -> Void))
}

class PlayerWebService {



}
