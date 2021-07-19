//
//  ChatDetailView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import SwiftUI

struct ChatDetailView: View {
    @State var chat: Chat
    @StateObject var viewModel: ChatDetailViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 0) {
            ChatFlowView(messageFlow: $viewModel.messageFlow).onAppear() {
                viewModel.subscribe()
                viewModel.sendLastMessage(chat.lastMessage)
            }
            ChatInputView { message in
                viewModel.send(message)
                viewModel.echo(message)
            }
        }
        .navigationTitle(Text(chat.contact.name.key,
                              tableName: chat.contact.name.table))
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { presentationMode.wrappedValue.dismiss() }) {
                    Image(systemName: "chevron.backward")
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {}) {
                    Image(systemName: "ellipsis")
                }
            }
        }
    }
}

struct ChatDetailView_Previews: PreviewProvider {
    static let chat = getDefaultChatList()[0]
    static var previews: some View {
        ChatDetailView(chat: chat,
                       viewModel: ChatDetailViewModel(opposite: chat.contact))
    }
}
