//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Ken Muyesu on 09/01/2022.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List {
            //static view
            Section(){
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                    .foregroundColor(.accentColor)
                }
                
                HStack {
                    Label("Meeting Duration", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthOfMinutes) mins")
                }
                .accessibilityElement(children: .combine) //combines label and text as one element == one statement
                
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
                
            } header: {
                Text("Meeting Info")
            }
            
            
            //dynamic view
            Section(){
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            } header: {
                Text("Attendees")
            }
        }
        .navigationTitle(scrum.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[1])
        }
    }
}
