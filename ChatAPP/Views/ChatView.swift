//
//  ContentView.swift
//  ChatAPP
//
//  Created by Marcos Manzo.
//

import SwiftUI

struct ChatView: View {
    
    @EnvironmentObject var login : MessageViewModel
    @StateObject var messagesModel = MessageViewModel()
    @State private var username = ""
    var body: some View {
        NavigationStack{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.white, Color("colorTwo"), Color("colorOne")]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(.all)
                VStack{
                    ScrollViewReader{ proxy in
                        
                        ScrollView{
                            ForEach(messagesModel.messages){ message in
                                Messageview(messages: message)
                            }
                        }.padding(.top, 10)
                        
                            .onChange(of: messagesModel.lastId) { id in
                                withAnimation{
                                    proxy.scrollTo(id, anchor: .bottom)
                                }
                            }
                        
                    }
                    
                    SendView()
                }.navigationTitle(username)
                    .toolbar{
                        Button("Exit"){
                            DispatchQueue.main.async {
                                UserDefaults.standard.removeObject(forKey: "username")
                                UserDefaults.standard.removeObject(forKey: "idUser")
                                login.showChatApp = false
                            }
                        }
                    }.onAppear{
                        username = UserDefaults.standard.string(forKey: "username") ?? "user"
                    }
            }
            
        }
    }
}

