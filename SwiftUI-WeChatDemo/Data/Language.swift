//
//  Language.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/19.
//

import Foundation

enum Language: String, CaseIterable {
    case English = "English", Chinese = "中文"
    
    var code: String {
        switch self {
        case .English:
            return "en"
        case .Chinese:
            return "zh-Hans"
        }
    }
}
