//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Vlad on 21.8.23..
//

import SwiftUI

enum Light {
    case off, red, yellow, green
}

struct ContentView: View {
    
    @State private var colorNow: Light = .off
    @State private var buttonTitle = "START"
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack (spacing: 20){
                CircleView(color: .red, opacity: colorNow == .red ? 1 : 0.2)
                CircleView(color: .yellow, opacity: colorNow == .yellow ? 1 : 0.2)
                CircleView(color: .green, opacity: colorNow == .green ? 1 : 0.2)
                Spacer()
                ButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeColor()
                }
                .padding()
            }
        }
    }
    private func changeColor() {
            switch colorNow {
            case .off: colorNow = .red
            case .red: colorNow = .yellow
            case .yellow: colorNow = .green
            case .green: colorNow = .red
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
