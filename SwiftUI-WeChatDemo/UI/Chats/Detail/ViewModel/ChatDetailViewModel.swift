//
//  ChatDetailViewModel.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/15.
//

import Foundation
import Combine

class ChatDetailViewModel : ObservableObject {
    private let echo = PassthroughSubject<ChatMessage, Never>()
    private var subscription: AnyCancellable? = nil
    
    @Published var messageFlow: [ChatMessage]
    let opposite: Contact
    
    init(messageFlow: [ChatMessage] = [], opposite: Contact) {
        self.messageFlow = messageFlow
        self.opposite = opposite
    }
    
    func subscribe() {
        subscription = echo.debounce(for: .seconds(1), scheduler: DispatchQueue.main)
            .sink(receiveValue: { [weak self] message in
                self?.messageFlow.append(message)
            })
    }
    
    func sendLastMessage(_ message: LocalizedString) {
        messageFlow.append(
            ChatMessage(side: .Left(profileImage: opposite.profileImage),
                        text: .LocalizedString(text: message)))
    }
    
    func send(_ message: String) {
        messageFlow.append(ChatMessage(side: .Right, text: .String(text: message)))
    }
    
    func echo(_ message: String) {
        echo.send(
            ChatMessage(side: .Left(profileImage: opposite.profileImage),
                        text: .String(text: message.stupidSwap())))
    }
    
    deinit {
        subscription?.cancel()
    }
}

private extension String {
    func swap(_ a: String, _ b: String) -> String {
        let swapMark = "__Swapping__"
        let replaceA = self.replacingOccurrences(of: a, with: swapMark)
        let replaceB = replaceA.replacingOccurrences(of: b, with: a)
        return replaceB.replacingOccurrences(of: swapMark, with: b)
    }
    
    func stupidSwap() -> String {
        return self.swap("我", "你")
            .swap("I ", "You ")
            .swap(" you", " me")
    }
}
