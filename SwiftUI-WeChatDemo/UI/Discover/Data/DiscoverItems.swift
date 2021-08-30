//
//  DiscoverItems.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/17.
//

import Foundation
import SwiftUI

func getDiscoverItems() -> [DiscoverItemName : ItemInfo] {
    let contacts = getDefaultContactList().shuffled()
    return [
        .Moments: ItemInfo(
            icon: Asset.Image.discoverMoments.name,
            iconPattern: IconPattern.AngularGradient(
                AngularGradient(gradient: Gradient(
                                    colors: [
                                        Asset.Color.momentsBlue.color,
                                        Asset.Color.momentsGreen.color,
                                        Asset.Color.momentsYellow.color,
                                        Asset.Color.momentsRed.color,
                                        Asset.Color.momentsBlue.color
                                    ]),
                                center: .center)),
            title: L10n.Discover.moments.key,
            name: nil,
            profileImage: contacts[0].profileImage),
        .Channels: ItemInfo(
            icon: Asset.Image.discoverChannels.name,
            iconPattern: IconPattern.Color(Asset.Color.channelsOrange.color),
            title: L10n.Discover.channels.key,
            name: contacts[1].name,
            profileImage: contacts[1].profileImage),
        .Live: ItemInfo(
            icon: Asset.Image.discoverLive.name,
            iconPattern: IconPattern.Color(Asset.Color.liveRed.color),
            title: L10n.Discover.live.key,
            name: L10n.Discover.Live.onAir,
            profileImage: contacts[2].profileImage),
        .Scan: ItemInfo(
            icon: Asset.Image.discoverScan.name,
            iconPattern: IconPattern.Color(Asset.Color.scanBlue.color),
            title: L10n.Discover.scan.key,
            name: nil,
            profileImage: nil),
        .Shake: ItemInfo(
            icon: Asset.Image.discoverShake.name,
            iconPattern: IconPattern.Color(Asset.Color.shakeBlue.color),
            title: L10n.Discover.shake.key,
            name: nil,
            profileImage: nil),
        .TopStories: ItemInfo(
            icon: Asset.Image.discoverTopStories.name,
            iconPattern: IconPattern.Color(Asset.Color.topStoriesYellow.color),
            title: L10n.Discover.topStories.key,
            name: nil,
            profileImage: nil),
        .Search: ItemInfo(
            icon: Asset.Image.discoverSearch.name,
            iconPattern: IconPattern.Color(Asset.Color.searchRed.color),
            title: L10n.Discover.search.key,
            name: nil,
            profileImage: nil),
        .Nearby: ItemInfo(
            icon: Asset.Image.discoverNearby.name,
            iconPattern: IconPattern.Color(Asset.Color.nearbyBlue.color),
            title: L10n.Discover.nearby.key,
            name: nil,
            profileImage: nil),
        .MiniPrograms: ItemInfo(
            icon: Asset.Image.discoverMiniPrograms.name,
            iconPattern: IconPattern.Color(Asset.Color.miniProgramsPurple.color),
            title: L10n.Discover.miniPrograms.key,
            name: nil,
            profileImage: nil)
    ]
}

enum DiscoverItemName {
    case Moments, Channels, Live, Scan,
         Shake, TopStories, Search, Nearby,
         MiniPrograms
}
