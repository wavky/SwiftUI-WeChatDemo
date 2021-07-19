//
//  ContactsView.swift
//  SwiftUI-WeChatDemo
//
//  Created by Wavky Huang on 2021/07/14.
//

import SwiftUI

struct ContactsView: View {
    @Environment(\.locale) var locale
    
    private var contactGroups: [ContactGroup] {
        getDefaultContactList()
            .group(withLocale: locale)
            .sortedList()
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                SearchBarView()
                List {
                    ForEach(contactGroups, id: \.self) { group in
                        // Completions will crash if ForEach nest together
                        ContactSection(contactGroup: group)
                    }
                }
                .listStyle(PlainListStyle())
            }
            .background(Asset.Color.backgroudGray.color)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(L10n.Tabs.contacts.key)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {}) {
                        Image(systemName: "person.badge.plus")
                    }
                }
            }
        }.accentColor(.black)
    }
}

private struct ContactSection: View {
    let contactGroup: ContactGroup
    
    var body: some View {
        Section(header: Text(String(contactGroup.groupKey)).fontWeight(.regular)) {
            ForEach(contactGroup.groupValue, id: \.self) { contact in
                ContactItemView(contact: contact)
            }
        }
    }
}

private extension Array where Element == Contact {
    /**
     Random contact array to random dictionary.
     
     `[Contact] -> [Character : [Contact]]`
     
     Example:
     ```
     [Contact(China), Contact(Japan), Contact(America), Contact(Chile)]
                    ↓
     ["C": [Contact(Chile), Contact(China)],
     "J": [Contact(Japan)],
     "A": [Contact(America)]]
     ```
     */
    func group(withLocale locale: Locale) -> [Character : [Contact]] {
        let sorted = sorted {
            $0.name.text(withLocale: locale) < $1.name.text(withLocale: locale)
        }
        var sortedDict: [Character : [Contact]] = [:]
        for contact in sorted {
            guard let key = contact.name.text(withLocale: locale).first else {
                continue
            }
            var group = sortedDict[key] ?? []
            group.append(contact)
            sortedDict[key] = group
        }
        return sortedDict
    }
}

private extension Dictionary where Key == Character, Value == [Contact] {
    /**
     Random dictionary to sorted array of contact's group.
     
     `[Character : [Contact]] -> [ContactGroup]`
     
     Example:
     ```
     ["C": [Contact(Chile), Contact(China)],
     "J": [Contact(Japan)],
     "A": [Contact(America)]]
                    ↓
     [ContactGroup("A", [Contact(America)]),
     ContactGroup("C", [Contact(Chile), Contact(China)]),
     ContactGroup("J", [Contact(Japan)])]
     ```
     */
    func sortedList() -> [ContactGroup] {
        var sortedList: [ContactGroup] = []
        let sortedKeys = keys.sorted()
        for key in sortedKeys {
            if let contacts = self[key] {
                sortedList.append(
                    ContactGroup(groupKey: key,
                                 groupValue: contacts)
                )
            }
        }
        return sortedList
    }
}

private struct ContactGroup: Hashable {
    let groupKey: Character
    let groupValue: [Contact]
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
