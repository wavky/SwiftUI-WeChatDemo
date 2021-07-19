// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen
// Derived from https://github.com/SwiftGen/SwiftGen/issues/685#issuecomment-782893242
// Origin see https://github.com/SwiftGen/SwiftGen/blob/stable/templates/strings/structured-swift5.stencil
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
  /// WeChat
  public static let appName = LocalizedString(table: "Localizable", lookupKey: "AppName")
  public enum Discover {
    /// Channels
    public static let channels = LocalizedString(table: "Localizable", lookupKey: "Discover.Channels")
    /// Live
    public static let live = LocalizedString(table: "Localizable", lookupKey: "Discover.Live")
    /// Mini Programs
    public static let miniPrograms = LocalizedString(table: "Localizable", lookupKey: "Discover.MiniPrograms")
    /// Moments
    public static let moments = LocalizedString(table: "Localizable", lookupKey: "Discover.Moments")
    /// Nearby
    public static let nearby = LocalizedString(table: "Localizable", lookupKey: "Discover.Nearby")
    /// Scan
    public static let scan = LocalizedString(table: "Localizable", lookupKey: "Discover.Scan")
    /// Search
    public static let search = LocalizedString(table: "Localizable", lookupKey: "Discover.Search")
    /// Shake
    public static let shake = LocalizedString(table: "Localizable", lookupKey: "Discover.Shake")
    /// Top Stories
    public static let topStories = LocalizedString(table: "Localizable", lookupKey: "Discover.TopStories")
    public enum Live {
      /// Live
      public static let onAir = LocalizedString(table: "Localizable", lookupKey: "Discover.Live.OnAir")
    }
  }
  public enum Me {
    /// Cards & Offers
    public static let cards = LocalizedString(table: "Localizable", lookupKey: "Me.Cards")
    /// Channels
    public static let channels = LocalizedString(table: "Localizable", lookupKey: "Me.Channels")
    /// Favorites
    public static let favorites = LocalizedString(table: "Localizable", lookupKey: "Me.Favorites")
    /// Moments
    public static let moments = LocalizedString(table: "Localizable", lookupKey: "Me.Moments")
    /// Pay
    public static let pay = LocalizedString(table: "Localizable", lookupKey: "Me.Pay")
    /// Settings
    public static let settings = LocalizedString(table: "Localizable", lookupKey: "Me.Settings")
    /// Sticker Gallery
    public static let sticker = LocalizedString(table: "Localizable", lookupKey: "Me.Sticker")
  }
  public enum MyProfile {
    /// Wavky Huang
    public static let name = LocalizedString(table: "Localizable", lookupKey: "MyProfile.Name")
    /// Status
    public static let status = LocalizedString(table: "Localizable", lookupKey: "MyProfile.Status")
    /// WeChat ID: 
    public static let weChatID = LocalizedString(table: "Localizable", lookupKey: "MyProfile.WeChatID")
  }
  public enum QrCode {
    /// My QR Code
    public static let title = LocalizedString(table: "Localizable", lookupKey: "QrCode.Title")
  }
  public enum SearchBar {
    /// Search
    public static let hint = LocalizedString(table: "Localizable", lookupKey: "SearchBar.Hint")
  }
  public enum Tabs {
    /// Chats
    public static let chats = LocalizedString(table: "Localizable", lookupKey: "Tabs.Chats")
    /// Contacts
    public static let contacts = LocalizedString(table: "Localizable", lookupKey: "Tabs.Contacts")
    /// Discover
    public static let discover = LocalizedString(table: "Localizable", lookupKey: "Tabs.Discover")
    /// Me
    public static let me = LocalizedString(table: "Localizable", lookupKey: "Tabs.Me")
  }
}

// MARK: - Implementation Details
fileprivate func tr(_ table: String, _ key: String, _ locale: Locale = Locale.current, _ args: CVarArg...) -> String {
  let path = Bundle.main.path(forResource: locale.identifier, ofType: "lproj") ?? ""
  let format: String
  if let bundle = Bundle(path: path) {
    format = NSLocalizedString(key, tableName: table, bundle: bundle, comment: "")
  } else {
    format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
  }
  return String(format: format, locale: locale, arguments: args)
}

public struct LocalizedString: Hashable {
  let table: String
  fileprivate let lookupKey: String

  init(table: String, lookupKey: String) {
    self.table = table
    self.lookupKey = lookupKey
  }

  var key: LocalizedStringKey {
    LocalizedStringKey(lookupKey)
  }

  var text: String {
    tr(table, lookupKey)
  }

  func text(withLocale locale: Locale) -> String {
    tr(table, lookupKey, locale)
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
