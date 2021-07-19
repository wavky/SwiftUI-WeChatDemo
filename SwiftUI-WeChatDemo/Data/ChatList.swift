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
        L10nExtra.LastMessage.Message.hi,
        L10nExtra.LastMessage.Message.hey,
        L10nExtra.LastMessage.Message.hello,
        L10nExtra.LastMessage.Message.niceToMeetYou,
        L10nExtra.LastMessage.Message.howAreYou,
        L10nExtra.LastMessage.Message.aloha,
        L10nExtra.LastMessage.Message.areYouStillThere,
        L10nExtra.LastMessage.Message.iLoveYou,
        L10nExtra.LastMessage.Message.theMatrixIsLookingForYou,
        L10nExtra.LastMessage.Message.iAmRobot
    ].shuffled()
    let lastContactTimes: [LastContactTime] = [
        .String(time: "13:53"),
        .String(time: "11:11"),
        .String(time: "03:23"),
        .LocalizedString(time: L10nExtra.LastMessage.DateTime.yesterday),
        .LocalizedString(time: L10nExtra.LastMessage.DateTime.monday),
        .LocalizedString(time: L10nExtra.LastMessage.DateTime.sunday),
        .String(time: "2021/04/01"),
        .String(time: "2021/01/01"),
        .String(time: "2020/11/11"),
        .String(time: "2020/02/14")
    ]
    var chatList: [Chat] = []
    for index in 0..<10 {
        chatList.append(Chat(contact: contacts[index],
                             lastMessage: lastMessages[index],
                             lastContactTime: lastContactTimes[index]))
    }
    return chatList
}

struct Chat: Hashable {
    let contact: Contact
    var lastMessage: LocalizedString, lastContactTime: LastContactTime
}

enum LastContactTime: Hashable {
    case String(time: String),
         LocalizedString(time: LocalizedString)
}
