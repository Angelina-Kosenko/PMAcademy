//
//  Universe.swift
//  ProjectUniverse
//
//  Created by Ангелина Косенко on 24.01.2021.
//

import Foundation

class Universe {
    
    var name: String
    var age: UInt = 0
    var type: String
    
    init(name: String) {
        self.name = name
    }
    
}

extension Universe: TimerHandler {
    func timerTick() {
        age += 1
        
        if age.isMultiple(of: 10) {
            let galaxy = Galaxy(name: "Galaxy \(age/10)", starMassLimit: starMassLimit, starRadiusLimit: starRadiusLimit)
            galaxies.append(galaxy)
        }
        
        if age.isMultiple(of: 30) {
        }
        
        galaxies.forEach {
            $0.timerTick()
        }
    }
}

