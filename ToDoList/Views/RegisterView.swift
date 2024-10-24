//
//  RegisterView.swift
//  ToDoList
//
//  Created by Earnest Hsiao on 2024/10/21.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start Organizing TODOs", angle: -15, backGround: .yellow)
        }
        .offset(y: -50)
        
        Form {
            TextField("Full Name", text: $name) 
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Email", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Create Account", background: .green) {
                // Attempt registration
            }
            
        }
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
