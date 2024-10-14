//
//  ContentView.swift
//  ChatAPP
//
//  Created by Marcos Manzo.
//

import SwiftUI

struct UsernameView: View {
    
    @EnvironmentObject var login : MessageViewModel
    @State private var name = ""
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.black, Color("colorTwo"), Color("colorOne")]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(.all)
            VStack{
                Text("Chat App")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 30)
                TextField("Username", text: $name)
                    .textFieldStyle(.roundedBorder)
                
                Button {
                    UserDefaults.standard.setValue(name, forKey: "username")
                    UserDefaults.standard.setValue(UUID().uuidString, forKey: "idUser")
                    login.showChatApp = true
                } label: {
                    Text("Enter")
                        .foregroundColor(.black)
                        .font(.title2)
                        .bold()
                        .padding(.horizontal, 15)
                        .padding(.vertical, 5)
                }.buttonStyle(.borderedProminent)
                    .tint(.white)
                    .padding(.top, 10)
                Spacer()
            }.padding(.all)
        }
    }
}

