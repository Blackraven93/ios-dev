//
//  MacOsScene.swift
//  ios-dev
//
//  Created by blackRaven on 2022/10/07.
//

import SwiftUI

struct MacOsScene: Scene {
    var body: some Scene {
        WindowGroup {
            AlternativeContentView()
        }
        
        #if os(macOS)
        Settings {
            SettingsView()
        }
        #endif

    }
}
