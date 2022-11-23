//
//  ToDoDetailView.swift
//  ios-dev
//
//  Created by blackRaven on 2022/11/24.
//

import SwiftUI

struct ToDoDetailView: View {
    var todo: String
    
    var body: some View {
        Text(todo)
            .navigationTitle("To do")
            .toolbar {
                Button {
                  print("tap!")
                } label: {
                  Label("Profile", systemImage: "person.crop.circle")
                }
              }
    }
}

struct ToDoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetailView(todo: "레이븐")
    }
}
