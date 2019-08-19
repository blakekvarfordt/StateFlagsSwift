//
//  StateController.swift
//  StateFlagsSwift
//
//  Created by Blake kvarfordt on 8/18/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import Foundation

class StateController {
    
    static var shared = StateController()
    
    var states = [State]()
    
    init() {
        self.states = createAllStates()
    }
    
    func createAllStates() -> [State] {
        
        var statesArrayToReturn: [State] = []
        
        for stateFullName in StateHelper.states {
            guard let index = StateHelper.states.index(of: stateFullName) else { return [] }
            
            let abbreviation = StateHelper.abbreviations[index]
            
            let state = State(name: stateFullName, abbreviation: abbreviation)
            statesArrayToReturn.append(state)
        }
        
        return []
    }
}
