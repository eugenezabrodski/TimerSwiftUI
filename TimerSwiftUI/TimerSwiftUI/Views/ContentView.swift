//
//  ContentView.swift
//  TimerSwiftUI
//
//  Created by Eugene on 19/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        NavigationView {
            Group {
                if !user.userName.isEmpty {
                    TimerView()
                } else {
                    RegisterView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
