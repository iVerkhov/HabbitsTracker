//
//  CreateActivity.swift
//  HabbitsTracker
//
//  Created by Игорь Верхов on 08.09.2023.
//

import SwiftUI

struct AddActivity: View {
    
    @Environment (\.dismiss) var dismiss
    
    @State var activities: Activities
    
    @State private var name = ""
    @State private var description = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Enter Activity name", text: $name)
                TextField("Enter Activity description", text: $description)
            }
            Button("Add") {
                let trimmingName = name.trimmingCharacters(in: .whitespaces)
                guard trimmingName.isEmpty == false else { return }
                
                let newActivity = Activity(name: trimmingName, description: description, count: 0)
                activities.listOfActivities.append(newActivity)
                dismiss()
            }
            .navigationTitle("Add Activity")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddActivity(activities: Activities())
}
