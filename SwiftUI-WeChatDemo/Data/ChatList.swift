//
//  ChatList.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import Foundation

func getDefaultChatList() -> [Chat] {
    let contacts = getDefaultContactList().shuffled()
    let lastMessages = [
        "Hi","Hey","Hello","Nice to mee you~","How are you?","Aloha","Are you still there?",
        "I love you!","The Matrix is looking for you.","I am robot."
    ].shuffled()
    let lastContactTimes = [
        "13:53", "11:11", "03:23", "Yesterday", "Monday", "Sunday",
        "2021/04/01", "2021/01/01", "2020/11/11", "2020/02/14"
    ]
    var chatList: [Chat] = []
    for index in 0..<10 {
        chatList.append(Chat(contact: contacts[index], lastMessage: lastMessages[index], lastContactTime: lastContactTimes[index]))
    }
    return chatList
}

struct Chat: Hashable {
    let contact: Contact
    var lastMessage: String, lastContactTime: String
}
