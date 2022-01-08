//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Ken Muyesu on 08/01/2022.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 1, total: 10)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds elapsed...")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Seconds remaining...")
                        .font(.caption)
                    Label("500", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("13 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 10)
            
            HStack {
                Text("Speaker 1 of 3")
                
                Spacer()
                
                Button(action: {}){
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next Speaker")
            }
        }
        .padding() //handles global view padding
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
