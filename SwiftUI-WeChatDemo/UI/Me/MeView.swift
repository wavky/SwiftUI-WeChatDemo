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
                        items[.Pay]?.toItemView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Favorites]?.toItemView(withDivider: true)
                        items[.Moments]?.toItemView(withDivider: true)
                        items[.Channels]?.toItemView(withDivider: true)
                        items[.Cards]?.toItemView(withDivider: true)
                        items[.Sticker]?.toItemView()
                        Spacer(minLength: spaceHeight)
                    }
                    Group {
                        items[.Settings]?.toItemView()
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
