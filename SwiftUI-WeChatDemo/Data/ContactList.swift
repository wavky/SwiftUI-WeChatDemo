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
            return Contact(profileImage: Asset.Image.avatar01.name, name: L10nExtra.Contact.Name.antony.text)
        case .Apple:
            return Contact(profileImage: Asset.Image.avatar02.name, name: L10nExtra.Contact.Name.apple.text)
        case .Bosco:
            return Contact(profileImage: Asset.Image.avatar03.name, name: L10nExtra.Contact.Name.bosco.text)
        case .Joe:
            return Contact(profileImage: Asset.Image.avatar04.name, name: L10nExtra.Contact.Name.joe.text)
        case .Microsoft:
            return Contact(profileImage: Asset.Image.avatar05.name, name: L10nExtra.Contact.Name.microsoft.text)
        case .Muraosa:
            return Contact(profileImage: Asset.Image.avatar06.name, name: L10nExtra.Contact.Name.muraosa.text)
        case .Ron:
            return Contact(profileImage: Asset.Image.avatar07.name, name: L10nExtra.Contact.Name.ron.text)
        case .Saha:
            return Contact(profileImage: Asset.Image.avatar08.name, name: L10nExtra.Contact.Name.saha.text)
        case .Sony:
            return Contact(profileImage: Asset.Image.avatar09.name, name: L10nExtra.Contact.Name.sony.text)
        case .UncleWang:
            return Contact(profileImage: Asset.Image.avatar10.name, name: L10nExtra.Contact.Name.uncleWang.text)
        }
    }
}


