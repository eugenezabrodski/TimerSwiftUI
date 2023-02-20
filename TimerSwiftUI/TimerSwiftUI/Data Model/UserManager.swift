//
//  UserManager.swift
//  TimerSwiftUI
//
//  Created by Eugene on 19/02/2023.
//
import SwiftUI
import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    @AppStorage("userName") var userName: String = ""
    //var name: String = ""
}
