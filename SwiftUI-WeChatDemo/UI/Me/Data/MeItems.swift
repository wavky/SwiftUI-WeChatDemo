//
//  MeItems.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/17.
//

import Foundation
import SwiftUI

func getMeItems() -> [MeItemName : ItemInfo] {
    return [
        .Pay: ItemInfo(
            icon: Asset.Image.mePay.name,
            iconPattern: IconPattern.Color(Asset.Color.payGreen.color),
            title: L10n.Me.pay.key,
            name: nil,
            profileImage: nil),
        .Favorites: ItemInfo(
            icon: Asset.Image.meFavorites.name,
            iconPattern: IconPattern.AngularGradient(
                AngularGradient(gradient: Gradient(
                                    colors: [
                                        Asset.Color.favoritesRed.color,
                                        Asset.Color.favoritesYellow.color,
                                        Asset.Color.favoritesYellow.color,
                                        Asset.Color.favoritesBlue.color,
                                        Asset.Color.favoritesRed.color
                                    ]),
                                center: .center,
                                angle: Angle(degrees: 10))),
            title: L10n.Me.favorites.key,
            name: nil,
            profileImage: nil),
        .Moments: ItemInfo(
            icon: Asset.Image.meMoments.name,
            iconPattern: IconPattern.Color(Asset.Color.meMomentsBlue.color),
            title: L10n.Me.moments.key,
            name: nil,
            profileImage: nil),
        .Channels: ItemInfo(
            icon: Asset.Image.meChannels.name,
            iconPattern: IconPattern.Color(Asset.Color.channelsOrange.color),
            title: L10n.Me.channels.key,
            name: nil,
            profileImage: nil),
        .Cards: ItemInfo(
            icon: Asset.Image.meCards.name,
            iconPattern: IconPattern.Color(Asset.Color.cardsBlue.color),
            title: L10n.Me.cards.key,
            name: nil,
            profileImage: nil),
        .Sticker: ItemInfo(
            icon: Asset.Image.meSticker.name,
            iconPattern: IconPattern.Color(Asset.Color.stickerYellow.color),
            title: L10n.Me.sticker.key,
            name: nil,
            profileImage: nil),
        .Settings: ItemInfo(
            icon: Asset.Image.meSettings.name,
            iconPattern: IconPattern.Color(Asset.Color.settingsBlue.color),
            title: L10n.Me.settings.key,
            name: nil,
            profileImage: nil)
    ]
}

enum MeItemName {
    case Pay, Favorites, Moments, Channels,
         Cards, Sticker, Settings
}

