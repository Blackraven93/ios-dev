//
//  StackingPlaceholder.swift
//  ios-dev
//
//  Created by blackRaven on 2022/10/13.
//

import SwiftUI

struct StackingPlaceholder: View {
    var body: some View {
        Text("Stacking with a Placeholder")
        HStack {
            TrainCar(.rear)
            ZStack {
                TrainCar(.middle)
                    .font(.largeTitle)
                    .opacity(0)
                    .background(Color("customBlue"))
                TrainCar(.middle)
            }
            TrainCar(.front)
        }
        TrainTrack()
    }
}

struct StackingPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            StackingPlaceholder()
        }
    }
}
