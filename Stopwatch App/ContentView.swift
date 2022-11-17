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
                
                Spacer()
                
                Text("00:09:96")
                    .font(Font.system(size:90, weight: .thin))
                    .foregroundColor(.white)
                
                HStack {
                    CircleButtonView(buttonColour: "Dark Grey", label: "Reset", labelColor: .white)
                    Spacer()
                    CircleButtonView(buttonColour: "Dark Green", label: "Start", labelColor: .green)
                }
                
                List {
                    Group {
                        Text("1")
                        Text("2")
                        Text("3")
                        Text("1")
                        Text("1")
                    }
                    
                }
                
                .frame(height: 300)
                .listStyle(.plain)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView (selection: Binding.constant(3)){
            Text("World Clock")
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                    
                }
                .tag(1)
            
            Text("Alarm")
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Stopwatch")
                }
                .tag(2)
            
            ContentView()
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("World Clock")
                    
                }
                .tag(3)
            
            Text("timer")
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                }
                .tag(4)
            

        }
        .accentColor(.orange)
        .preferredColorScheme(.dark)
    }
}
