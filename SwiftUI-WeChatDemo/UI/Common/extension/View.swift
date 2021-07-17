//
//  View.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/18.
//

import Foundation
import SwiftUI

extension View {
    func withBadge(_ show: Bool, radius: CGFloat = 6) -> some View {
        if show {
            return AnyView(self.overlay(Circle()
                                    .fill(Color.red)
                                    .frame(width: radius * 2, height: radius * 2)
                                    .offset(x: radius, y: -radius),
                         alignment: .topTrailing))
        } else {
            return AnyView(self)
        }
    }
}
