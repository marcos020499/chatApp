//
//  ContentView.swift
//  ChatAPP
//
//  Created by Marcos Manzo.
//

import SwiftUI

struct Messageview: View {
    var messages : Messages
    @State private var bubble = false
    
    var body: some View {
        VStack(alignment: bubble ? .trailing : .leading){
            HStack{
                Text(messages.text)
                    .foregroundColor(bubble ? Color.white : Color.white)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                    .background(bubble ? Color.blue : Color.purple)
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: bubble ? .trailing : .leading )
            
            Text(messages.username)
                .font(.caption)
                .foregroundColor(.black)
                .padding(bubble ? .trailing : .leading, 25)
        }
        .frame(maxWidth: .infinity, alignment: bubble ? .trailing : .leading)
        .padding(bubble ? .trailing : .leading)
        .padding(.horizontal, 10)
        .onAppear{
            let idUser = UserDefaults.standard.string(forKey: "idUser")
            if idUser == messages.idUser {
                bubble = true
            }
        }
    }
}

