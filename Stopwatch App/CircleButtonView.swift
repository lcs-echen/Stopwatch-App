//
//  CircleButtonView.swift
//  Stopwatch App
//
//  Created by Evelyn Chen on 2022-11-09.
//

import SwiftUI

struct CircleButtonView: View {
    let buttonColour: Color
    let label: String
    let labelColor: Color
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(buttonColour)
                .frame(width: 100)
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            Circle()
                .foregroundColor(buttonColour)
                .frame(width: 89)
            Text(label)
                .foregroundColor(labelColor)
                .font(.title2)
            
            
        }
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView(buttonColour: .gray, label: "Reset", labelColor: .white)
    }
}
