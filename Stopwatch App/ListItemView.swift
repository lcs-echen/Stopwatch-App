//
//  ListItemView.swift
//  Stopwatch App
//
//  Created by Evelyn Chen on 2022-11-16.
//

import SwiftUI

struct ListItemView: View {
    let lap: String
    let text: String
    let color: Color
    var body: some View {
        HStack {
            Text(lap)
                .font(.system(size: 20))
                .foregroundColor(color)
            Spacer()
            Text(text)
                .font(.system(size: 20))
                .foregroundColor(color)
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(lap: "lap 5", text: "00:00.98", color: .red)
    }
}
