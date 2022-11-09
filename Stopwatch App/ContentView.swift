//
//  ContentView.swift
//  Stopwatch App
//
//  Created by Evelyn Chen on 2022-11-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // First Layer
            Color.black
                .ignoresSafeArea()
            //Second Layer (rest of the interface)
            VStack {
                Text("00:09:96")
                    .font(Font.system(size:90, weight: .thin))
                    .foregroundColor(.white)
                HStack {
                    CircleButtonView(buttonColour: .gray, label: "Reset", labelColor: .white)
                    CircleButtonView(buttonColour: .green, label: "Start", labelColor: .white)
                    
                    
                    
                }
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
