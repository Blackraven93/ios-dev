//
//  AddingSpacer.swift
//  ios-dev
//
//  Created by blackRaven on 2022/10/13.
//

import SwiftUI

struct AddingSpacer: View {
    var body: some View {
        Text("Spacer")
        HStack {
            TrainCar(.rear)
            Spacer()
            TrainCar(.middle)
            Spacer()
            TrainCar(.front)
        }
        TrainTrack()
    }
}

struct AddingSpacer_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            AddingSpacer()
        }
    }
}
