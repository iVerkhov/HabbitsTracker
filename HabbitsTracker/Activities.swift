//
//  Activities.swift
//  HabbitsTracker
//
//  Created by Игорь Верхов on 08.09.2023.
//

import Foundation

@Observable
class Activities {
    var listOfActivities: [Activity] {
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(listOfActivities) {
                UserDefaults.standard.set(encoded, forKey: "listOfActivities")
            }
        }
    }
    init() {
        if let saved = UserDefaults.standard.data(forKey: "listOfActivities") {
            if let decoded = try? JSONDecoder().decode([Activity].self, from: saved) {
                listOfActivities = decoded
                return
            }
        }
        listOfActivities = []
    }
}
