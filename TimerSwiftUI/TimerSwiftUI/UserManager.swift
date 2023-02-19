//
//  UserManager.swift
//  TimerSwiftUI
//
//  Created by Eugene on 19/02/2023.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
