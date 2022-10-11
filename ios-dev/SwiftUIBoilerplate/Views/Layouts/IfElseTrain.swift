//
//  IfElseTrain.swift
//  ios-dev
//
//  Created by blackRaven on 2022/10/11.
//

import SwiftUI

struct IfElseTrain: View {
    var longerTrain: Bool
    
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "train.side.rear.car")
                Image(systemName: "train.side.middle.car")
                    .opacity(longerTrain ? 1 : 0)
                Image(systemName: "train.side.front.car")
            }
            Divider()
        }
    }
}

struct IfElseTrain_Previews: PreviewProvider {
    static var previews: some View {
        IfElseTrain(longerTrain: true)
        IfElseTrain(longerTrain: false)
    }
}
