//
//  DefaultPadding.swift
//  ios-dev
//
//  Created by blackRaven on 2022/10/13.
//

import SwiftUI

struct DefaultPadding: View {
    var body: some View {
        Text("Default Padding")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
                .padding()
                .background(Color("customBlue"))
            TrainCar(.front)
        }
        TrainTrack()
    }
}

struct DefaultPadding_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DefaultPadding()
        }
    }
}
