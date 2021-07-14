//
//  ContactList.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import Foundation

func getDefaultContactList() -> [Contact] {
    Friends.allCases.map(\.contact)
}

struct Contact: Hashable {
    let profileImage: String, name: String
}

private enum Friends: CaseIterable {
    case Antony, Apple, Bosco, Joe, Microsoft, Muraosa, Ron, Saha, Sony, UncleWang
    
    var contact: Contact {
        switch self {
        case .Antony:
            return Contact(profileImage: Asset.Image.avatar01.name, name: "Antony")
        case .Apple:
            return Contact(profileImage: Asset.Image.avatar02.name, name: "Apple")
        case .Bosco:
            return Contact(profileImage: Asset.Image.avatar03.name, name: "Bosco")
        case .Joe:
            return Contact(profileImage: Asset.Image.avatar04.name, name: "Joe")
        case .Microsoft:
            return Contact(profileImage: Asset.Image.avatar05.name, name: "Microsoft")
        case .Muraosa:
            return Contact(profileImage: Asset.Image.avatar06.name, name: "Muraosa")
        case .Ron:
            return Contact(profileImage: Asset.Image.avatar07.name, name: "Ron")
        case .Saha:
            return Contact(profileImage: Asset.Image.avatar08.name, name: "Saha")
        case .Sony:
            return Contact(profileImage: Asset.Image.avatar09.name, name: "Sony")
        case .UncleWang:
            return Contact(profileImage: Asset.Image.avatar10.name, name: "UncleWang")
        }
    }
}


