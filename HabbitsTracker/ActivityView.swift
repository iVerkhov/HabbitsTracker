//
//  ActivityView.swift
//  HabbitsTracker
//
//  Created by Игорь Верхов on 08.09.2023.
//

import SwiftUI

struct ActivityView: View {
    
//    @Environment (\.dismiss) var dismiss
    
    var activities: Activities
    var currentActivity: Activity
    
    @State var newName: String = ""
    @State var newDescription: String = ""
    @State var newCount: Int = 0
    
    var body: some View {
        List {
            if currentActivity.description.isEmpty == false {
                Section {
                    Text(currentActivity.description)
                }
            }
            Section {
                Text("Activity count: \(currentActivity.count)")
            }
            Button("Add count") {
                var newActivity = currentActivity
                newActivity.count += 1
                if let index = activities.listOfActivities.firstIndex(of: currentActivity) {
                    activities.listOfActivities[index] = newActivity
                }
            }
        }
        .navigationTitle("\(currentActivity.name)")
    }
    
}


#Preview {
    ActivityView(activities: Activities(), currentActivity: .example)
}
