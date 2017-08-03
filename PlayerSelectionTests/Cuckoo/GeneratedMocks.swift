// MARK: - Mocks generated from file: PlayerSelection/Modules/Cards/Wireframe/CardsWireframe.swift at 2017-08-03 22:09:05 +0000

//
//  CardsWireframe.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Cuckoo
@testable import PlayerSelection

import UIKit

class MockCardsWireframeProtocol: CardsWireframeProtocol, Cuckoo.Mock {
    typealias MocksType = CardsWireframeProtocol
    typealias Stubbing = __StubbingProxy_CardsWireframeProtocol
    typealias Verification = __VerificationProxy_CardsWireframeProtocol
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: CardsWireframeProtocol?

    func spy(on victim: CardsWireframeProtocol) -> Self {
        observed = victim
        return self
    }

    

    

    
     func goToNextRound(cardGame: CardGame?)  {
        
        return cuckoo_manager.call("goToNextRound(cardGame: CardGame?)",
            parameters: (cardGame),
            original: observed.map { o in
                return { (cardGame: CardGame?) in
                    o.goToNextRound(cardGame: cardGame)
                }
            })
        
    }
    
     func showWebError()  {
        
        return cuckoo_manager.call("showWebError()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.showWebError()
                }
            })
        
    }
    

    struct __StubbingProxy_CardsWireframeProtocol: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        func goToNextRound<M1: Cuckoo.Matchable>(cardGame: M1) -> Cuckoo.StubNoReturnFunction<(CardGame?)> where M1.MatchedType == CardGame? {
            let matchers: [Cuckoo.ParameterMatcher<(CardGame?)>] = [wrap(matchable: cardGame) { $0 }]
            return .init(stub: cuckoo_manager.createStub("goToNextRound(cardGame: CardGame?)", parameterMatchers: matchers))
        }
        
        func showWebError() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("showWebError()", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_CardsWireframeProtocol: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
        @discardableResult
        func goToNextRound<M1: Cuckoo.Matchable>(cardGame: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == CardGame? {
            let matchers: [Cuckoo.ParameterMatcher<(CardGame?)>] = [wrap(matchable: cardGame) { $0 }]
            return cuckoo_manager.verify("goToNextRound(cardGame: CardGame?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func showWebError() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("showWebError()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class CardsWireframeProtocolStub: CardsWireframeProtocol {
    

    

    
     func goToNextRound(cardGame: CardGame?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showWebError()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



class MockCardsWireframe: CardsWireframe, Cuckoo.Mock {
    typealias MocksType = CardsWireframe
    typealias Stubbing = __StubbingProxy_CardsWireframe
    typealias Verification = __VerificationProxy_CardsWireframe
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: CardsWireframe?

    func spy(on victim: CardsWireframe) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "view", "accesibility": "", "@type": "InstanceVariable", "type": "CardsViewController!", "isReadOnly": false]
     override var view: CardsViewController! {
        get {
            return cuckoo_manager.getter("view", original: observed.map { o in return { () -> CardsViewController! in o.view }})
        }
        
        set {
            cuckoo_manager.setter("view", value: newValue, original: observed != nil ? { self.observed?.view = $0 } : nil)
        }
        
    }
    
    // ["name": "viewModel", "accesibility": "", "@type": "InstanceVariable", "type": "CardsViewModel!", "isReadOnly": false]
     override var viewModel: CardsViewModel! {
        get {
            return cuckoo_manager.getter("viewModel", original: observed.map { o in return { () -> CardsViewModel! in o.viewModel }})
        }
        
        set {
            cuckoo_manager.setter("viewModel", value: newValue, original: observed != nil ? { self.observed?.viewModel = $0 } : nil)
        }
        
    }
    

    

    
     override func goToNextRound(cardGame: CardGame?)  {
        
        return cuckoo_manager.call("goToNextRound(cardGame: CardGame?)",
            parameters: (cardGame),
            original: observed.map { o in
                return { (cardGame: CardGame?) in
                    o.goToNextRound(cardGame: cardGame)
                }
            })
        
    }
    
     override func showWebError()  {
        
        return cuckoo_manager.call("showWebError()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.showWebError()
                }
            })
        
    }
    

    struct __StubbingProxy_CardsWireframe: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var view: Cuckoo.ToBeStubbedProperty<CardsViewController?> {
            return .init(manager: cuckoo_manager, name: "view")
        }
        
        var viewModel: Cuckoo.ToBeStubbedProperty<CardsViewModel?> {
            return .init(manager: cuckoo_manager, name: "viewModel")
        }
        
        
        func goToNextRound<M1: Cuckoo.Matchable>(cardGame: M1) -> Cuckoo.StubNoReturnFunction<(CardGame?)> where M1.MatchedType == CardGame? {
            let matchers: [Cuckoo.ParameterMatcher<(CardGame?)>] = [wrap(matchable: cardGame) { $0 }]
            return .init(stub: cuckoo_manager.createStub("goToNextRound(cardGame: CardGame?)", parameterMatchers: matchers))
        }
        
        func showWebError() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("showWebError()", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_CardsWireframe: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var view: Cuckoo.VerifyProperty<CardsViewController?> {
            return .init(manager: cuckoo_manager, name: "view", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var viewModel: Cuckoo.VerifyProperty<CardsViewModel?> {
            return .init(manager: cuckoo_manager, name: "viewModel", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func goToNextRound<M1: Cuckoo.Matchable>(cardGame: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == CardGame? {
            let matchers: [Cuckoo.ParameterMatcher<(CardGame?)>] = [wrap(matchable: cardGame) { $0 }]
            return cuckoo_manager.verify("goToNextRound(cardGame: CardGame?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func showWebError() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("showWebError()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class CardsWireframeStub: CardsWireframe {
    
     override var view: CardsViewController! {
        get {
            return DefaultValueRegistry.defaultValue(for: (CardsViewController!).self)
        }
        
        set { }
        
    }
    
     override var viewModel: CardsViewModel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (CardsViewModel!).self)
        }
        
        set { }
        
    }
    

    

    
     override func goToNextRound(cardGame: CardGame?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func showWebError()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}




// MARK: - Mocks generated from file: PlayerSelection/Modules/Cards/ViewModel/CardsViewModel.swift at 2017-08-03 22:09:05 +0000

//
//  CardsViewModel.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Cuckoo
@testable import PlayerSelection

import Foundation

class MockCardsViewOutput: CardsViewOutput, Cuckoo.Mock {
    typealias MocksType = CardsViewOutput
    typealias Stubbing = __StubbingProxy_CardsViewOutput
    typealias Verification = __VerificationProxy_CardsViewOutput
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: CardsViewOutput?

    func spy(on victim: CardsViewOutput) -> Self {
        observed = victim
        return self
    }

    

    

    
     func viewDidLoad()  {
        
        return cuckoo_manager.call("viewDidLoad()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.viewDidLoad()
                }
            })
        
    }
    
     func nextButtonPressed()  {
        
        return cuckoo_manager.call("nextButtonPressed()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.nextButtonPressed()
                }
            })
        
    }
    
     func didSelect(_ item: CardDisplayItem, from options: [CardDisplayItem])  {
        
        return cuckoo_manager.call("didSelect(_: CardDisplayItem, from: [CardDisplayItem])",
            parameters: (item, options),
            original: observed.map { o in
                return { (item: CardDisplayItem, options: [CardDisplayItem]) in
                    o.didSelect(item, from: options)
                }
            })
        
    }
    

    struct __StubbingProxy_CardsViewOutput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("viewDidLoad()", parameterMatchers: matchers))
        }
        
        func nextButtonPressed() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("nextButtonPressed()", parameterMatchers: matchers))
        }
        
        func didSelect<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ item: M1, from options: M2) -> Cuckoo.StubNoReturnFunction<(CardDisplayItem, [CardDisplayItem])> where M1.MatchedType == CardDisplayItem, M2.MatchedType == [CardDisplayItem] {
            let matchers: [Cuckoo.ParameterMatcher<(CardDisplayItem, [CardDisplayItem])>] = [wrap(matchable: item) { $0.0 }, wrap(matchable: options) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub("didSelect(_: CardDisplayItem, from: [CardDisplayItem])", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_CardsViewOutput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func nextButtonPressed() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("nextButtonPressed()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func didSelect<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ item: M1, from options: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == CardDisplayItem, M2.MatchedType == [CardDisplayItem] {
            let matchers: [Cuckoo.ParameterMatcher<(CardDisplayItem, [CardDisplayItem])>] = [wrap(matchable: item) { $0.0 }, wrap(matchable: options) { $0.1 }]
            return cuckoo_manager.verify("didSelect(_: CardDisplayItem, from: [CardDisplayItem])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class CardsViewOutputStub: CardsViewOutput {
    

    

    
     func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func nextButtonPressed()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func didSelect(_ item: CardDisplayItem, from options: [CardDisplayItem])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



class MockCardsViewModel: CardsViewModel, Cuckoo.Mock {
    typealias MocksType = CardsViewModel
    typealias Stubbing = __StubbingProxy_CardsViewModel
    typealias Verification = __VerificationProxy_CardsViewModel
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: CardsViewModel?

    func spy(on victim: CardsViewModel) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "currentGame", "accesibility": "", "@type": "InstanceVariable", "type": "CardGame?", "isReadOnly": false]
     override var currentGame: CardGame? {
        get {
            return cuckoo_manager.getter("currentGame", original: observed.map { o in return { () -> CardGame? in o.currentGame }})
        }
        
        set {
            cuckoo_manager.setter("currentGame", value: newValue, original: observed != nil ? { self.observed?.currentGame = $0 } : nil)
        }
        
    }
    

    

    

    struct __StubbingProxy_CardsViewModel: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var currentGame: Cuckoo.ToBeStubbedProperty<CardGame?> {
            return .init(manager: cuckoo_manager, name: "currentGame")
        }
        
        
    }


    struct __VerificationProxy_CardsViewModel: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var currentGame: Cuckoo.VerifyProperty<CardGame?> {
            return .init(manager: cuckoo_manager, name: "currentGame", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
    }


}

 class CardsViewModelStub: CardsViewModel {
    
     override var currentGame: CardGame? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CardGame?).self)
        }
        
        set { }
        
    }
    

    

    
}




// MARK: - Mocks generated from file: PlayerSelection/Common/WebServices/PlayerWebService.swift at 2017-08-03 22:09:05 +0000

//
//  PlayerWebService.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Cuckoo
@testable import PlayerSelection

import Alamofire
import AlamofireObjectMapper

class MockPlayerService: PlayerService, Cuckoo.Mock {
    typealias MocksType = PlayerService
    typealias Stubbing = __StubbingProxy_PlayerService
    typealias Verification = __VerificationProxy_PlayerService
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: PlayerService?

    func spy(on victim: PlayerService) -> Self {
        observed = victim
        return self
    }

    

    

    
     func getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))  {
        
        return cuckoo_manager.call("getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))",
            parameters: (success, failure),
            original: observed.map { o in
                return { (success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void)) in
                    o.getPlayers(success: success, failure: failure)
                }
            })
        
    }
    

    struct __StubbingProxy_PlayerService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        func getPlayers<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, failure: M2) -> Cuckoo.StubNoReturnFunction<((([Player]) -> Void), ((Error?) -> Void))> where M1.MatchedType == (([Player]) -> Void), M2.MatchedType == ((Error?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<((([Player]) -> Void), ((Error?) -> Void))>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: failure) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub("getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_PlayerService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
        @discardableResult
        func getPlayers<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, failure: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == (([Player]) -> Void), M2.MatchedType == ((Error?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<((([Player]) -> Void), ((Error?) -> Void))>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: failure) { $0.1 }]
            return cuckoo_manager.verify("getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class PlayerServiceStub: PlayerService {
    

    

    
     func getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



class MockPlayerWebService: PlayerWebService, Cuckoo.Mock {
    typealias MocksType = PlayerWebService
    typealias Stubbing = __StubbingProxy_PlayerWebService
    typealias Verification = __VerificationProxy_PlayerWebService
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: PlayerWebService?

    func spy(on victim: PlayerWebService) -> Self {
        observed = victim
        return self
    }

    

    

    
     override func getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))  {
        
        return cuckoo_manager.call("getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))",
            parameters: (success, failure),
            original: observed.map { o in
                return { (success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void)) in
                    o.getPlayers(success: success, failure: failure)
                }
            })
        
    }
    

    struct __StubbingProxy_PlayerWebService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        func getPlayers<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, failure: M2) -> Cuckoo.StubNoReturnFunction<((([Player]) -> Void), ((Error?) -> Void))> where M1.MatchedType == (([Player]) -> Void), M2.MatchedType == ((Error?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<((([Player]) -> Void), ((Error?) -> Void))>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: failure) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub("getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_PlayerWebService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
        @discardableResult
        func getPlayers<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, failure: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == (([Player]) -> Void), M2.MatchedType == ((Error?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<((([Player]) -> Void), ((Error?) -> Void))>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: failure) { $0.1 }]
            return cuckoo_manager.verify("getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class PlayerWebServiceStub: PlayerWebService {
    

    

    
     override func getPlayers(success: @escaping (([Player]) -> Void), failure: @escaping ((Error?) -> Void))  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}




// MARK: - Mocks generated from file: PlayerSelection/Modules/Cards/View/CardsViewController.swift at 2017-08-03 22:09:05 +0000

//
//  CardsViewController.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Cuckoo
@testable import PlayerSelection

import UIKit

class MockCardsViewInput: CardsViewInput, Cuckoo.Mock {
    typealias MocksType = CardsViewInput
    typealias Stubbing = __StubbingProxy_CardsViewInput
    typealias Verification = __VerificationProxy_CardsViewInput
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: CardsViewInput?

    func spy(on victim: CardsViewInput) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "state", "accesibility": "", "@type": "InstanceVariable", "type": "CardState", "isReadOnly": false]
     var state: CardState {
        get {
            return cuckoo_manager.getter("state", original: observed.map { o in return { () -> CardState in o.state }})
        }
        
        set {
            cuckoo_manager.setter("state", value: newValue, original: observed != nil ? { self.observed?.state = $0 } : nil)
        }
        
    }
    

    

    

    struct __StubbingProxy_CardsViewInput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var state: Cuckoo.ToBeStubbedProperty<CardState> {
            return .init(manager: cuckoo_manager, name: "state")
        }
        
        
    }


    struct __VerificationProxy_CardsViewInput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var state: Cuckoo.VerifyProperty<CardState> {
            return .init(manager: cuckoo_manager, name: "state", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
    }


}

 class CardsViewInputStub: CardsViewInput {
    
     var state: CardState {
        get {
            return DefaultValueRegistry.defaultValue(for: (CardState).self)
        }
        
        set { }
        
    }
    

    

    
}



class MockCardsViewController: CardsViewController, Cuckoo.Mock {
    typealias MocksType = CardsViewController
    typealias Stubbing = __StubbingProxy_CardsViewController
    typealias Verification = __VerificationProxy_CardsViewController
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: CardsViewController?

    func spy(on victim: CardsViewController) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "viewModel", "accesibility": "", "@type": "InstanceVariable", "type": "CardsViewOutput!", "isReadOnly": false]
     override var viewModel: CardsViewOutput! {
        get {
            return cuckoo_manager.getter("viewModel", original: observed.map { o in return { () -> CardsViewOutput! in o.viewModel }})
        }
        
        set {
            cuckoo_manager.setter("viewModel", value: newValue, original: observed != nil ? { self.observed?.viewModel = $0 } : nil)
        }
        
    }
    
    // ["name": "state", "accesibility": "", "@type": "InstanceVariable", "type": "CardState", "isReadOnly": false]
     override var state: CardState {
        get {
            return cuckoo_manager.getter("state", original: observed.map { o in return { () -> CardState in o.state }})
        }
        
        set {
            cuckoo_manager.setter("state", value: newValue, original: observed != nil ? { self.observed?.state = $0 } : nil)
        }
        
    }
    

    

    
     override func viewDidLoad()  {
        
        return cuckoo_manager.call("viewDidLoad()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.viewDidLoad()
                }
            })
        
    }
    
     override func didTapCard(_ card: CardView)  {
        
        return cuckoo_manager.call("didTapCard(_: CardView)",
            parameters: (card),
            original: observed.map { o in
                return { (card: CardView) in
                    o.didTapCard(card)
                }
            })
        
    }
    
     override func nextButtonPressed()  {
        
        return cuckoo_manager.call("nextButtonPressed()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.nextButtonPressed()
                }
            })
        
    }
    

    struct __StubbingProxy_CardsViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var viewModel: Cuckoo.ToBeStubbedProperty<CardsViewOutput?> {
            return .init(manager: cuckoo_manager, name: "viewModel")
        }
        
        var state: Cuckoo.ToBeStubbedProperty<CardState> {
            return .init(manager: cuckoo_manager, name: "state")
        }
        
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("viewDidLoad()", parameterMatchers: matchers))
        }
        
        func didTapCard<M1: Cuckoo.Matchable>(_ card: M1) -> Cuckoo.StubNoReturnFunction<(CardView)> where M1.MatchedType == CardView {
            let matchers: [Cuckoo.ParameterMatcher<(CardView)>] = [wrap(matchable: card) { $0 }]
            return .init(stub: cuckoo_manager.createStub("didTapCard(_: CardView)", parameterMatchers: matchers))
        }
        
        func nextButtonPressed() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("nextButtonPressed()", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_CardsViewController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var viewModel: Cuckoo.VerifyProperty<CardsViewOutput?> {
            return .init(manager: cuckoo_manager, name: "viewModel", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var state: Cuckoo.VerifyProperty<CardState> {
            return .init(manager: cuckoo_manager, name: "state", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func didTapCard<M1: Cuckoo.Matchable>(_ card: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == CardView {
            let matchers: [Cuckoo.ParameterMatcher<(CardView)>] = [wrap(matchable: card) { $0 }]
            return cuckoo_manager.verify("didTapCard(_: CardView)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func nextButtonPressed() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("nextButtonPressed()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class CardsViewControllerStub: CardsViewController {
    
     override var viewModel: CardsViewOutput! {
        get {
            return DefaultValueRegistry.defaultValue(for: (CardsViewOutput!).self)
        }
        
        set { }
        
    }
    
     override var state: CardState {
        get {
            return DefaultValueRegistry.defaultValue(for: (CardState).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func didTapCard(_ card: CardView)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func nextButtonPressed()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



