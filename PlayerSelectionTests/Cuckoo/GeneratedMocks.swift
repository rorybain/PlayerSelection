// MARK: - Mocks generated from file: PlayerSelection/Modules/Cards/Wireframe/CardsWireframe.swift at 2017-08-03 19:03:23 +0000

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

    

    

    

    struct __StubbingProxy_CardsWireframeProtocol: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
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

        

        
    }


}

 class CardsWireframeProtocolStub: CardsWireframeProtocol {
    

    

    
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
    

    

    

    struct __StubbingProxy_CardsWireframe: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var view: Cuckoo.ToBeStubbedProperty<CardsViewController?> {
            return .init(manager: cuckoo_manager, name: "view")
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
        

        
    }


}

 class CardsWireframeStub: CardsWireframe {
    
     override var view: CardsViewController! {
        get {
            return DefaultValueRegistry.defaultValue(for: (CardsViewController!).self)
        }
        
        set { }
        
    }
    

    

    
}




// MARK: - Mocks generated from file: PlayerSelection/Modules/Cards/ViewModel/CardsViewModel.swift at 2017-08-03 19:03:23 +0000

//
//  CardsViewModel.swift
//  PlayerSelection
//
//  Created by Rory Bain on 03/08/2017.
//  Copyright © 2017 Rory Bain. All rights reserved.
//

import Cuckoo
@testable import PlayerSelection

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
    

    struct __StubbingProxy_CardsViewOutput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("viewDidLoad()", parameterMatchers: matchers))
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
        
    }


}

 class CardsViewOutputStub: CardsViewOutput {
    

    

    
     func viewDidLoad()  {
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

    

    

    

    struct __StubbingProxy_CardsViewModel: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
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

        

        
    }


}

 class CardsViewModelStub: CardsViewModel {
    

    

    
}




// MARK: - Mocks generated from file: PlayerSelection/Common/WebServices/PlayerWebService.swift at 2017-08-03 19:03:23 +0000

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




// MARK: - Mocks generated from file: PlayerSelection/Modules/Cards/View/CardsViewController.swift at 2017-08-03 19:03:23 +0000

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

    

    

    

    struct __StubbingProxy_CardsViewInput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
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

        

        
    }


}

 class CardsViewInputStub: CardsViewInput {
    

    

    
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
    

    struct __StubbingProxy_CardsViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var viewModel: Cuckoo.ToBeStubbedProperty<CardsViewOutput?> {
            return .init(manager: cuckoo_manager, name: "viewModel")
        }
        
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("viewDidLoad()", parameterMatchers: matchers))
        }
        
        func didTapCard<M1: Cuckoo.Matchable>(_ card: M1) -> Cuckoo.StubNoReturnFunction<(CardView)> where M1.MatchedType == CardView {
            let matchers: [Cuckoo.ParameterMatcher<(CardView)>] = [wrap(matchable: card) { $0 }]
            return .init(stub: cuckoo_manager.createStub("didTapCard(_: CardView)", parameterMatchers: matchers))
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
        
    }


}

 class CardsViewControllerStub: CardsViewController {
    
     override var viewModel: CardsViewOutput! {
        get {
            return DefaultValueRegistry.defaultValue(for: (CardsViewOutput!).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func didTapCard(_ card: CardView)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



