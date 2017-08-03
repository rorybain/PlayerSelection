//
//  CardsViewController.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import UIKit

protocol CardsViewInput: class {

}

class CardsViewController: UIViewController {

    var viewModel: CardsViewOutput!

    fileprivate let questionContainer = UIView()

    fileprivate let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Which player do you think has more points per game?"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFontWeightSemibold)
        return label
    }()

    fileprivate let firstCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        return card
    }()

    fileprivate let secondCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        return card
    }()

    fileprivate let nextButton: UIButton = {
        let button = PressableButton()
        button.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.isHidden = true
        return button
    }()

    fileprivate let loadingView = UIActivityIndicatorView(activityIndicatorStyle: .gray)

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("no coder adecoder")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        viewModel.viewDidLoad()
    }

    private func setupViews() {
        view.backgroundColor = .white
        setupQuestionContainer()
        setupTitleLabel()
        setupNextButton()
        setupFirstCard()
        setupSecondCard()
    }

    private func setupQuestionContainer() {
        view.addSubview(questionContainer)
        questionContainer.matchAnchors(to: view, inset: 20)
    }

    private func setupTitleLabel() {
        questionContainer.addSubview(titleLabel)
        titleLabel.matchLeadingAndTrailing(to: questionContainer)
        titleLabel.topAnchor.constraint(equalTo: questionContainer.topAnchor).isActive = true
        titleLabel.heightAnchor.constraint(lessThanOrEqualTo: view.heightAnchor, multiplier: 0.15).isActive = true
    }

    private func setupNextButton() {
        questionContainer.addSubview(nextButton)
        nextButton.matchLeadingAndTrailing(to: questionContainer)
        nextButton.bottomAnchor.constraint(equalTo: questionContainer.bottomAnchor).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }

    private func setupFirstCard() {
        firstCard.didTap = didTapCard
        questionContainer.addSubview(firstCard)

        firstCard.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        firstCard.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -20).isActive = true
        firstCard.leadingAnchor.constraint(equalTo: questionContainer.leadingAnchor, constant: 20).isActive = true

    }

    private func setupSecondCard() {
        secondCard.didTap = didTapCard
        questionContainer.addSubview(secondCard)

        firstCard.trailingAnchor.constraint(equalTo: secondCard.leadingAnchor, constant: -20).isActive = true
        secondCard.trailingAnchor.constraint(equalTo: questionContainer.trailingAnchor, constant: -20).isActive = true
        secondCard.topAnchor.constraint(equalTo: firstCard.topAnchor).isActive = true
        secondCard.bottomAnchor.constraint(equalTo: firstCard.bottomAnchor).isActive = true
        firstCard.widthAnchor.constraint(equalTo: secondCard.widthAnchor).isActive = true
    }

    func didTapCard(_ card: CardView) {
        [firstCard, secondCard].forEach { $0.isShowingResult = true }
        nextButton.isHidden = false
        // TODO event handler
    }
    
}

extension CardsViewController: CardsViewInput {
    
}
