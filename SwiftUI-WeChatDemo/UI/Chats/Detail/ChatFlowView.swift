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
    
    var body: some View {
        ScrollViewReader { scrollView in
            ScrollView {
                VStack(spacing:0) {
                    ForEach(messageFlow, id: \.self) { message in
                        ChatMessageView(message: message).onAppear() {
                            scrollView.scrollTo(message)
                        }
                    }
                }
            }.background(Asset.Color.chatGray.color)
        }
    }
}

struct ChatFlowView_Previews: PreviewProvider {
    static let chat = getDefaultChatList()[0]
    static var previews: some View {
        ChatFlowView(messageFlow: .constant([]))
    }
}
