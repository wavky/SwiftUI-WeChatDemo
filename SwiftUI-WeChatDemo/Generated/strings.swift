// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen
// Copy from https://github.com/SwiftGen/SwiftGen/issues/685#issuecomment-782893242
//
// Example:
//
//  var body: some View {
//    VStack {
//      Text(L10n.Login.PageTitle.header.key) // return LocalizedStringKey
//      CustomView(string: L10n.Login.Step1.title.text) // return String
//    }
//  }

import SwiftUI

// MARK: - Strings

public enum L10n {
  public enum Tabs {
    /// Chats
    public static let chats = LocalizedString(lookupKey: "Tabs.Chats")
    /// Contacts
    public static let contacts = LocalizedString(lookupKey: "Tabs.Contacts")
    /// Discover
    public static let discover = LocalizedString(lookupKey: "Tabs.Discover")
    /// Me
    public static let me = LocalizedString(lookupKey: "Tabs.Me")
  }
}

// MARK: - Implementation Details

extension L10n {
  fileprivate static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

public struct LocalizedString {
  internal let lookupKey: String

  var key: LocalizedStringKey {
    LocalizedStringKey(lookupKey)
  }

  var text: String {
    L10n.tr("Localizable", lookupKey)
  }
}

private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
      return Bundle.module
    #else
      return Bundle(for: BundleToken.self)
    #endif
  }()
}
