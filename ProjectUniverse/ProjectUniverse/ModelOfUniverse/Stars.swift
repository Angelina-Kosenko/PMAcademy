//
//  Star.swift
//  ProjectUniverse
//
//  Created by Ангелина Косенко on 24.01.2021.
//

import Foundation

class Stars {
    enum StarType: String, CaseIterable {
        case brownDwarfStar
        case redDwarfStar
        case blueGiantStar
        case redGiantStar
        case redSuperGiantStar
        case whiteDwarfStar
        case yellowDwarfStar
    }
    
    private enum EvolutionStage: String {
        case young = "First evolution stage"
        case old = "Second evolution stage"
        case carlic = "Final evolution stage"
    }

    var id: UUID
    private(set) var type: StarType
    private(set) var age: Int = 0
    private(set) var weight: Int
    private(set) var tempterature: Int
    private(set) var luminosity: Int
    private(set) var radius: Int
    private var evolutionStage: EvolutionStage
    private weak var blackHoleDelegate: PosibleBlackHole?
    private (set) var componentsDict: [UUID: Compose] = [:] {
        didSet {
            DispatchQueue.main.async { [weak self] in
                self?.reloadDelegate?.reloadData(component: nil)

            }
        }
    }
