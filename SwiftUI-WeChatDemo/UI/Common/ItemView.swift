//
//  ItemView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/16.
//

import SwiftUI

struct ItemView: View {
    let itemInfo: ItemInfo
    let withDivider: Bool
    let withBudge: Bool
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Icon(image: itemInfo.icon, pattern: itemInfo.iconPattern)
                    .resizeAsIcon()
                Spacer(minLength: 15)
                
                VStack(spacing:0) {
                    Spacer(minLength: 0)
                    HStack {
                        Text(itemInfo.title)
                            .fontWeight(.light)
                            .font(.title3)
                            .lineLimit(1)
                            .frame(alignment: .leading)
                        Spacer()
                        if let name = itemInfo.name {
                            Text(name.key, tableName: name.table)
                                .font(.callout)
                                .fontWeight(.light)
                                .lineLimit(1)
                                .foregroundColor(.gray)
                                .frame(alignment: .leading)
                        }
                        if let profileImage = itemInfo.profileImage {
                            Image(profileImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40, alignment: .center)
                                .clipShape(Circle())
                                .withBadge(withBudge, radius: 5)
                        }
                        Image(systemName: "chevron.forward")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18, height: 18, alignment: .center)
                            .foregroundColor(Asset.Color.lightGray.color)
                    }
                    .padding(.vertical, 12)
                    Spacer(minLength: 0)
                    if withDivider {
                        Divider()
                    }
                }
            }
        }
        .accentColor(.black)
        .padding(.horizontal)
        .background(Color.white)
        .frame(height: 65)
        .frame(maxWidth: .infinity)
    }
}

private struct Icon: View {
    let image: String
    let pattern: IconPattern?
    
    var body: some View {
        switch pattern {
        case .Color(let color):
            return AnyView(color.mask(Image(image).fitSize()))
        case .AngularGradient(let gradient):
            return AnyView(gradient.mask(Image(image).fitSize()))
        case .LinearGradient(let gradient):
            return AnyView(gradient.mask(Image(image).fitSize()))
        case .RadialGradient(let gradient):
            return AnyView(gradient.mask(Image(image).fitSize()))
        default:
            return AnyView(Image(image).fitSize())
        }
    }
}

private extension Image {
    func fitSize() -> some View {
        return self.resizable()
            .scaledToFit()
    }
}

private extension View {
    func resizeAsIcon() -> some View {
        self.frame(width: 30, height: 30, alignment: .center)
    }
}

struct ItemInfo {
    let icon: String
    let iconPattern: IconPattern?
    let title: LocalizedStringKey
    let name: LocalizedString?
    let profileImage: String?
}

extension ItemInfo {
    func toItemView(withDivider: Bool = false, withBudge: Bool = true) -> ItemView {
        ItemView(itemInfo: self, withDivider: withDivider, withBudge: withBudge)
    }
}

enum IconPattern {
    case Color(Color)
    case AngularGradient(AngularGradient)
    case LinearGradient(LinearGradient)
    case RadialGradient(RadialGradient)
}

struct ItemView_Previews: PreviewProvider {
    static let contacts = getDefaultContactList().shuffled()
    static let itemInfos = [
        ItemInfo(icon: Asset.Image.discoverMoments.name, iconPattern: IconPattern.AngularGradient(AngularGradient(gradient: Gradient(colors: [Asset.Color.momentsBlue.color, Asset.Color.momentsGreen.color, Asset.Color.momentsYellow.color, Asset.Color.momentsRed.color, Asset.Color.momentsBlue.color]), center: .center)), title: "Moments", name: contacts[0].name, profileImage: contacts[0].profileImage),
        ItemInfo(icon: Asset.Image.discoverChannels.name, iconPattern: IconPattern.Color(Asset.Color.channelsOrange.color), title: "Channels", name: nil, profileImage: contacts[1].profileImage),
        ItemInfo(icon: Asset.Image.discoverLive.name, iconPattern: IconPattern.Color(Asset.Color.liveRed.color), title: "Live", name: nil, profileImage: contacts[2].profileImage)
    ]
    static var previews: some View {
        VStack(spacing: 0) {
            ForEach(0..<3, id: \.self) { index in
                ItemView(itemInfo: itemInfos[index], withDivider: true, withBudge: true)
            }
            Spacer()
        }
    }
}
