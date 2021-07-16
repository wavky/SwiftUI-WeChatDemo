//
//  DiscoverView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import SwiftUI

struct DiscoverView: View {
    private let items = getDiscoverItems()
    private let spaceHeight: CGFloat = 12
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing:0) {
                    Group {
                        items[DiscoverItemName.Moments]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[DiscoverItemName.Channels]?.toItemBarView(withDivider: true)
                        items[DiscoverItemName.Live]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[DiscoverItemName.Scan]?.toItemBarView(withDivider: true)
                        items[DiscoverItemName.Shake]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[DiscoverItemName.TopStories]?.toItemBarView(withDivider: true)
                        items[DiscoverItemName.Search]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[DiscoverItemName.Nearby]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[DiscoverItemName.MiniPrograms]?.toItemBarView()
                    }
                    Spacer()
                }
            }
            .background(Asset.Color.topBarGray.color)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(L10n.Tabs.discover.key)
        }
    }
}

extension ItemBarInfo {
    func toItemBarView(withDivider: Bool = false) -> ItemBarView {
        ItemBarView(itemBarInfo: self, withDivider: withDivider)
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
