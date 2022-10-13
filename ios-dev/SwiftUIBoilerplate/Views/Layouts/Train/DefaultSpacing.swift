//
//  DefaultSpacing.swift
//  ios-dev
//
//  Created by blackRaven on 2022/10/13.
//

import SwiftUI

struct DefaultSpacing: View {
    var body: some View {
        Text("Default Spacing")
        HStack(spacing: 20) {
            TrainCar(.rear)
            TrainCar(.middle)
            TrainCar(.front)
        }
        TrainTrack()
    }
}

struct DefaultSpacing_Previews: PreviewProvider {
    static var previews: some View {
        DefaultSpacing()
    }
}