//
//  ios_devApp.swift
//  ios-dev
//
//  Created by apple developer academy on 2022/06/20.
//

import SwiftUI

@main
struct SwiftUIBoilerplateApp: App {
    var body: some Scene {
        #if os(iOS)
        IosScene()
        #elseif os(macOS)
        MacOsScene()
        #endif
    }
}
