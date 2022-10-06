//
//  IosScene.swift
//  ios-dev
//
//  Created by blackRaven on 2022/10/07.
//

import SwiftUI

struct IosScene: Scene {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Journal", systemImage: "book")
                    }
                SettingsView()
                    .tabItem {
                        Label("Setting", systemImage: "gear")
                    }
            }
        }
    }
}
