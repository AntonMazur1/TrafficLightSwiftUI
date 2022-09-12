//
//  StartButtonView.swift
//  trafficLightSwiftUI
//
//  Created by Клоун on 12.09.2022.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(title)
        }
        .frame(width: 120, height: 50)
        .font(.title)
        .foregroundColor(.white)
        .background(.blue)
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.white, lineWidth: 4))
    }
}
