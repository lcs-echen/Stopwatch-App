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
                        ListItemView(lap: "Lap 5", text: "00:00.98", color: .white)
                        ListItemView(lap: "Lap 4", text: "00:04.08", color: .red)
                        ListItemView(lap: "Lap 3", text: "00:00.96", color: .green)
                        ListItemView(lap: "Lap 2", text: "00:02.76", color: .white)
                        ListItemView(lap: "Lap 1", text: "00:01.16", color: .white)
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
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
            
            Text("Timer")
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
