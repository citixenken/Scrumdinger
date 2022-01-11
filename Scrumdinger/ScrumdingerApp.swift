//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Ken Muyesu on 08/01/2022.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                //MeetingView()
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
