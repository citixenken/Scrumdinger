//
//  History.swift
//  Scrumdinger
//
//  Created by Ken Muyesu on 13/01/2022.
//

import Foundation

//stores details of a scrum session
struct History: Identifiable {
    let id: UUID
    let date: Date
    let attendees: [DailyScrum.Attendee]
    var lengthInMinutes: Int
    
    //default parameters for each property
    init(id: UUID = UUID(), date: Date = Date(), attendees: [DailyScrum.Attendee], lengthInMinutes: Int = 5) {
        self.id = id
        self.date = date
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
    }
}
