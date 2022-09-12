//
//  ContentView.swift
//  trafficLightSwiftUI
//
//  Created by Клоун on 08.09.2022.
//

import SwiftUI

enum CurrentColor {
    case red, yellow, green, allColorsOff
}

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var currentColor: CurrentColor = .allColorsOff
    
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            VStack {
                TrafficCircleView(color: .red, opacity: currentColor == .red ? 1 : 0.3)
                TrafficCircleView(color: .yellow, opacity: currentColor == .yellow ? 1 : 0.3)
                TrafficCircleView(color: .green, opacity: currentColor == .green ? 1 : 0.3)
                Spacer()
                
                StartButtonView(title: buttonTitle, action: changeColor)
            }
            .padding(.bottom)
        }
    }
    
    private func changeColor() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        switch currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        case .green:
            currentColor = .red
        case .allColorsOff:
            currentColor = .red
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
