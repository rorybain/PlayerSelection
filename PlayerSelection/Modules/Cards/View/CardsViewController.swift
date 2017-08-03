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

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("no coder adecoder")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
    }

}

extension CardsViewController: CardsViewInput {
    
}
