//
//  ContentView.swift
//  ios-dev
//
//  Created by blackRaven on 2022/11/24.
//

import SwiftUI

struct ToDo: Identifiable {
    let id = UUID()
    let content: String
}

private var todos = [
    ToDo(content: "Jira 세팅하기"),
    ToDo(content: "개발팀 회의잡기"),
    ToDo(content: "브랜딩팀 회의잡기"),
    ToDo(content: "리팩토링 하기"),
    ToDo(content: "SwiftUI 공부하기")
]

struct ContentView: View {
    @State private var showingSheet: Bool = false
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                Section("Title") {
                    List(todos) { todo in
                        NavigationLink(destination: ToDoDetailView(todo: todo.content)) {
                            Text(todo.content)
                        }
                    }.toolbar {
                        Button(action: {
                            showingSheet.toggle()
                        })  {
                            Image(systemName: "plus")
                        }.fullScreenCover(isPresented: $showingSheet) {
                            NavigationView {
                                Text("Swipe down to dismiss") // 여기
                                    .toolbar {
                                        ToolbarItem(placement: .primaryAction) {
                                            Button(action: {
                                                showingSheet.toggle()
                                            }) {
                                                Text("Done").fontWeight(.semibold)
                                            }
                                        }
                                    }
                            }
                        }
//                        ToolbarItem(placement: .primaryAction) {
//                            Button("Primary action") {}
//                        }
//
//                        ToolbarItem(placement: .secondaryAction) {
//                            Button("Secondary action 1") {}
//                        }
//
//                        ToolbarItem(placement: .secondaryAction) {
//                            Button("Secondary action 2") {}
//                        }
                        
                    }
                }
            }
        } else {
            NavigationView {
                Section("Title") {
                    List(todos) { todo in
                        NavigationLink(destination: ToDoDetailView(todo: todo.content)) {
                            Text(todo.content)
                        }
                    }
                }.toolbar {
                    Button("Add") {}
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
