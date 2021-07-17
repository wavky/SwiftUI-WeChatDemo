//
//  QrCodeView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/17.
//

import SwiftUI

struct QrCodeView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Image(Asset.Image.myprofileQrcode.name)
                .resizable()
                .scaledToFit()
                .cornerRadius(8.0)
        }
        .padding(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Asset.Color.backgroudGray.color)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(L10n.QrCode.title.key)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { presentationMode.wrappedValue.dismiss() }) {
                    Image(systemName: "chevron.backward")
                }
            }
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {}) {
                    Image(systemName: "ellipsis")
                }
            }
        }
    }
}

struct QrCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QrCodeView()
    }
}
