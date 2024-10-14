//
//  ContentView.swift
//  ChatAPP
//
//  Created by Marcos Manzo.
//

import SwiftUI

struct SendView: View {
    
    @StateObject var messageModel = MessageViewModel()
    @State private var message = ""
    var body: some View {
        HStack{
            TextField("Enter your message", text: $message)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled()
            
            Button {
                messageModel.sendMessage(text: message)
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.blue)
                    .cornerRadius(50)
            }
        }.padding(.horizontal)
            .padding(.all)
    }
}

