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
    let profileImage: String, name: LocalizedString
}

private enum Friends: CaseIterable {
    case Antony, Apple, Bosco, Joe, Microsoft, Muraosa, Ron, Saha, Sony, UncleWang
    
    var contact: Contact {
        switch self {
        case .Antony:
            return Contact(profileImage: Asset.Image.avatar01.name, name: L10nExtra.Contact.Name.antony)
        case .Apple:
            return Contact(profileImage: Asset.Image.avatar02.name, name: L10nExtra.Contact.Name.apple)
        case .Bosco:
            return Contact(profileImage: Asset.Image.avatar03.name, name: L10nExtra.Contact.Name.bosco)
        case .Joe:
            return Contact(profileImage: Asset.Image.avatar04.name, name: L10nExtra.Contact.Name.joe)
        case .Microsoft:
            return Contact(profileImage: Asset.Image.avatar05.name, name: L10nExtra.Contact.Name.microsoft)
        case .Muraosa:
            return Contact(profileImage: Asset.Image.avatar06.name, name: L10nExtra.Contact.Name.muraosa)
        case .Ron:
            return Contact(profileImage: Asset.Image.avatar07.name, name: L10nExtra.Contact.Name.ron)
        case .Saha:
            return Contact(profileImage: Asset.Image.avatar08.name, name: L10nExtra.Contact.Name.saha)
        case .Sony:
            return Contact(profileImage: Asset.Image.avatar09.name, name: L10nExtra.Contact.Name.sony)
        case .UncleWang:
            return Contact(profileImage: Asset.Image.avatar10.name, name: L10nExtra.Contact.Name.uncleWang)
        }
    }
}


