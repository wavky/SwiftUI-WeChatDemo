//
//  ChatItemView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import SwiftUI

struct ChatItemView: View {
    @State var chat: Chat
    
    var body: some View {
        HStack() {
            Image(chat.contact.profileImage)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(4.0)
                .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.gray, lineWidth: 1))
            Spacer(minLength: 15)
            VStack(alignment: .leading) {
                Spacer()
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(chat.contact.name)
                            .font(.title3)
                            .lineLimit(1)
                            .frame(alignment: .leading)
                        Text(chat.lastMessage)
                            .font(.callout)
                            .fontWeight(.light)
                            .lineLimit(1)
                            .foregroundColor(.gray)
                            .frame(alignment: .leading)
                    }
                    Spacer()
                    Text(chat.lastContactTime)
                        .font(.caption)
                        .lineLimit(1)
                        .foregroundColor(Asset.Color.lightGray.color)
                }
                Spacer()
                Divider()
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, minHeight: 80, maxHeight: 80)
    }
}

struct ChatItemView_Previews: PreviewProvider {
    static let chats = getDefaultChatList()
    static var previews: some View {
        ScrollView {
            ChatItemView(chat: chats[0])
            ChatItemView(chat: chats[1])
            ChatItemView(chat: chats[4])
            ChatItemView(chat: chats[6])
        }
    }
}
