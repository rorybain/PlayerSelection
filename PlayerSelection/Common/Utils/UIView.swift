//
//  UIView.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import UIKit

extension UIView {

    func matchAnchors(to otherView: UIView, inset: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false

        leadingAnchor.constraint(equalTo: otherView.leadingAnchor, constant: inset).isActive = true
        trailingAnchor.constraint(equalTo: otherView.trailingAnchor, constant: -inset).isActive = true
        topAnchor.constraint(equalTo: otherView.topAnchor, constant: inset).isActive = true
        bottomAnchor.constraint(equalTo: otherView.bottomAnchor, constant: -inset).isActive = true
    }

    func matchLeadingAndTrailing(to otherView: UIView, inset: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false

        leadingAnchor.constraint(equalTo: otherView.leadingAnchor, constant: inset).isActive = true
        trailingAnchor.constraint(equalTo: otherView.trailingAnchor, constant: -inset).isActive = true
    }

    func matchTopAndBottom(to otherView: UIView, inset: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false

        topAnchor.constraint(equalTo: otherView.topAnchor, constant: inset).isActive = true
        bottomAnchor.constraint(equalTo: otherView.bottomAnchor, constant: -inset).isActive = true
    }

}
