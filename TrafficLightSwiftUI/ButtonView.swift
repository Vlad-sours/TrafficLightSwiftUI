//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Vlad on 21.8.23..
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .font(.title)
        }
        .frame(width: 200, height: 60)
        .background(Color(.systemYellow))
        .cornerRadius(20)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Start", action: {})
    }
}
