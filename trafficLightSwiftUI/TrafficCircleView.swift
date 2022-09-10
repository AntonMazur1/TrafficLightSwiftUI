//
//  TrafficCircleView.swift
//  trafficLightSwiftUI
//
//  Created by Клоун on 08.09.2022.
//

import SwiftUI

struct TrafficCircleView: View {
    let color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(color: .white, radius: 10)
    }
}

struct TrafficCircleView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficCircleView(color: .orange)
    }
}
