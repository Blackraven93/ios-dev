//
//  DailyScrum.swift
//  ios-dev
//
//  Created by apple developer academy on 2022/06/21.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "MLOps", attendees: ["raven", "parrot"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "Web Development", attendees: ["swallow", "woodpecker"], lengthInMinutes: 5, theme: .orange)
    ]
}


