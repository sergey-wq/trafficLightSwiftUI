//
//  –°olorsTrafficView.swift
//  TrafficAppSwiftUI
//
//  Created by Sergey Runovich on 12.05.22.
//

import SwiftUI

struct –°olorsTrafficView: View {

    let opacity: CGFloat
    let color: Color

    var body: some View {
        VStack{
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .frame(width: 100, height: 100)
                .padding()
        }
    }
}

struct ColorsTrafficView_Previews: PreviewProvider {

    static var previews: some View {
        –°olorsTrafficView(opacity: 0, color: .red)
    }
}
