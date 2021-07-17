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
  /// WeChat
  public static let appName = LocalizedString(lookupKey: "AppName")
  public enum Discover {
    /// Channels
    public static let channels = LocalizedString(lookupKey: "Discover.Channels")
    /// Live
    public static let live = LocalizedString(lookupKey: "Discover.Live")
    /// Mini Programs
    public static let miniPrograms = LocalizedString(lookupKey: "Discover.MiniPrograms")
    /// Moments
    public static let moments = LocalizedString(lookupKey: "Discover.Moments")
    /// Nearby
    public static let nearby = LocalizedString(lookupKey: "Discover.Nearby")
    /// Scan
    public static let scan = LocalizedString(lookupKey: "Discover.Scan")
    /// Search
    public static let search = LocalizedString(lookupKey: "Discover.Search")
    /// Shake
    public static let shake = LocalizedString(lookupKey: "Discover.Shake")
    /// Top Stories
    public static let topStories = LocalizedString(lookupKey: "Discover.TopStories")
    public enum Live {
      /// Live
      public static let onAir = LocalizedString(lookupKey: "Discover.Live.OnAir")
    }
  }
  public enum Me {
    /// Cards & Offers
    public static let cards = LocalizedString(lookupKey: "Me.Cards")
    /// Channels
    public static let channels = LocalizedString(lookupKey: "Me.Channels")
    /// Favorites
    public static let favorites = LocalizedString(lookupKey: "Me.Favorites")
    /// Moments
    public static let moments = LocalizedString(lookupKey: "Me.Moments")
    /// Pay
    public static let pay = LocalizedString(lookupKey: "Me.Pay")
    /// Settings
    public static let settings = LocalizedString(lookupKey: "Me.Settings")
    /// Sticker Gallery
    public static let sticker = LocalizedString(lookupKey: "Me.Sticker")
  }
  public enum MyProfile {
    /// Wavky Huang
    public static let name = LocalizedString(lookupKey: "MyProfile.Name")
    /// Status
    public static let status = LocalizedString(lookupKey: "MyProfile.Status")
    /// WeChat ID: 
    public static let weChatID = LocalizedString(lookupKey: "MyProfile.WeChatID")
  }
  public enum SearchBar {
    /// Search
    public static let hint = LocalizedString(lookupKey: "SearchBar.Hint")
  }
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
