//
//  button.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import UIKit
import Nuke

class CardView: UIView {

    private static let pointsCornerRadius: CGFloat = 5

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Steph Curry"
        label.textAlignment = .center
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var button: UIButton = {
        let button = PressableButton()
        button.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        Nuke.loadImage(with: URL(string: "https://d17odppiik753x.cloudfront.net/playerimages/nba/9589.png")!, into: button)
        return button
    }()

    private let pointsLabel: UILabel = {
        let pointsLabel = UILabel()
        pointsLabel.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        pointsLabel.textAlignment = .center
        pointsLabel.font = UIFont.systemFont(ofSize: 14)
        pointsLabel.text = "Has a score of 30!"
        pointsLabel.isHidden = true
        return pointsLabel
    }()

    var didTap: ((CardView) -> Void)?
    var isShowingResult = false {
        didSet {
            showOrHideResults()
        }
    }

    init() {
        super.init(frame: .zero)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }

    private func setupViews() {
        setupButton()
        setupPointsLabel()
        setupNameLabel()
    }

    private func setupButton() {
        addSubview(button)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = CardView.pointsCornerRadius

        button.matchLeadingAndTrailing(to: self)
        button.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8).isActive = true
        button.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }

    private func setupPointsLabel() {
        addSubview(pointsLabel)
        pointsLabel.layer.masksToBounds = true
        pointsLabel.layer.cornerRadius = CardView.pointsCornerRadius

        pointsLabel.matchLeadingAndTrailing(to: self)
        pointsLabel.heightAnchor.constraint(equalTo: button.heightAnchor).isActive = true
        pointsLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    private func setupNameLabel() {
        addSubview(nameLabel)
        nameLabel.matchLeadingAndTrailing(to: self)
        nameLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -16).isActive = true
    }

    @objc private func didTapButton() {
        didTap?(self)
    }

    func showOrHideResults() {
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]

        UIView.transition(with: button, duration: 1.0, options: transitionOptions, animations: { [weak self] in
            guard let `self` = self else { return }
            self.button.isHidden = self.isShowingResult
        })

        UIView.transition(with: pointsLabel, duration: 1.0, options: transitionOptions, animations: { [weak self] in
            guard let `self` = self else { return }
            self.pointsLabel.isHidden = !self.isShowingResult
        })
    }
    
}
