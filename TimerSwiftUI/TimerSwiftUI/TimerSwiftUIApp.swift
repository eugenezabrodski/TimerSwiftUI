//
//  TimerSwiftUIApp.swift
//  TimerSwiftUI
//
//  Created by Eugene on 19/02/2023.
//

import SwiftUI

@main
struct TimerSwiftUIApp: App {
    
    @StateObject private var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(user)
        }
    }
}
