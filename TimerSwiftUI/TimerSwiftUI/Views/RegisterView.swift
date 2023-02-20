//
//  RegisterView.swift
//  TimerSwiftUI
//
//  Created by Eugene on 19/02/2023.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
            VStack(spacing: 25) {
                HStack {
                    TextField("Enter your name", text: $name)
                        .multilineTextAlignment(.center)
                    Text("\(name.count)")
                        .padding()
                }
                Button(action: registerUser) {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                
                }
            }

    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.userName = name
            user.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
