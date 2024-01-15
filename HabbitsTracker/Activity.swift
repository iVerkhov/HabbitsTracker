//
//  Activity.swift
//  HabbitsTracker
//
//  Created by Игорь Верхов on 08.09.2023.
//

import Foundation

struct Activity: Codable, Equatable, Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var count = 0
    
    static let example = Activity(name: "Eample activity", description: "Description for example activity")
}

