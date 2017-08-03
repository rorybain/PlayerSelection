//
//  PressableButton.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import UIKit

class PressableButton: UIButton {

    init() {
        super.init(frame: .zero)
        addTarget(self, action: #selector(didTouchUp), for: [.touchUpInside, .touchUpOutside])
        addTarget(self, action: #selector(didTouchDown), for: .touchDown)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func didTouchUp() {
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 1,
                       options: [.allowUserInteraction, .curveEaseInOut],
                       animations: {
            self.transform = .identity
        }, completion: nil)
    }

    func didTouchDown() {
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 1,
                       options: [.allowUserInteraction, .curveEaseInOut],
                       animations: {
            self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }, completion: nil)
    }

}
