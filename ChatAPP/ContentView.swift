//
//  ContentView.swift
//  ChatAPP
//
//  Created by Marcos Manzo.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var login : MessageViewModel
    
    var body: some View {
        return Group {
            if login.showChatApp {
                ChatView()
            }else {
                UsernameView()
            }
        }.onAppear{
            if (UserDefaults.standard.object(forKey: "username") != nil) {
                login.showChatApp = true
            }
        }
    }
}

