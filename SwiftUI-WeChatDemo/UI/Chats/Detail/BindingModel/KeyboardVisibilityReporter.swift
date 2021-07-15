//
//  KeyboardVisibilityReporter.swift
//  SwiftUI-WeChatDemo
//
//  Copy from https://www.youtube.com/watch?v=D8Eo0c_ciMk
//  Created by Wavky Huang on 2021/07/15.
//

import Foundation
import Combine
import SwiftUI

class KeyboardVisibilityReporter: ObservableObject {
    @Published private(set) var isVisible: Bool = false
    
    private var cancelable: AnyCancellable?
    
    private let keyboardWillShow =
        NotificationCenter.default
        .publisher(for: UIResponder.keyboardDidShowNotification)
        .compactMap { _ in true }
    
    private let keyboardWillHide =
        NotificationCenter.default
        .publisher(for: UIResponder.keyboardDidHideNotification)
        .map { _ in false }
    
    init() {
        cancelable = Publishers.Merge(keyboardWillShow, keyboardWillHide)
            .subscribe(on: DispatchQueue.main)
            .assign(to: \.self.isVisible, on: self)
    }
}
