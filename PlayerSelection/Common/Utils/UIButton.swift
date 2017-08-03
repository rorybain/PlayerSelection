//
//  UIButton.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import UIKit
import Nuke

extension UIButton: Nuke.Target {

    public func handle(response: Result<Image>, isFromMemoryCache: Bool) {
        setImage(response.value, for: .normal)
    }
    
}
