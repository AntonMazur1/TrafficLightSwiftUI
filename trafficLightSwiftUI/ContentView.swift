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
    @State var buttonTitle = "START"
    @State var currentColor: CurrentColor = .allColorsOff
    private let lightIsOn = 1.0
    private let lightIsOff = 0.5
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack(spacing: 30) {
                    TrafficCircleView(color: .red)
                        .opacity(currentColor == .red ? lightIsOn : lightIsOff)
                    TrafficCircleView(color: .yellow)
                        .opacity(currentColor == .yellow ? lightIsOn : lightIsOff)
                    TrafficCircleView(color: .green)
                        .opacity(currentColor == .green ? lightIsOn : lightIsOff)
                }
                Spacer()
                
                Button(action: { changeColor(currentColor) }) {
                    Text(buttonTitle)
                }
                .frame(width: 120, height: 50)
                .font(.title)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 4))
            }
            .padding(.bottom)
        }
    }
    
    private func changeColor(_ color: CurrentColor) {
        buttonTitle = "NEXT"
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
