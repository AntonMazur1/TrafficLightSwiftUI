//
//  TrafficCircleView.swift
//  trafficLightSwiftUI
//
//  Created by Клоун on 08.09.2022.
//

import SwiftUI

struct TrafficCircleView: View {
    let color: Color
    let opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct TrafficCircleView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficCircleView(color: .orange, opacity: 1)
    }
}
