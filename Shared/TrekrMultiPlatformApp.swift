//
//  TrekrMultiPlatformApp.swift
//  Shared
//
//  Created by James Wu on 2021-01-25.
//

import SwiftUI

@main
struct TrekrMultiPlatformApp: App {
    
    @StateObject var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationsList(store: store)
            }
        }
    }
}
