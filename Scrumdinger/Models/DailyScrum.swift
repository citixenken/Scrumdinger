//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Ken Muyesu on 09/01/2022.
//

import Foundation

struct DailyScrum {
    
    var title: String
    var attendees: [String]
    var lengthOfMinutes: Int
    var theme: Theme
}

//extension with sample data
extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "CoreML", attendees: ["John", "Terry", "Gillian", "Oduor", "Zani"], lengthOfMinutes: 10, theme: .yellow),
        DailyScrum(title: "TensorFlow", attendees: ["Ken", "Michelle", "Dustin", "Frank", "Sarah"], lengthOfMinutes: 8, theme: .orange),
        DailyScrum(title: "MapKit", attendees: ["Chela ", "Euna", "Gray", "Daisy", "Margo", "Taylor", "Axelrod", "Safina", "Orrin"], lengthOfMinutes: 5, theme: .poppy)

    ]
}
