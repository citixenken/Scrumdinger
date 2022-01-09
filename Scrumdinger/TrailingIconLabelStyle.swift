//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Ken Muyesu on 09/01/2022.
//

//import Foundation
import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
