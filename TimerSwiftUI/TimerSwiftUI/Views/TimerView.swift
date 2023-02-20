//
//  TimerView.swift
//  TimerSwiftUI
//
//  Created by Eugene on 19/02/2023.
//

import SwiftUI

struct TimerView: View {
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hello my dear \(user.userName)")
                .font(.title)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            Spacer()
            ButtonView()
                .environmentObject(timer)
            Spacer()
            NavigationLink(destination: RegisterView()) {
                Button("LogOut") {
                    user.userName = ""
                    user.isRegister.toggle()
                }
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 60)
                .background(Color.orange)
                .cornerRadius(20)
                .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4))
            }
    }
 }
}

struct ButtonView: View {
    @EnvironmentObject var timer: TimeCounter
    
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text("\(timer.buttonTitle)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.black, lineWidth: 4))
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
            .environmentObject(UserManager())
    }
}
