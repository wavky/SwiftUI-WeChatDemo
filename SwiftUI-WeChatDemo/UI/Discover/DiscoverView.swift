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
                        items[.Moments]?.toItemView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Channels]?.toItemView(withDivider: true)
                        items[.Live]?.toItemView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Scan]?.toItemView(withDivider: true)
                        items[.Shake]?.toItemView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.TopStories]?.toItemView(withDivider: true)
                        items[.Search]?.toItemView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Nearby]?.toItemView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.MiniPrograms]?.toItemView()
                    }
                    Spacer()
                }
            }
            .background(Asset.Color.backgroudGray.color)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(L10n.Tabs.discover.key)
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
