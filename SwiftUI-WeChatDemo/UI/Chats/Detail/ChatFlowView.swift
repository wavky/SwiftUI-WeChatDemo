//
//  ChatFlowView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import Combine
import SwiftUI

struct ChatFlowView: View {
    @Binding var messageFlow: [ChatMessage]
    @StateObject private var keyboard = KeyboardVisibilityReporter()
    
    var body: some View {
        ScrollViewReader { scrollView in
            ScrollView(showsIndicators: false) {
                VStack(spacing:0) {
                    ForEach(messageFlow, id: \.self) { message in
                        ChatMessageView(message: message).onAppear() {
                            scrollView.scrollTo(message)
                        }
                    }
                }.onChange(of: keyboard.isVisible) { isVisible in
                    if isVisible {
                        scrollView.scrollTo(messageFlow.last!)
                    }
                }
            }.background(Asset.Color.chatGray.color)
        }
    }
}

struct ChatFlowView_Previews: PreviewProvider {
    static let opposite = getDefaultContactList().shuffled()[0]
    static let messages = getDefaultChatList().map(\.lastMessage).shuffled()
    static let chatMessages = [
        ChatMessage(side: .Left(profileImage: opposite.profileImage), text: .LocalizedString(text: messages[0])),
        ChatMessage(side: .Right, text: .LocalizedString(text: messages[1])),
        ChatMessage(side: .Left(profileImage: opposite.profileImage), text: .LocalizedString(text: messages[2])),
        ChatMessage(side: .Right, text: .LocalizedString(text: messages[3]))
    ]
    static var previews: some View {
        ChatFlowView(messageFlow: .constant(chatMessages))
    }
}
