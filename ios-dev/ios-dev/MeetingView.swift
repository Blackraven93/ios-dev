//
//  ContentView.swift
//  ios-dev
//
//  Created by apple developer academy on 2022/06/20.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total:15)
            HStack {
                VStack(alignment: .leading) {
                   Text("Second line")
                        .font(.caption)
                   Label("300", systemImage: "hourglass.bottomhalf.fill")
               }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Third line")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack() {
                Text("Speaker 1 of 3")
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
