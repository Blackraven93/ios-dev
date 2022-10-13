//
//  AddingPlaceholder.swift
//  ios-dev
//
//  Created by blackRaven on 2022/10/13.
//

import SwiftUI

struct AddingPlaceholder: View {
    var body: some View {
        Text("Spacing with a Placeholder")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
                .opacity(0)
                .background(Color("customBlue"))
            TrainCar(.front)
            
        }
        TrainTrack()
    }
}

struct AddingPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            AddingPlaceholder()
        }
    }
}
