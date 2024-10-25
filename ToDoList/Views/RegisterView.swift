//
//  RegisterView.swift
//  ToDoList
//
//  Created by Earnest Hsiao on 2024/10/21.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Register",
                       subtitle: "Start Organizing TODOs",
                       angle: -15,
                       backGround: .yellow)
        }
        
        Form {
            TextField("Full Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Email", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Create Account",
                     background: .green
            ) {
                // Attempt registration
                viewModel.register()
            }
            
        }
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
