//
//  TabContainer.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import Foundation

import SwiftUI

struct TabContainer: View {
    @State var selectingTab: Tabs = Tabs.Chats
    
    var body: some View {
        TabView(selection: $selectingTab){
            ChatsView().tabItem {
                Image(systemName: Tabs.Chats.currentStateIconName(selecting: selectingTab))
                Text(L10n.Tabs.chats.key)
            }.tag(Tabs.Chats)
            ContactsView().tabItem {
                Image(systemName: Tabs.Contacts.currentStateIconName(selecting: selectingTab))
                Text(L10n.Tabs.contacts.key)
            }.tag(Tabs.Contacts)
            DiscoverView().tabItem {
                Image(systemName: Tabs.Discover.currentStateIconName(selecting: selectingTab))
                Text(L10n.Tabs.discover.key)
            }.tag(Tabs.Discover)
            MeView().tabItem {
                Image(systemName: Tabs.Me.currentStateIconName(selecting: selectingTab))
                Text(L10n.Tabs.me.key)
            }.tag(Tabs.Me)
        }.edgesIgnoringSafeArea(.all)
    }
}

enum Tabs {
    case Chats, Contacts, Discover, Me
    
    struct IconName: Hashable {
        let on: String, off: String
    }
    
    var iconName: IconName {
        switch self {
        case .Chats:
            return IconName(on: "message.fill", off: "message")
        case .Contacts:
            return IconName(on: "person.2.fill", off: "person.2")
        case .Discover:
            return IconName(on: "safari.fill", off: "safari")
        case .Me:
            return IconName(on: "person.fill", off: "person")
        }
    }
    
    func currentStateIconName(selecting: Tabs) -> String {
        selecting == self ? iconName.on : iconName.off
    }
}

struct TabContainer_Previews: PreviewProvider {
    static var previews: some View {
        TabContainer()
    }
}
