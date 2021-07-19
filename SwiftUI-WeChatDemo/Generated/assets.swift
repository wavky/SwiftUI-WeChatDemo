// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
import SwiftUI

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal enum Color {
    internal static let accentColor = ColorAsset(name: "AccentColor")
    internal static let backgroudGray = ColorAsset(name: "BackgroudGray")
    internal static let chatGray = ColorAsset(name: "ChatGray")
    internal static let chatGreen = ColorAsset(name: "ChatGreen")
    internal static let channelsOrange = ColorAsset(name: "ChannelsOrange")
    internal static let liveRed = ColorAsset(name: "LiveRed")
    internal static let miniProgramsPurple = ColorAsset(name: "MiniProgramsPurple")
    internal static let momentsBlue = ColorAsset(name: "moments.blue")
    internal static let momentsGreen = ColorAsset(name: "moments.green")
    internal static let momentsRed = ColorAsset(name: "moments.red")
    internal static let momentsYellow = ColorAsset(name: "moments.yellow")
    internal static let nearbyBlue = ColorAsset(name: "NearbyBlue")
    internal static let scanBlue = ColorAsset(name: "ScanBlue")
    internal static let searchRed = ColorAsset(name: "SearchRed")
    internal static let shakeBlue = ColorAsset(name: "ShakeBlue")
    internal static let topStoriesYellow = ColorAsset(name: "TopStoriesYellow")
    internal static let lightGray = ColorAsset(name: "LightGray")
    internal static let cardsBlue = ColorAsset(name: "CardsBlue")
    internal static let favoritesBlue = ColorAsset(name: "favorites.blue")
    internal static let favoritesRed = ColorAsset(name: "favorites.red")
    internal static let favoritesYellow = ColorAsset(name: "favorites.yellow")
    internal static let meMomentsBlue = ColorAsset(name: "MeMomentsBlue")
    internal static let payGreen = ColorAsset(name: "PayGreen")
    internal static let settingsBlue = ColorAsset(name: "SettingsBlue")
    internal static let stickerYellow = ColorAsset(name: "StickerYellow")
    internal static let searchBarBackgroundGray = ColorAsset(name: "SearchBarBackgroundGray")
    internal static let searchGray = ColorAsset(name: "SearchGray")
    internal static let tabbarGray = ColorAsset(name: "TabbarGray")
    internal static let topBarGray = ColorAsset(name: "TopBarGray")
  }
  internal enum Image {
    internal static let splash = ImageAsset(name: "Splash")
    internal static let avatar01 = ImageAsset(name: "avatar01")
    internal static let avatar02 = ImageAsset(name: "avatar02")
    internal static let avatar03 = ImageAsset(name: "avatar03")
    internal static let avatar04 = ImageAsset(name: "avatar04")
    internal static let avatar05 = ImageAsset(name: "avatar05")
    internal static let avatar06 = ImageAsset(name: "avatar06")
    internal static let avatar07 = ImageAsset(name: "avatar07")
    internal static let avatar08 = ImageAsset(name: "avatar08")
    internal static let avatar09 = ImageAsset(name: "avatar09")
    internal static let avatar10 = ImageAsset(name: "avatar10")
    internal static let avatarMe = ImageAsset(name: "avatar_me")
    internal static let discoverChannels = ImageAsset(name: "discover.channels")
    internal static let discoverLive = ImageAsset(name: "discover.live")
    internal static let discoverMiniPrograms = ImageAsset(name: "discover.miniPrograms")
    internal static let discoverMoments = ImageAsset(name: "discover.moments")
    internal static let discoverNearby = ImageAsset(name: "discover.nearby")
    internal static let discoverScan = ImageAsset(name: "discover.scan")
    internal static let discoverSearch = ImageAsset(name: "discover.search")
    internal static let discoverShake = ImageAsset(name: "discover.shake")
    internal static let discoverTopStories = ImageAsset(name: "discover.topStories")
    internal static let meCards = ImageAsset(name: "me.cards")
    internal static let meChannels = ImageAsset(name: "me.channels")
    internal static let meFavorites = ImageAsset(name: "me.favorites")
    internal static let meMoments = ImageAsset(name: "me.moments")
    internal static let mePay = ImageAsset(name: "me.pay")
    internal static let meSettings = ImageAsset(name: "me.settings")
    internal static let meSticker = ImageAsset(name: "me.sticker")
    internal static let myprofileQrcodeIcon = ImageAsset(name: "myprofile.qrcode.icon")
    internal static let myprofileQrcode = ImageAsset(name: "myprofile.qrcode")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif
  @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
  internal private(set) lazy var color: SwiftUI.Color = { SwiftUI.Color(name) }()

  @available(macOS 10.13, *)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  internal private(set) lazy var nsColor: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  @available(macOS, unavailable)
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
  internal private(set) lazy var uiColor: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
}

internal extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
