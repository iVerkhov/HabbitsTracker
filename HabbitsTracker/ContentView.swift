//
//  ContentView.swift
//  HabbitsTracker
//
//  Created by Игорь Верхов on 08.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var activities = Activities()
    
    @State private var showingAddActivity = false
    @State private var showingActivityView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(activities.listOfActivities) {activity in
                        NavigationLink {
                            ActivityView(activities: activities, currentActivity: activity)
                        } label: {
                            HStack {
                                Text(activity.name)
                                Spacer()
                                Text("\(activity.count)")
                                    .font(.caption.weight(.black))
                                    .padding(5)
                                    .frame(minWidth: 50)
                                    .background(color(for: activity))
                                    .clipShape(.capsule)
                                
                            }
                        }
                    }
                }
                
                Button("Add Activity") {
                    showingAddActivity.toggle()
                }
                .sheet(isPresented: $showingAddActivity) {
                    AddActivity(activities: activities)
                }
            }
            .navigationTitle("Habits")
        }
    }
    
    func color(for activity: Activity) -> Color {
        if activity.count < 3 {
            return .red
        } else if activity.count < 10 {
            return .orange
        } else if activity.count < 20 {
            return .green
        } else if activity.count < 50 {
            return .blue
        } else {
            return.indigo
        }
    }
}

#Preview {
    ContentView()
}
