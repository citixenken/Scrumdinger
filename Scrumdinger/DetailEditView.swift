//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Ken Muyesu on 10/01/2022.
//

import SwiftUI

struct DetailEditView: View {
    @Binding var data: DailyScrum.Data
    
    @State private var newAttendeeName = "" //holds attendee name that the user enters
    
    var body: some View {
        Form {
            Section() {
                TextField("Title", text: $data.title)
                
                HStack {
                    Slider(value: $data.lengthInMinutes, in: 5...30, step: 1) {
                        Text("Length") //wouldn't appear on screen but VoiceOver uses it
                    }
                    .accessibilityValue("\(Int(data.lengthInMinutes)) mins")
                    
                    Spacer()
                    Text("\(Int(data.lengthInMinutes)) mins")
                        .accessibilityHidden(true)
                }
                ThemePicker(selection: $data.theme)
                
            } header: {
                Text("Meeting Info")
            }
            
            Section() {
                ForEach(data.attendees) { attendee in
                    Text(attendee.name)
                }
                //remove attendees
                .onDelete { indices in
                    data.attendees.remove(atOffsets: indices)
                }
                
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            data.attendees.append(attendee)
                            
                            newAttendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            } header: {
                Text("Attendees")
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView(data: .constant(DailyScrum.sampleData[0].data))
    }
}
