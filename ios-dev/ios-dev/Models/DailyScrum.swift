//
//  DailyScrum.swift
//  ios-dev
//
//  Created by apple developer academy on 2022/06/21.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees:[String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
       self.title = title
       self.attendees = attendees
       self.lengthInMinutes = lengthInMinutes
       self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "MLOps", attendees: ["raven", "parrot"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "Web Development", attendees: ["swallow", "woodpecker"], lengthInMinutes: 5, theme: .orange)
    ]
}

