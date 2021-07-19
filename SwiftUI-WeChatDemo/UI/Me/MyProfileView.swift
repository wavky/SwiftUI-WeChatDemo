//
//  MyProfileView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/17.
//

import SwiftUI

struct MyProfileView: View {
    private let profile = MyProfile()
    
    var body: some View {
        HStack{
            Image(profile.profileImage)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70, alignment: .center)
                .cornerRadius(8.0)
                .padding(.horizontal, 10)
            VStack(alignment: .leading, spacing: 10) {
                Text(L10n.MyProfile.name.key)
                    .font(.title2)
                (Text(L10n.MyProfile.weChatID.key)+Text(profile.weChatID))
                    .font(.body)
                    .foregroundColor(Color.gray)
                    .lineLimit(1)
                (Text(Image(systemName: "plus"))+Text(L10n.MyProfile.status.key))
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                    .padding(2)
                    .padding(.trailing, 8)
                    .overlay(Capsule()
                                .stroke(lineWidth: 0.5)
                                .foregroundColor(Asset.Color.lightGray.color))
            }.offset(x: 0, y: 16.0)
            Spacer()
            Group {
                Color.gray.mask(
                    Image(Asset.Image.myprofileQrcodeIcon.name)
                        .resizable()
                        .scaledToFit()
                ).frame(width: 20, height: 20)
                Image(systemName: "chevron.forward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18, alignment: .center)
                    .foregroundColor(Asset.Color.lightGray.color)
            }.offset(x: 0, y: 18.0)
        }
        .padding()
        .padding(.top, 20)
        .padding(.bottom, 36)
        .frame(maxWidth: .infinity)
        .background(Color.white)
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            MyProfileView()
                .overlay(Rectangle().stroke())
        }.background(Color.gray)
    }
}
