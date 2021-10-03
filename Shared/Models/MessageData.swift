//
//  MessageData.swift
//  UniverseMessager
//
//  Created by Ivan Nekrasov on 03.10.2021.
//

import Foundation

struct Message: Identifiable {
    let id: UUID
    var sender: UserData
    var recipient: UserData
    let time: String  //Date
    let text: String
    let deliver: Bool
    let read: Bool
    
    init(id: UUID = UUID(), sender: UserData, recipient: UserData, time: String, text: String, deliver: Bool, read: Bool) {
        self.id = id
        self.sender = sender
        self.recipient = recipient
        self.time = time
        self.text = text
        self.deliver = deliver
        self.read = read
    }
}


extension Message {
    static var data: [Message] {
        [
            Message(sender: UserData.data[0], recipient: UserData.data[1], time: "16:07", text: "First message", deliver: true, read: false),
            Message(sender: UserData.data[0], recipient: UserData.data[1], time: "16:08", text: "Large messageLarge messageLarge messageLarge messageLarge messageLarge messageLarge messageLarge messageLarge messageLarge message", deliver: true, read: false),
            Message(sender: UserData.data[1], recipient: UserData.data[0], time: "16:09", text: "Message", deliver: true, read: false),
            Message(sender: UserData.data[1], recipient: UserData.data[0], time: "16:10", text: "MessageMessage", deliver: true, read: false),
            Message(sender: UserData.data[0], recipient: UserData.data[1], time: "16:11", text: "MessageMessageMessage", deliver: true, read: false),
            Message(sender: UserData.data[1], recipient: UserData.data[0], time: "16:12", text: "MessageMessageMessageMessage", deliver: true, read: false),
            Message(sender: UserData.data[1], recipient: UserData.data[0], time: "16:13", text: "MessageMessageMessageMessageMessage", deliver: true, read: false)
        ]
    }
}
