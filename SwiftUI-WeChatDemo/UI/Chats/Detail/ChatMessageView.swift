//
//  ChatMessage.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import SwiftUI

struct ChatMessageView: View {
    @State var message: ChatMessage
    
    var body: some View {
        HStack(alignment: .top) {
            Image(message.side.profileImage)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(4.0)
            Text(message.text)
                .padding(10)
                .background(message.side.color)
                .clipShape(RoundedRectangle(cornerRadius: 4))
                .environment(\.layoutDirection, .leftToRight)
            Spacer()
        }
        .padding(10)
        .environment(\.layoutDirection, message.side.direction)
    }
}

extension Side {
    var color: Color {
        switch self {
        case .Left:
            return Color.white
        case .Right:
            return Asset.Color.chatGreen.color
        }
    }
    
    var direction: LayoutDirection {
        switch self {
        case .Left:
            return .leftToRight
        case .Right:
            return .rightToLeft
        }
    }
}

struct ChatMessageView_Previews: PreviewProvider {
    static let contact: Contact = getDefaultContactList().shuffled()[0]
    
    static var previews: some View {
        ScrollView() {
            VStack(spacing: 0) {
                ChatMessageView(message: ChatMessage(side: .Left(profileImage: contact.profileImage), text: "Hello?"))
                ChatMessageView(message: ChatMessage(side: .Right, text: "Hello?"))
                ChatMessageView(message: ChatMessage(side: .Left(profileImage: contact.profileImage), text: "Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?"))
                ChatMessageView(message: ChatMessage(side: .Right, text: "Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?Hello?"))
            }
        }
        .background(Asset.Color.lightGray.color)
    }
}
