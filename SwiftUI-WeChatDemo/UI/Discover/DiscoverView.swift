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
                        items[.Moments]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Channels]?.toItemBarView(withDivider: true)
                        items[.Live]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Scan]?.toItemBarView(withDivider: true)
                        items[.Shake]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.TopStories]?.toItemBarView(withDivider: true)
                        items[.Search]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Nearby]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.MiniPrograms]?.toItemBarView()
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
