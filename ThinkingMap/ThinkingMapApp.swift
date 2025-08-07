//
//  ThinkingMapApp.swift
//  ThinkingMap
//
//  Created by Armaan Khan  on 07/08/25.
//

import SwiftUI

@main
struct ThinkingMapApp: App {
    
    @StateObject private var vm = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
