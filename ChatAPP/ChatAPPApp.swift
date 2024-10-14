//
//  ContentView.swift
//  ChatAPP
//
//  Created by Marcos Manzo.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}


@main
struct ChatAPPApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        let login = MessageViewModel()
        WindowGroup {
            ContentView()
                .environmentObject(login)
        }
    }
}
