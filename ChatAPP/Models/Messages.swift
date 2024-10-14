//
//  ContentView.swift
//  ChatAPP
//
//  Created by Marcos Manzo.
//

import Foundation


struct Messages: Identifiable, Codable {
    var id : String
    var text : String
    var username : String
    var idUser : String
    var timestmap: Date
}
