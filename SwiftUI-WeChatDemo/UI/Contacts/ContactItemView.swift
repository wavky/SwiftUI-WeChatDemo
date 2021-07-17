//
//  ContactItemView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/17.
//

import SwiftUI

struct ContactItemView: View {
    let contact: Contact
    
    var body: some View {
        HStack() {
            Image(contact.profileImage)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(4.0)
                .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.gray, lineWidth: 1))
            Spacer(minLength: 15)
            VStack(alignment: .leading) {
                Spacer()
                Text(contact.name)
                    .font(.title3)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
        }
        .padding(.trailing)
        .frame(height: 60, alignment: .leading)
        .frame(maxWidth: .infinity)
    }
}

struct ContactItemView_Previews: PreviewProvider {
    static let contacts = getDefaultContactList().shuffled()
    
    static var previews: some View {
        ScrollView {
            ContactItemView(contact: contacts[0])
            ContactItemView(contact: contacts[1])
            ContactItemView(contact: contacts[2])
        }
    }
}
