//
//  ContentView.swift
//  TrafficAppSwiftUI
//
//  Created by Sergey Runovich on 12.05.22.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var title = "START"
    
    private let lightOn = 1.0
    private let lightOff = 0.4

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                СolorsTrafficView(opacity: currentLight == .red ? lightOn : lightOff,
                                  color: .red)
                СolorsTrafficView(opacity: currentLight == .yellow ? lightOn : lightOff,
                                  color: .yellow)
                СolorsTrafficView(opacity: currentLight == .green ? lightOn : lightOff,
                                  color: .green)
                Spacer()
                ButtonTapView(title: title) {
                    if title == "START" {
                        title = "NEXT"
                    }
                    changeLight()
                }
            }
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
        }
    }
}

extension ContentView {
    
    // MARK: - Private Methods
    private func changeLight() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
