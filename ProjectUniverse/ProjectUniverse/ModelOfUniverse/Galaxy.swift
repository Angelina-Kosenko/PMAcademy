//
//  Galaxy.swift
//  ProjectUniverse
//
//  Created by Ангелина Косенко on 24.01.2021.
//

import Foundation

enum GalaxyType: CaseIterable {
    case elliptical
    case spiral
    case irregular
}

class Galaxy {
    
    var name: String
    var age: UInt = 0
    var type: GalaxyType = GalaxyType.allCases.randomElement()!
    weak var universe: Universe?
    
    init(name: String) {
        self.name = name
    }
    
}

extension Galaxy {
    func merge(with galaxy: Galaxy) {
        
    }
}

extension Galaxy: WeightProtocol {
    var mass: UInt {
        starPlanetSystems.reduce(0) { $0 + $1.mass }
    }
}

extension Galaxy: UniverseTimer {
    func timerTick() {
        age += 1
        
        if age.isMultiple(of: 10) {
            let starPlanetSystem = StarPlanetSystem(name: "Star-planet system \(age/10)")
            
            starPlanetSystems.append(starPlanetSystem)
        }
        
        starPlanetSystems.forEach {
            $0.timerTick()
        }
    }
}
