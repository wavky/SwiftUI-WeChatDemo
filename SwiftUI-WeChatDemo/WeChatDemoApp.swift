//
//  SwiftUI_WeChatDemoApp.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import SwiftUI

@main
struct WeChatDemoApp: App {
    @AppStorage("AppLanguage")
    private var appLanguage: String = Language.English.code
    
    var body: some Scene {
        WindowGroup {
            TabContainer()
                .environment(\.locale,
                             .init(identifier: appLanguage))
        }
    }
}
