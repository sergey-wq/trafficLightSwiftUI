//
//  ButtonTapView.swift
//  TrafficAppSwiftUI
//
//  Created by Sergey Runovich on 12.05.22.
//

import SwiftUI

struct ButtonTapView: View {

    let title: String
    let buttonAction: () -> Void
    
    var body: some View {
        Button(action: buttonAction) {
            Text(title)
                .foregroundColor(.white)
                .font(.largeTitle)
        }
        .frame(width: 150, height: 50)
        .background(.blue)
        .cornerRadius(20)
    }
}

struct ButtonTapView_Previews: PreviewProvider {

    static var previews: some View {
        ButtonTapView(title: "START", buttonAction: {})
    }
}
