//
//  UserData.swift
//  UniverseMessager
//
//  Created by Ivan Nekrasov on 01.10.2021.
//

import SwiftUI

struct UserData: Identifiable {
    let id: UUID
    let name: String
    let photo: Image
    let username: String
    let password: String
    var messageStore: [Message]
    
    init(id: UUID = UUID(), name: String, photo: Image, username: String, password: String, messageStore: [Message]) {
        self.id = id
        self.name = name
        self.photo = photo
        self.username = username
        self.password = password
        self.messageStore = messageStore
    }
}

extension UserData {
    static var data: [UserData] {
        [
            UserData(name: "Vansho", photo: Image("Photo"), username: "vansho", password: "pass", messageStore: Message.data),
            UserData(name: "Alinka", photo: Image("Photo"), username: "alinka", password: "pass2", messageStore: Message.data),
            UserData(name: "Agent Bankford", photo: Image("Photo"), username: "CIA", password: "pass3", messageStore: Message.data)
        ]
    }
}
