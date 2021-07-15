//
//  ChatInputView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import SwiftUI

struct ChatInputView: View {
    @State private var message: String = ""
    let onCommit: (String) -> Void
    
    var body: some View {
        HStack {
            Image(systemName: "speaker.wave.2.circle")
                .chatInputIconStyle()
            TextField("", text: $message, onCommit: {
                onCommit(message)
                message = ""
            })
            .padding(8)
            .accentColor(Asset.Color.accentColor.color)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 4))
            .frame(maxWidth: .infinity)

            Image(systemName: "face.smiling")
                .chatInputIconStyle()
            Image(systemName: "plus.circle")
                .chatInputIconStyle()
        }
        .padding(8)
        .background(Asset.Color.tabbarGray.color)
    }
}

private extension Image {
    func chatInputIconStyle() -> some View {
        return self.font(.system(size: 28, weight: .light, design: .default))
    }
}

struct ChatInputView_Previews: PreviewProvider {
    static var previews: some View {
        ChatInputView(onCommit: { _ in })
    }
}
