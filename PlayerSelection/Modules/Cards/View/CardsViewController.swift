//
//  CardsViewController.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import UIKit

protocol CardsViewInput: class {
    var state: CardState { get set }
}

class CardsViewController: UIViewController, CardsViewInput {

    var viewModel: CardsViewOutput!
    var state: CardState = .loading {
        didSet {
            updateAppearanceForState()
        }
    }

    private let questionContainer = UIView()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Which player do you think has more points per game?"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFontWeightSemibold)
        return label
    }()

    private var cardViews: [CardView] = []

    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 20
        return stackView
    }()

    private let nextButton: UIButton = {
        let button = PressableButton()
        button.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.isHidden = true
        return button
    }()

    private let loadingView = UIActivityIndicatorView(activityIndicatorStyle: .gray)

    private var cardItems: [CardDisplayItem] = []

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
        setupStackView()
        setupLoadingView()
    }

    private func setupLoadingView() {
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadingView)
        loadingView.startAnimating()
        loadingView.hidesWhenStopped = false
        loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loadingView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
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
        nextButton.addTarget(self, action: #selector(nextButtonPressed), for: .touchUpInside)
    }

    private func setupStackView() {
        questionContainer.addSubview(stackView)
        stackView.matchLeadingAndTrailing(to: questionContainer, inset: 20)
        stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -20).isActive = true
    }

    private func setupCardsInStackView(withCards cards: [CardDisplayItem]) {
        while stackView.arrangedSubviews.count > cards.count {
            stackView.arrangedSubviews.last?.removeFromSuperview()
        }

        while stackView.arrangedSubviews.count < cards.count {
            let cardView = CardView()
            cardViews.append(cardView)
            cardView.didTap = didTapCard
            stackView.addArrangedSubview(cardView)
            cardView.matchTopAndBottom(to: stackView)

            if stackView.arrangedSubviews.count > 1 {
                stackView.arrangedSubviews[0].widthAnchor.constraint(equalTo: cardView.widthAnchor).isActive = true
            }
        }

        cards.enumerated().forEach({ cardViews[$0.offset].displayItem = $0.element })
    }

    private func updateAppearanceForState() {

        switch state {
        case .loading:
            loadingView.isHidden = false
            questionContainer.isHidden = true
            return

        case .pickACard(let currentCards):
            self.cardItems = currentCards
            setupCardsInStackView(withCards: currentCards)

        case .finished(let winLossText):
            titleLabel.text = winLossText
            nextButton.setTitle("Done", for: .normal)
            nextButton.isHidden = false
        }
        questionContainer.isHidden = false
        loadingView.isHidden = true
    }

    func didTapCard(_ card: CardView) {
        cardViews.forEach { $0.isShowingResult = true }
        nextButton.isHidden = false
        viewModel.didSelect(card.displayItem, from: cardItems)
    }
    
    func nextButtonPressed() {
        viewModel.nextButtonPressed()
    }
    
}
