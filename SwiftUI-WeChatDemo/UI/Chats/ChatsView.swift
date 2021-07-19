//
//  ChatsView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import SwiftUI

struct ChatsView: View {
    let chats = getDefaultChatList()
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing:0) {
                    SearchBarView()
                    ForEach(chats, id: \.self) { chat in
                        NavigationLink(destination: createChatDetailView(with: chat)) {
                            ChatItemView(chat: chat)
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(L10n.appName.key)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {}) {
                        Image(systemName: "plus.circle")
                    }
                }
            }
        }
        .accentColor(.black)
    }
}

private func createChatDetailView(with chat: Chat) -> some View {
    ChatDetailView(chat: chat,
                   viewModel: ChatDetailViewModel(
                    opposite: chat.contact
                   )
    )
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}
