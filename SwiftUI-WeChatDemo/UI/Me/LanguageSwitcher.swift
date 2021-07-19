//
//  LanguageSwitcher.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/18.
//

import SwiftUI

struct LanguageSwitcher: View {
    private let languages = Language.allCases
    
    @AppStorage("AppLanguage")
    private var appLanguage: String = Language.English.code
    
    var body: some View {
        VStack {
            Picker(selection: $appLanguage, label: EmptyView()) {
                ForEach(languages, id: \.code) { lang in
                    Text(lang.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 40)
        }
    }
}

struct LanguageSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        LanguageSwitcher()
    }
}
