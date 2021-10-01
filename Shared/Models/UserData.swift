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
    
    init(id: UUID = UUID(), name: String, photo: Image, username: String, password: String) {
        self.id = id
        self.name = name
        self.photo = photo
        self.username = username
        self.password = password
    }
}

extension UserData {
    static var data: [UserData] {
        [
            UserData(name: "Vansho", photo: Image("Photo"), username: "vansho", password: "pass"),
            UserData(name: "Alen'", photo: Image("Photo"), username: "alina", password: "pass2"),
            UserData(name: "Agent Bankford", photo: Image("Photo"), username: "CIA", password: "pass3")
        ]
    }
}
