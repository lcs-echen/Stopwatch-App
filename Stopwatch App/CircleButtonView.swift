//
//  CircleButtonView.swift
//  Stopwatch App
//
//  Created by Evelyn Chen on 2022-11-09.
//

import SwiftUI

struct CircleButtonView: View {
    let buttonColour: String
    let label: String
    let labelColor: Color
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color(buttonColour))
                .frame(width: 100)
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            Circle()
                .foregroundColor(Color(buttonColour))
                .frame(width: 89)
            Text(label)
                .foregroundColor(labelColor)
                .font(.title2)
            
            
        }
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView(buttonColour: "Dark_Grey", label: "Reset", labelColor: .white)
    }
}
