//
//  ios_devApp.swift
//  ios-dev
//
//  Created by apple developer academy on 2022/06/20.
//

import SwiftUI

@main
struct ios_devApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
