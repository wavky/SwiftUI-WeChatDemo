//
//  ChatItemView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import SwiftUI

struct ChatItemView: View {
    @State var chat: Chat
    private let isShowBadge: Bool = Float.random(in: 0...1) > 0.45
    
    var body: some View {
        HStack() {
            Image(chat.contact.profileImage)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(4.0)
                .withBadge(isShowBadge)
            Spacer(minLength: 15)
            VStack(alignment: .leading) {
                Spacer()
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(chat.contact.name.key,
                             tableName: chat.contact.name.table)
                            .font(.title3)
                            .lineLimit(1)
                            .frame(alignment: .leading)
                        Text(chat.lastMessage.key,
                             tableName: chat.lastMessage.table)
                            .font(.callout)
                            .fontWeight(.light)
                            .lineLimit(1)
                            .foregroundColor(.gray)
                            .frame(alignment: .leading)
                    }
                    Spacer()
                    LastContactTimeText(time: chat.lastContactTime)
                }
                Spacer()
                Divider()
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, minHeight: 80, maxHeight: 80)
    }
}

fileprivate struct LastContactTimeText: View {
    let time: LastContactTime
    var body: some View {
        switch time {
        case .String(let time):
            return AnyView(Text(time)
                            .lastContactTimeStyle())
        case .LocalizedString(let time):
            return AnyView(Text(time.key, tableName: time.table)
                            .lastContactTimeStyle())
        }
    }
}

fileprivate extension Text {
    func lastContactTimeStyle() -> some View {
        self.font(.caption)
            .lineLimit(1)
            .foregroundColor(Asset.Color.lightGray.color)
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
