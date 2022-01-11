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
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthOfMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthOfMinutes
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
    
    //Data structure
    
    
//    If all properties have default values, the compiler creates an initializer
//    that takes no arguments. With this initializer,
//    you can create a new instance by calling Data().
    
 
    struct Data {
        var title: String = ""
        var attendees: [Attendee] = []
        var lengthInMinutes: Double = 5
        var theme: Theme = .oxblood
    }
    
    //computed property
    var data: Data {
        Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), theme: theme)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int(data.lengthInMinutes)
        theme = data.theme
    }
}
