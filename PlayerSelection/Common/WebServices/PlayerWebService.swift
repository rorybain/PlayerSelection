//
//  PlayerWebService.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

protocol PlayerService {
    func getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))
}

class PlayerWebService: PlayerService {

    func getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void)) {
        Alamofire.request(Constants.playerEndpoint)
            .validate()
            .responseArray(keyPath: "players") { (response: DataResponse<[Player]>) in
                switch response.result {
                case .success(let players): success(players)
                case .failure(let error): failure(error)
                }
        }
    }

}
