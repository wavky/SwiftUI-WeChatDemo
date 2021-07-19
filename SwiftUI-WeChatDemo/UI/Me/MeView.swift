//
//  MeView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import SwiftUI

struct MeView: View {
    private let items = getMeItems()
    private let spaceHeight: CGFloat = 12
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing:0) {
                    NavigationLink(destination: QrCodeView()) {
                        MyProfileView()
                    }
                    Group {
                        Spacer(minLength: spaceHeight)
                        LanguageSwitcher()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Pay]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Favorites]?.toItemBarView(withDivider: true)
                        items[.Moments]?.toItemBarView(withDivider: true)
                        items[.Channels]?.toItemBarView(withDivider: true)
                        items[.Cards]?.toItemBarView(withDivider: true)
                        items[.Sticker]?.toItemBarView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Settings]?.toItemBarView()
                    }
                    Spacer()
                }
            }
            .background(Asset.Color.backgroudGray.color)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
        .accentColor(.black)
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
