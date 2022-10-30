//
//  MemeCreatorApp.swift
//  ios-dev
//
//  Created by blackRaven on 2022/10/30.
//

import SwiftUI

struct MemeCreatorApp: View {
    @StateObject private var fetcher = PandaCollectionFetcher()
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                MemeCreator()
                    .environmentObject(fetcher)
            }
        } else {
            NavigationView {
                MemeCreator()
                    .environmentObject(fetcher)
            }
        }
    }
}

struct MemeCreatorApp_Previews: PreviewProvider {
    static var previews: some View {
        MemeCreatorApp()
    }
}
