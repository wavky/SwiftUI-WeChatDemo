//
//  ChatMessage.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/15.
//

import Foundation

struct ChatMessage: Hashable {
    let side: Side
    let text: MessageType
}

enum MessageType: Hashable {
    case String(text: String),
         LocalizedString(text: LocalizedString)
}

enum Side: Hashable {
    case Left(profileImage: String), Right
    
    var profileImage: String {
        switch self {
        case .Left(let profileImage):
            return profileImage
        case .Right:
            return Asset.Image.avatarMe.name
        }
    }
}
