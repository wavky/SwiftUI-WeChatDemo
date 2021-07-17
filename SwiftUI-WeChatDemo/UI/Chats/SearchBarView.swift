//
//  SearchBarView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/16.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack {
            (Text(Image(systemName: "magnifyingglass"))+Text(" ")+Text(L10n.SearchBar.hint.key))
                .foregroundColor(Asset.Color.searchGray.color)
                .padding(8)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 4))
        }
        .padding(8)
        .background(Asset.Color.backgroudGray.color)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}

