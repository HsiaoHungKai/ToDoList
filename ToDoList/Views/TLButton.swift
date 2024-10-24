//
//  TLButton.swift
//  ToDoList
//
//  Created by Earnest Hsiao on 2024/10/23.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding(10)
    }
}

#Preview {
    TLButton(title: "Button", background: .blue) {
        
    }
}
