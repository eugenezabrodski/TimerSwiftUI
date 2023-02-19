//
//  TimerCounter.swift
//  TimerSwiftUI
//
//  Created by Eugene on 19/02/2023.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {
    
    var objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var counter = 5
    var timer: Timer?
    var buttonTitle = "Start"
    
    func startTimer() {
        if counter > 0, timer == nil {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        
        buttonUIStateUpdate()
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTitle = "Reset"
        }
        
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonUIStateUpdate() {
        if buttonTitle == "Reset" {
            counter = 5
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
        }
        objectWillChange.send(self)
    }
}
