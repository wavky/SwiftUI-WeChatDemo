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

public enum L10nExtra {
  public enum Contact {
    public enum Name {
      /// Antony
      public static let antony = LocalizedString(table: "Contact", lookupKey: "Name.Antony")
      /// Apple
      public static let apple = LocalizedString(table: "Contact", lookupKey: "Name.Apple")
      /// Bosco
      public static let bosco = LocalizedString(table: "Contact", lookupKey: "Name.Bosco")
      /// Joe
      public static let joe = LocalizedString(table: "Contact", lookupKey: "Name.Joe")
      /// Microsoft
      public static let microsoft = LocalizedString(table: "Contact", lookupKey: "Name.Microsoft")
      /// Muraosa
      public static let muraosa = LocalizedString(table: "Contact", lookupKey: "Name.Muraosa")
      /// Ron
      public static let ron = LocalizedString(table: "Contact", lookupKey: "Name.Ron")
      /// Saha
      public static let saha = LocalizedString(table: "Contact", lookupKey: "Name.Saha")
      /// Sony
      public static let sony = LocalizedString(table: "Contact", lookupKey: "Name.Sony")
      /// UncleWang
      public static let uncleWang = LocalizedString(table: "Contact", lookupKey: "Name.UncleWang")
    }
  }
  public enum LastMessage {
    public enum DateTime {
      /// Monday
      public static let monday = LocalizedString(table: "LastMessage", lookupKey: "DateTime.Monday")
      /// Sunday
      public static let sunday = LocalizedString(table: "LastMessage", lookupKey: "DateTime.Sunday")
      /// Yesterday
      public static let yesterday = LocalizedString(table: "LastMessage", lookupKey: "DateTime.Yesterday")
    }
    public enum Message {
      /// Aloha
      public static let aloha = LocalizedString(table: "LastMessage", lookupKey: "Message.Aloha")
      /// Are you still there?
      public static let areYouStillThere = LocalizedString(table: "LastMessage", lookupKey: "Message.AreYouStillThere")
      /// Hello
      public static let hello = LocalizedString(table: "LastMessage", lookupKey: "Message.Hello")
      /// Hey
      public static let hey = LocalizedString(table: "LastMessage", lookupKey: "Message.Hey")
      /// Hi
      public static let hi = LocalizedString(table: "LastMessage", lookupKey: "Message.Hi")
      /// How are you?
      public static let howAreYou = LocalizedString(table: "LastMessage", lookupKey: "Message.HowAreYou")
      /// I am robot.
      public static let iAmRobot = LocalizedString(table: "LastMessage", lookupKey: "Message.IAmRobot")
      /// I love you!
      public static let iLoveYou = LocalizedString(table: "LastMessage", lookupKey: "Message.ILoveYou")
      /// Nice to meet you~
      public static let niceToMeetYou = LocalizedString(table: "LastMessage", lookupKey: "Message.NiceToMeetYou")
      /// The Matrix is looking for you.
      public static let theMatrixIsLookingForYou = LocalizedString(table: "LastMessage", lookupKey: "Message.TheMatrixIsLookingForYou")
    }
  }
}

// MARK: - Implementation Details

private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
      return Bundle.module
    #else
      return Bundle(for: BundleToken.self)
    #endif
  }()
}
