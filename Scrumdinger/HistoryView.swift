//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Ken Muyesu on 19/01/2022.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                //header
                
                Divider()
                    .padding(.bottom)
                //content
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
            .navigationTitle(Text(history.date, style: .date))
            .padding()
        }
    }
}

extension History {
    var attendeeString: String {
        //display attendees in human-readable string -> single, comma-separated string
        ListFormatter.localizedString(byJoining: attendees.map { $0.name})
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var history: History {
        History(attendees: [DailyScrum.Attendee(name: "Saf"), DailyScrum.Attendee(name: "Elliot"), DailyScrum.Attendee(name: "Trevor")], lengthInMinutes: 9, transcript: "Elliot, would you like to start today? Sure, yesterday I reviewed Saf's PR and met with the design team to finalize the UI...")
    }
    static var previews: some View {
        HistoryView(history: history)
    }
}
