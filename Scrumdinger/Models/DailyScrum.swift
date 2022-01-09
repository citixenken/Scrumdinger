//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Ken Muyesu on 09/01/2022.
//

import Foundation

struct DailyScrum: Identifiable {
    
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthOfMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthOfMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthOfMinutes = lengthOfMinutes
        self.theme = theme
        
    }
}

//extension with sample data
extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "CoreML", attendees: ["John", "Terry", "Gillian", "Oduor", "Zani", "Zeytuni"], lengthOfMinutes: 10, theme: .yellow),
        DailyScrum(title: "TensorFlow", attendees: ["Ken", "Michelle", "Dustin", "Frank", "Sarah"], lengthOfMinutes: 8, theme: .orange),
        DailyScrum(title: "MapKit", attendees: ["Chela ", "Euna", "Gray", "Daisy", "Margo", "Taylor", "Axelrod", "Safina", "Orrin"], lengthOfMinutes: 5, theme: .poppy)

    ]
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}
