//
//  MyProfile.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/17.
//

import Foundation
import SwiftUI

struct MyProfile {
    let profileImage: String = Asset.Image.avatarMe.name
    let qrcodeImage: String = Asset.Image.myprofileQrcode.name
    let name: LocalizedStringKey = L10n.MyProfile.name.key
    let weChatID: String = "Wavky_Huang"
}
