//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Ken Muyesu on 09/01/2022.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List{
            ForEach(scrums) { scrum in
                CardView(scrum: scrum)
                    //.background(scrum.theme.mainColor)
                    .listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
