import 'package:flutter/widgets.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/icons/icon_data.dart';

// Copied from https://github.com/fluttercommunity/font_awesome_flutter/tree/master

part 'nomo_icons.g.dart';

/// Icons based on font awesome 6.4.2
@staticIconProvider
@StaticFieldsList()
class NomoIcons {
  /// Solid 0 icon
  ///
  /// https://fontawesome.com/icons/0?style=solid
  /// Digit Zero, nada, none, zero, zilch
  static const IconData zero = IconDataSolid(0x30);

  /// Solid 1 icon
  ///
  /// https://fontawesome.com/icons/1?style=solid
  /// Digit One, one
  static const IconData one = IconDataSolid(0x31);

  /// Solid 2 icon
  ///
  /// https://fontawesome.com/icons/2?style=solid
  /// Digit Two, two
  static const IconData two = IconDataSolid(0x32);

  /// Solid 3 icon
  ///
  /// https://fontawesome.com/icons/3?style=solid
  /// Digit Three, three
  static const IconData three = IconDataSolid(0x33);

  /// Solid 4 icon
  ///
  /// https://fontawesome.com/icons/4?style=solid
  /// Digit Four, four
  static const IconData four = IconDataSolid(0x34);

  /// Solid 5 icon
  ///
  /// https://fontawesome.com/icons/5?style=solid
  /// Digit Five, five
  static const IconData five = IconDataSolid(0x35);

  /// Solid 6 icon
  ///
  /// https://fontawesome.com/icons/6?style=solid
  /// Digit Six, six
  static const IconData six = IconDataSolid(0x36);

  /// Solid 7 icon
  ///
  /// https://fontawesome.com/icons/7?style=solid
  /// Digit Seven, seven
  static const IconData seven = IconDataSolid(0x37);

  /// Solid 8 icon
  ///
  /// https://fontawesome.com/icons/8?style=solid
  /// Digit Eight, eight
  static const IconData eight = IconDataSolid(0x38);

  /// Solid 9 icon
  ///
  /// https://fontawesome.com/icons/9?style=solid
  /// Digit Nine, nine
  static const IconData nine = IconDataSolid(0x39);

  /// Brands 42.group icon
  ///
  /// https://fontawesome.com/icons/42-group?style=brands
  static const IconData fortyTwoGroup = IconDataBrands(0xe080);

  /// Alias innosoft for icon [fortyTwoGroup]
  @Deprecated('Use "fortyTwoGroup" instead.')
  static const IconData innosoft = fortyTwoGroup;

  /// Brands 500px icon
  ///
  /// https://fontawesome.com/icons/500px?style=brands
  static const IconData fiveHundredPx = IconDataBrands(0xf26e);

  /// Solid A icon
  ///
  /// https://fontawesome.com/icons/a?style=solid
  /// Latin Capital Letter A, Latin Small Letter A, letter
  static const IconData a = IconDataSolid(0x41);

  /// Brands Accessible Icon icon
  ///
  /// https://fontawesome.com/icons/accessible-icon?style=brands
  /// accessibility, handicap, person, wheelchair, wheelchair-alt
  static const IconData accessibleIcon = IconDataBrands(0xf368);

  /// Brands Accusoft icon
  ///
  /// https://fontawesome.com/icons/accusoft?style=brands
  static const IconData accusoft = IconDataBrands(0xf369);

  /// Solid Address Book icon
  ///
  /// https://fontawesome.com/icons/address-book?style=solid
  /// contact, directory, index, little black book, rolodex
  static const IconData solidAddressBook = IconDataSolid(0xf2b9);

  /// Alias contact-book for icon [solidAddressBook]
  @Deprecated('Use "solidAddressBook" instead.')
  static const IconData solidContactBook = solidAddressBook;

  /// Regular Address Book icon
  ///
  /// https://fontawesome.com/icons/address-book?style=regular
  /// contact, directory, index, little black book, rolodex
  static const IconData addressBook = IconDataRegular(0xf2b9);

  /// Alias contact-book for icon [addressBook]
  @Deprecated('Use "addressBook" instead.')
  static const IconData contactBook = addressBook;

  /// Solid Address Card icon
  ///
  /// https://fontawesome.com/icons/address-card?style=solid
  /// about, contact, id, identification, postcard, profile, registration
  static const IconData solidAddressCard = IconDataSolid(0xf2bb);

  /// Alias contact-card for icon [solidAddressCard]
  @Deprecated('Use "solidAddressCard" instead.')
  static const IconData solidContactCard = solidAddressCard;

  /// Alias vcard for icon [solidAddressCard]
  @Deprecated('Use "solidAddressCard" instead.')
  static const IconData solidVcard = solidAddressCard;

  /// Regular Address Card icon
  ///
  /// https://fontawesome.com/icons/address-card?style=regular
  /// about, contact, id, identification, postcard, profile, registration
  static const IconData addressCard = IconDataRegular(0xf2bb);

  /// Alias contact-card for icon [addressCard]
  @Deprecated('Use "addressCard" instead.')
  static const IconData contactCard = addressCard;

  /// Alias vcard for icon [addressCard]
  @Deprecated('Use "addressCard" instead.')
  static const IconData vcard = addressCard;

  /// Brands App.net icon
  ///
  /// https://fontawesome.com/icons/adn?style=brands
  static const IconData adn = IconDataBrands(0xf170);

  /// Brands Adversal icon
  ///
  /// https://fontawesome.com/icons/adversal?style=brands
  static const IconData adversal = IconDataBrands(0xf36a);

  /// Brands affiliatetheme icon
  ///
  /// https://fontawesome.com/icons/affiliatetheme?style=brands
  static const IconData affiliatetheme = IconDataBrands(0xf36b);

  /// Brands Airbnb icon
  ///
  /// https://fontawesome.com/icons/airbnb?style=brands
  static const IconData airbnb = IconDataBrands(0xf834);

  /// Brands Algolia icon
  ///
  /// https://fontawesome.com/icons/algolia?style=brands
  static const IconData algolia = IconDataBrands(0xf36c);

  /// Solid Align Center icon
  ///
  /// https://fontawesome.com/icons/align-center?style=solid
  /// format, middle, paragraph, text
  static const IconData alignCenter = IconDataSolid(0xf037);

  /// Solid Align Justify icon
  ///
  /// https://fontawesome.com/icons/align-justify?style=solid
  /// format, paragraph, text
  static const IconData alignJustify = IconDataSolid(0xf039);

  /// Solid Align Left icon
  ///
  /// https://fontawesome.com/icons/align-left?style=solid
  /// format, paragraph, text
  static const IconData alignLeft = IconDataSolid(0xf036);

  /// Solid Align Right icon
  ///
  /// https://fontawesome.com/icons/align-right?style=solid
  /// format, paragraph, text
  static const IconData alignRight = IconDataSolid(0xf038);

  /// Brands Alipay icon
  ///
  /// https://fontawesome.com/icons/alipay?style=brands
  static const IconData alipay = IconDataBrands(0xf642);

  /// Brands Amazon icon
  ///
  /// https://fontawesome.com/icons/amazon?style=brands
  static const IconData amazon = IconDataBrands(0xf270);

  /// Brands Amazon Pay icon
  ///
  /// https://fontawesome.com/icons/amazon-pay?style=brands
  static const IconData amazonPay = IconDataBrands(0xf42c);

  /// Brands Amilia icon
  ///
  /// https://fontawesome.com/icons/amilia?style=brands
  static const IconData amilia = IconDataBrands(0xf36d);

  /// Solid Anchor icon
  ///
  /// https://fontawesome.com/icons/anchor?style=solid
  /// anchor, berth, boat, dock, embed, link, maritime, moor, port, secure, ship, tool
  static const IconData anchor = IconDataSolid(0xf13d);

  /// Solid Anchor Circle Check icon
  ///
  /// https://fontawesome.com/icons/anchor-circle-check?style=solid
  /// marina, not affected, ok, okay, port
  static const IconData anchorCircleCheck = IconDataSolid(0xe4aa);

  /// Solid Anchor Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/anchor-circle-exclamation?style=solid
  /// affected, marina, port
  static const IconData anchorCircleExclamation = IconDataSolid(0xe4ab);

  /// Solid Anchor Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/anchor-circle-xmark?style=solid
  /// destroy, marina, port
  static const IconData anchorCircleXmark = IconDataSolid(0xe4ac);

  /// Solid Anchor Lock icon
  ///
  /// https://fontawesome.com/icons/anchor-lock?style=solid
  /// closed, lockdown, marina, port, quarantine
  static const IconData anchorLock = IconDataSolid(0xe4ad);

  /// Brands Android icon
  ///
  /// https://fontawesome.com/icons/android?style=brands
  /// robot
  static const IconData android = IconDataBrands(0xf17b);

  /// Brands AngelList icon
  ///
  /// https://fontawesome.com/icons/angellist?style=brands
  static const IconData angellist = IconDataBrands(0xf209);

  /// Solid Angle Down icon
  ///
  /// https://fontawesome.com/icons/angle-down?style=solid
  /// Down Arrowhead, arrow, caret, download, expand
  static const IconData angleDown = IconDataSolid(0xf107);

  /// Solid Angle Left icon
  ///
  /// https://fontawesome.com/icons/angle-left?style=solid
  /// Single Left-Pointing Angle Quotation Mark, arrow, back, caret, less, previous
  static const IconData angleLeft = IconDataSolid(0xf104);

  /// Solid Angle Right icon
  ///
  /// https://fontawesome.com/icons/angle-right?style=solid
  /// Single Right-Pointing Angle Quotation Mark, arrow, care, forward, more, next
  static const IconData angleRight = IconDataSolid(0xf105);

  /// Solid Angle Up icon
  ///
  /// https://fontawesome.com/icons/angle-up?style=solid
  /// Up Arrowhead, arrow, caret, collapse, upload
  static const IconData angleUp = IconDataSolid(0xf106);

  /// Solid Angles Down icon
  ///
  /// https://fontawesome.com/icons/angles-down?style=solid
  /// arrows, caret, download, expand
  static const IconData anglesDown = IconDataSolid(0xf103);

  /// Alias angle-double-down for icon [anglesDown]
  @Deprecated('Use "anglesDown" instead.')
  static const IconData angleDoubleDown = anglesDown;

  /// Solid Angles Left icon
  ///
  /// https://fontawesome.com/icons/angles-left?style=solid
  /// Left-Pointing Double Angle Quotation Mark, arrows, back, caret, laquo, previous, quote
  static const IconData anglesLeft = IconDataSolid(0xf100);

  /// Alias angle-double-left for icon [anglesLeft]
  @Deprecated('Use "anglesLeft" instead.')
  static const IconData angleDoubleLeft = anglesLeft;

  /// Solid Angles Right icon
  ///
  /// https://fontawesome.com/icons/angles-right?style=solid
  /// Right-Pointing Double Angle Quotation Mark, arrows, caret, forward, more, next, quote, raquo
  static const IconData anglesRight = IconDataSolid(0xf101);

  /// Alias angle-double-right for icon [anglesRight]
  @Deprecated('Use "anglesRight" instead.')
  static const IconData angleDoubleRight = anglesRight;

  /// Solid Angles Up icon
  ///
  /// https://fontawesome.com/icons/angles-up?style=solid
  /// arrows, caret, collapse, upload
  static const IconData anglesUp = IconDataSolid(0xf102);

  /// Alias angle-double-up for icon [anglesUp]
  @Deprecated('Use "anglesUp" instead.')
  static const IconData angleDoubleUp = anglesUp;

  /// Brands Angry Creative icon
  ///
  /// https://fontawesome.com/icons/angrycreative?style=brands
  static const IconData angrycreative = IconDataBrands(0xf36e);

  /// Brands Angular icon
  ///
  /// https://fontawesome.com/icons/angular?style=brands
  static const IconData angular = IconDataBrands(0xf420);

  /// Solid Ankh icon
  ///
  /// https://fontawesome.com/icons/ankh?style=solid
  /// Ankh, amulet, copper, coptic christianity, copts, crux ansata, egypt, venus
  static const IconData ankh = IconDataSolid(0xf644);

  /// Brands App Store icon
  ///
  /// https://fontawesome.com/icons/app-store?style=brands
  static const IconData appStore = IconDataBrands(0xf36f);

  /// Brands iOS App Store icon
  ///
  /// https://fontawesome.com/icons/app-store-ios?style=brands
  static const IconData appStoreIos = IconDataBrands(0xf370);

  /// Brands Apper Systems AB icon
  ///
  /// https://fontawesome.com/icons/apper?style=brands
  static const IconData apper = IconDataBrands(0xf371);

  /// Brands Apple icon
  ///
  /// https://fontawesome.com/icons/apple?style=brands
  /// fruit, ios, mac, operating system, os, osx
  static const IconData apple = IconDataBrands(0xf179);

  /// Brands Apple Pay icon
  ///
  /// https://fontawesome.com/icons/apple-pay?style=brands
  static const IconData applePay = IconDataBrands(0xf415);

  /// Solid Apple Whole icon
  ///
  /// https://fontawesome.com/icons/apple-whole?style=solid
  /// apple, fall, fruit, fuji, green, green apple, macintosh, orchard, red, red apple, seasonal, vegan
  static const IconData appleWhole = IconDataSolid(0xf5d1);

  /// Alias apple-alt for icon [appleWhole]
  @Deprecated('Use "appleWhole" instead.')
  static const IconData appleAlt = appleWhole;

  /// Solid Archway icon
  ///
  /// https://fontawesome.com/icons/archway?style=solid
  /// arc, monument, road, street, tunnel
  static const IconData archway = IconDataSolid(0xf557);

  /// Solid Arrow Down icon
  ///
  /// https://fontawesome.com/icons/arrow-down?style=solid
  /// Downwards Arrow, download
  static const IconData arrowDown = IconDataSolid(0xf063);

  /// Solid Arrow Down 1 9 icon
  ///
  /// https://fontawesome.com/icons/arrow-down-1-9?style=solid
  /// arrange, filter, numbers, order, sort-numeric-asc
  static const IconData arrowDown19 = IconDataSolid(0xf162);

  /// Alias sort-numeric-asc for icon [arrowDown19]
  @Deprecated('Use "arrowDown19" instead.')
  static const IconData sortNumericAsc = arrowDown19;

  /// Alias sort-numeric-down for icon [arrowDown19]
  @Deprecated('Use "arrowDown19" instead.')
  static const IconData sortNumericDown = arrowDown19;

  /// Solid Arrow Down 9 1 icon
  ///
  /// https://fontawesome.com/icons/arrow-down-9-1?style=solid
  /// arrange, filter, numbers, order, sort-numeric-asc
  static const IconData arrowDown91 = IconDataSolid(0xf886);

  /// Alias sort-numeric-desc for icon [arrowDown91]
  @Deprecated('Use "arrowDown91" instead.')
  static const IconData sortNumericDesc = arrowDown91;

  /// Alias sort-numeric-down-alt for icon [arrowDown91]
  @Deprecated('Use "arrowDown91" instead.')
  static const IconData sortNumericDownAlt = arrowDown91;

  /// Solid Arrow Down A Z icon
  ///
  /// https://fontawesome.com/icons/arrow-down-a-z?style=solid
  /// alphabetical, arrange, filter, order, sort-alpha-asc
  static const IconData arrowDownAZ = IconDataSolid(0xf15d);

  /// Alias sort-alpha-asc for icon [arrowDownAZ]
  @Deprecated('Use "arrowDownAZ" instead.')
  static const IconData sortAlphaAsc = arrowDownAZ;

  /// Alias sort-alpha-down for icon [arrowDownAZ]
  @Deprecated('Use "arrowDownAZ" instead.')
  static const IconData sortAlphaDown = arrowDownAZ;

  /// Solid Arrow Down Long icon
  ///
  /// https://fontawesome.com/icons/arrow-down-long?style=solid
  /// download, long-arrow-down
  static const IconData arrowDownLong = IconDataSolid(0xf175);

  /// Alias long-arrow-down for icon [arrowDownLong]
  @Deprecated('Use "arrowDownLong" instead.')
  static const IconData longArrowDown = arrowDownLong;

  /// Solid Arrow Down Short Wide icon
  ///
  /// https://fontawesome.com/icons/arrow-down-short-wide?style=solid
  /// arrange, filter, order, sort-amount-asc
  static const IconData arrowDownShortWide = IconDataSolid(0xf884);

  /// Alias sort-amount-desc for icon [arrowDownShortWide]
  @Deprecated('Use "arrowDownShortWide" instead.')
  static const IconData sortAmountDesc = arrowDownShortWide;

  /// Alias sort-amount-down-alt for icon [arrowDownShortWide]
  @Deprecated('Use "arrowDownShortWide" instead.')
  static const IconData sortAmountDownAlt = arrowDownShortWide;

  /// Solid Arrow Down Up Across Line icon
  ///
  /// https://fontawesome.com/icons/arrow-down-up-across-line?style=solid
  /// border, crossing, transfer
  static const IconData arrowDownUpAcrossLine = IconDataSolid(0xe4af);

  /// Solid Arrow Down Up Lock icon
  ///
  /// https://fontawesome.com/icons/arrow-down-up-lock?style=solid
  /// border, closed, crossing, lockdown, quarantine, transfer
  static const IconData arrowDownUpLock = IconDataSolid(0xe4b0);

  /// Solid Arrow Down Wide Short icon
  ///
  /// https://fontawesome.com/icons/arrow-down-wide-short?style=solid
  /// arrange, filter, number, order, sort-amount-asc
  static const IconData arrowDownWideShort = IconDataSolid(0xf160);

  /// Alias sort-amount-asc for icon [arrowDownWideShort]
  @Deprecated('Use "arrowDownWideShort" instead.')
  static const IconData sortAmountAsc = arrowDownWideShort;

  /// Alias sort-amount-down for icon [arrowDownWideShort]
  @Deprecated('Use "arrowDownWideShort" instead.')
  static const IconData sortAmountDown = arrowDownWideShort;

  /// Solid Arrow Down Z A icon
  ///
  /// https://fontawesome.com/icons/arrow-down-z-a?style=solid
  /// alphabetical, arrange, filter, order, sort-alpha-asc
  static const IconData arrowDownZA = IconDataSolid(0xf881);

  /// Alias sort-alpha-desc for icon [arrowDownZA]
  @Deprecated('Use "arrowDownZA" instead.')
  static const IconData sortAlphaDesc = arrowDownZA;

  /// Alias sort-alpha-down-alt for icon [arrowDownZA]
  @Deprecated('Use "arrowDownZA" instead.')
  static const IconData sortAlphaDownAlt = arrowDownZA;

  /// Solid Arrow Left icon
  ///
  /// https://fontawesome.com/icons/arrow-left?style=solid
  /// Leftwards Arrow, back, previous
  static const IconData arrowLeft = IconDataSolid(0xf060);

  /// Solid Arrow Left Long icon
  ///
  /// https://fontawesome.com/icons/arrow-left-long?style=solid
  /// back, long-arrow-left, previous
  static const IconData arrowLeftLong = IconDataSolid(0xf177);

  /// Alias long-arrow-left for icon [arrowLeftLong]
  @Deprecated('Use "arrowLeftLong" instead.')
  static const IconData longArrowLeft = arrowLeftLong;

  /// Solid Arrow Pointer icon
  ///
  /// https://fontawesome.com/icons/arrow-pointer?style=solid
  /// arrow, cursor, select
  static const IconData arrowPointer = IconDataSolid(0xf245);

  /// Alias mouse-pointer for icon [arrowPointer]
  @Deprecated('Use "arrowPointer" instead.')
  static const IconData mousePointer = arrowPointer;

  /// Solid Arrow Right icon
  ///
  /// https://fontawesome.com/icons/arrow-right?style=solid
  /// Rightwards Arrow, forward, next
  static const IconData arrowRight = IconDataSolid(0xf061);

  /// Solid Arrow Right Arrow Left icon
  ///
  /// https://fontawesome.com/icons/arrow-right-arrow-left?style=solid
  /// Rightwards Arrow Over Leftwards Arrow, arrow, arrows, reciprocate, return, swap, transfer
  static const IconData arrowRightArrowLeft = IconDataSolid(0xf0ec);

  /// Alias exchange for icon [arrowRightArrowLeft]
  @Deprecated('Use "arrowRightArrowLeft" instead.')
  static const IconData exchange = arrowRightArrowLeft;

  /// Solid Arrow Right From Bracket icon
  ///
  /// https://fontawesome.com/icons/arrow-right-from-bracket?style=solid
  /// arrow, exit, leave, log out, logout
  static const IconData arrowRightFromBracket = IconDataSolid(0xf08b);

  /// Alias sign-out for icon [arrowRightFromBracket]
  @Deprecated('Use "arrowRightFromBracket" instead.')
  static const IconData signOut = arrowRightFromBracket;

  /// Solid Arrow Right Long icon
  ///
  /// https://fontawesome.com/icons/arrow-right-long?style=solid
  /// forward, long-arrow-right, next
  static const IconData arrowRightLong = IconDataSolid(0xf178);

  /// Alias long-arrow-right for icon [arrowRightLong]
  @Deprecated('Use "arrowRightLong" instead.')
  static const IconData longArrowRight = arrowRightLong;

  /// Solid Arrow Right To Bracket icon
  ///
  /// https://fontawesome.com/icons/arrow-right-to-bracket?style=solid
  /// arrow, enter, join, log in, login, sign in, sign up, sign-in, signin, signup
  static const IconData arrowRightToBracket = IconDataSolid(0xf090);

  /// Alias sign-in for icon [arrowRightToBracket]
  @Deprecated('Use "arrowRightToBracket" instead.')
  static const IconData signIn = arrowRightToBracket;

  /// Solid Arrow Right To City icon
  ///
  /// https://fontawesome.com/icons/arrow-right-to-city?style=solid
  /// building, city, exodus, rural, urban
  static const IconData arrowRightToCity = IconDataSolid(0xe4b3);

  /// Solid Arrow Rotate Left icon
  ///
  /// https://fontawesome.com/icons/arrow-rotate-left?style=solid
  /// Anticlockwise Open Circle Arrow, back, control z, exchange, oops, return, rotate, swap
  static const IconData arrowRotateLeft = IconDataSolid(0xf0e2);

  /// Alias arrow-left-rotate for icon [arrowRotateLeft]
  @Deprecated('Use "arrowRotateLeft" instead.')
  static const IconData arrowLeftRotate = arrowRotateLeft;

  /// Alias arrow-rotate-back for icon [arrowRotateLeft]
  @Deprecated('Use "arrowRotateLeft" instead.')
  static const IconData arrowRotateBack = arrowRotateLeft;

  /// Alias arrow-rotate-backward for icon [arrowRotateLeft]
  @Deprecated('Use "arrowRotateLeft" instead.')
  static const IconData arrowRotateBackward = arrowRotateLeft;

  /// Alias undo for icon [arrowRotateLeft]
  @Deprecated('Use "arrowRotateLeft" instead.')
  static const IconData undo = arrowRotateLeft;

  /// Solid Arrow Rotate Right icon
  ///
  /// https://fontawesome.com/icons/arrow-rotate-right?style=solid
  /// Clockwise Open Circle Arrow, forward, refresh, reload, repeat
  static const IconData arrowRotateRight = IconDataSolid(0xf01e);

  /// Alias arrow-right-rotate for icon [arrowRotateRight]
  @Deprecated('Use "arrowRotateRight" instead.')
  static const IconData arrowRightRotate = arrowRotateRight;

  /// Alias arrow-rotate-forward for icon [arrowRotateRight]
  @Deprecated('Use "arrowRotateRight" instead.')
  static const IconData arrowRotateForward = arrowRotateRight;

  /// Alias redo for icon [arrowRotateRight]
  @Deprecated('Use "arrowRotateRight" instead.')
  static const IconData redo = arrowRotateRight;

  /// Solid Arrow Trend Down icon
  ///
  /// https://fontawesome.com/icons/arrow-trend-down?style=solid
  /// line, stocks, trend
  static const IconData arrowTrendDown = IconDataSolid(0xe097);

  /// Solid Arrow Trend Up icon
  ///
  /// https://fontawesome.com/icons/arrow-trend-up?style=solid
  /// line, stocks, trend
  static const IconData arrowTrendUp = IconDataSolid(0xe098);

  /// Solid Arrow Turn Down icon
  ///
  /// https://fontawesome.com/icons/arrow-turn-down?style=solid
  /// arrow
  static const IconData arrowTurnDown = IconDataSolid(0xf149);

  /// Alias level-down for icon [arrowTurnDown]
  @Deprecated('Use "arrowTurnDown" instead.')
  static const IconData levelDown = arrowTurnDown;

  /// Solid Arrow Turn Up icon
  ///
  /// https://fontawesome.com/icons/arrow-turn-up?style=solid
  /// arrow
  static const IconData arrowTurnUp = IconDataSolid(0xf148);

  /// Alias level-up for icon [arrowTurnUp]
  @Deprecated('Use "arrowTurnUp" instead.')
  static const IconData levelUp = arrowTurnUp;

  /// Solid Arrow Up icon
  ///
  /// https://fontawesome.com/icons/arrow-up?style=solid
  /// Upwards Arrow, forward, upload
  static const IconData arrowUp = IconDataSolid(0xf062);

  /// Solid Arrow Up 1 9 icon
  ///
  /// https://fontawesome.com/icons/arrow-up-1-9?style=solid
  /// arrange, filter, numbers, order, sort-numeric-desc
  static const IconData arrowUp19 = IconDataSolid(0xf163);

  /// Alias sort-numeric-up for icon [arrowUp19]
  @Deprecated('Use "arrowUp19" instead.')
  static const IconData sortNumericUp = arrowUp19;

  /// Solid Arrow Up 9 1 icon
  ///
  /// https://fontawesome.com/icons/arrow-up-9-1?style=solid
  /// arrange, filter, numbers, order, sort-numeric-desc
  static const IconData arrowUp91 = IconDataSolid(0xf887);

  /// Alias sort-numeric-up-alt for icon [arrowUp91]
  @Deprecated('Use "arrowUp91" instead.')
  static const IconData sortNumericUpAlt = arrowUp91;

  /// Solid Arrow Up A Z icon
  ///
  /// https://fontawesome.com/icons/arrow-up-a-z?style=solid
  /// alphabetical, arrange, filter, order, sort-alpha-desc
  static const IconData arrowUpAZ = IconDataSolid(0xf15e);

  /// Alias sort-alpha-up for icon [arrowUpAZ]
  @Deprecated('Use "arrowUpAZ" instead.')
  static const IconData sortAlphaUp = arrowUpAZ;

  /// Solid Arrow Up From Bracket icon
  ///
  /// https://fontawesome.com/icons/arrow-up-from-bracket?style=solid
  /// share, transfer, upload
  static const IconData arrowUpFromBracket = IconDataSolid(0xe09a);

  /// Solid Arrow Up From Ground Water icon
  ///
  /// https://fontawesome.com/icons/arrow-up-from-ground-water?style=solid
  /// groundwater, spring, water supply, water table
  static const IconData arrowUpFromGroundWater = IconDataSolid(0xe4b5);

  /// Solid Arrow Up From Water Pump icon
  ///
  /// https://fontawesome.com/icons/arrow-up-from-water-pump?style=solid
  /// flood, groundwater, pump, submersible, sump pump
  static const IconData arrowUpFromWaterPump = IconDataSolid(0xe4b6);

  /// Solid Arrow Up Long icon
  ///
  /// https://fontawesome.com/icons/arrow-up-long?style=solid
  /// long-arrow-up, upload
  static const IconData arrowUpLong = IconDataSolid(0xf176);

  /// Alias long-arrow-up for icon [arrowUpLong]
  @Deprecated('Use "arrowUpLong" instead.')
  static const IconData longArrowUp = arrowUpLong;

  /// Solid Arrow Up Right Dots icon
  ///
  /// https://fontawesome.com/icons/arrow-up-right-dots?style=solid
  /// growth, increase, population
  static const IconData arrowUpRightDots = IconDataSolid(0xe4b7);

  /// Solid Arrow Up Right From Square icon
  ///
  /// https://fontawesome.com/icons/arrow-up-right-from-square?style=solid
  /// new, open, send, share
  static const IconData arrowUpRightFromSquare = IconDataSolid(0xf08e);

  /// Alias external-link for icon [arrowUpRightFromSquare]
  @Deprecated('Use "arrowUpRightFromSquare" instead.')
  static const IconData externalLink = arrowUpRightFromSquare;

  /// Solid Arrow Up Short Wide icon
  ///
  /// https://fontawesome.com/icons/arrow-up-short-wide?style=solid
  /// arrange, filter, order, sort-amount-desc
  static const IconData arrowUpShortWide = IconDataSolid(0xf885);

  /// Alias sort-amount-up-alt for icon [arrowUpShortWide]
  @Deprecated('Use "arrowUpShortWide" instead.')
  static const IconData sortAmountUpAlt = arrowUpShortWide;

  /// Solid Arrow Up Wide Short icon
  ///
  /// https://fontawesome.com/icons/arrow-up-wide-short?style=solid
  /// arrange, filter, order, sort-amount-desc
  static const IconData arrowUpWideShort = IconDataSolid(0xf161);

  /// Alias sort-amount-up for icon [arrowUpWideShort]
  @Deprecated('Use "arrowUpWideShort" instead.')
  static const IconData sortAmountUp = arrowUpWideShort;

  /// Solid Arrow Up Z A icon
  ///
  /// https://fontawesome.com/icons/arrow-up-z-a?style=solid
  /// alphabetical, arrange, filter, order, sort-alpha-desc
  static const IconData arrowUpZA = IconDataSolid(0xf882);

  /// Alias sort-alpha-up-alt for icon [arrowUpZA]
  @Deprecated('Use "arrowUpZA" instead.')
  static const IconData sortAlphaUpAlt = arrowUpZA;

  /// Solid Arrows Down To Line icon
  ///
  /// https://fontawesome.com/icons/arrows-down-to-line?style=solid
  /// scale down, sink
  static const IconData arrowsDownToLine = IconDataSolid(0xe4b8);

  /// Solid Arrows Down To People icon
  ///
  /// https://fontawesome.com/icons/arrows-down-to-people?style=solid
  /// affected, focus, targeted
  static const IconData arrowsDownToPeople = IconDataSolid(0xe4b9);

  /// Solid Arrows Left Right icon
  ///
  /// https://fontawesome.com/icons/arrows-left-right?style=solid
  /// expand, horizontal, landscape, resize, wide
  static const IconData arrowsLeftRight = IconDataSolid(0xf07e);

  /// Alias arrows-h for icon [arrowsLeftRight]
  @Deprecated('Use "arrowsLeftRight" instead.')
  static const IconData arrowsH = arrowsLeftRight;

  /// Solid Arrows Left Right To Line icon
  ///
  /// https://fontawesome.com/icons/arrows-left-right-to-line?style=solid
  /// analysis, expand, gap
  static const IconData arrowsLeftRightToLine = IconDataSolid(0xe4ba);

  /// Solid Arrows Rotate icon
  ///
  /// https://fontawesome.com/icons/arrows-rotate?style=solid
  /// Clockwise Right and Left Semicircle Arrows, exchange, refresh, reload, rotate, swap
  static const IconData arrowsRotate = IconDataSolid(0xf021);

  /// Alias refresh for icon [arrowsRotate]
  @Deprecated('Use "arrowsRotate" instead.')
  static const IconData refresh = arrowsRotate;

  /// Alias sync for icon [arrowsRotate]
  @Deprecated('Use "arrowsRotate" instead.')
  static const IconData sync = arrowsRotate;

  /// Solid Arrows Spin icon
  ///
  /// https://fontawesome.com/icons/arrows-spin?style=solid
  /// cycle, rotate, spin, whirl
  static const IconData arrowsSpin = IconDataSolid(0xe4bb);

  /// Solid Arrows Split Up And Left icon
  ///
  /// https://fontawesome.com/icons/arrows-split-up-and-left?style=solid
  /// agile, split
  static const IconData arrowsSplitUpAndLeft = IconDataSolid(0xe4bc);

  /// Solid Arrows To Circle icon
  ///
  /// https://fontawesome.com/icons/arrows-to-circle?style=solid
  /// center, concentrate, coordinate, coordination, focal point, focus
  static const IconData arrowsToCircle = IconDataSolid(0xe4bd);

  /// Solid Arrows To Dot icon
  ///
  /// https://fontawesome.com/icons/arrows-to-dot?style=solid
  /// assembly point, center, condense, focus, minimize
  static const IconData arrowsToDot = IconDataSolid(0xe4be);

  /// Solid Arrows To Eye icon
  ///
  /// https://fontawesome.com/icons/arrows-to-eye?style=solid
  /// center, coordinated assessment, focus
  static const IconData arrowsToEye = IconDataSolid(0xe4bf);

  /// Solid Arrows Turn Right icon
  ///
  /// https://fontawesome.com/icons/arrows-turn-right?style=solid
  /// arrows
  static const IconData arrowsTurnRight = IconDataSolid(0xe4c0);

  /// Solid Arrows Turn To Dots icon
  ///
  /// https://fontawesome.com/icons/arrows-turn-to-dots?style=solid
  /// destination, nexus
  static const IconData arrowsTurnToDots = IconDataSolid(0xe4c1);

  /// Solid Arrows Up Down icon
  ///
  /// https://fontawesome.com/icons/arrows-up-down?style=solid
  /// expand, portrait, resize, tall, vertical
  static const IconData arrowsUpDown = IconDataSolid(0xf07d);

  /// Alias arrows-v for icon [arrowsUpDown]
  @Deprecated('Use "arrowsUpDown" instead.')
  static const IconData arrowsV = arrowsUpDown;

  /// Solid Arrows Up Down Left Right icon
  ///
  /// https://fontawesome.com/icons/arrows-up-down-left-right?style=solid
  /// arrow, arrows, bigger, enlarge, expand, fullscreen, move, position, reorder, resize
  static const IconData arrowsUpDownLeftRight = IconDataSolid(0xf047);

  /// Alias arrows for icon [arrowsUpDownLeftRight]
  @Deprecated('Use "arrowsUpDownLeftRight" instead.')
  static const IconData arrows = arrowsUpDownLeftRight;

  /// Solid Arrows Up To Line icon
  ///
  /// https://fontawesome.com/icons/arrows-up-to-line?style=solid
  /// rise, scale up
  static const IconData arrowsUpToLine = IconDataSolid(0xe4c2);

  /// Brands Artstation icon
  ///
  /// https://fontawesome.com/icons/artstation?style=brands
  static const IconData artstation = IconDataBrands(0xf77a);

  /// Solid Asterisk icon
  ///
  /// https://fontawesome.com/icons/asterisk?style=solid
  /// Asterisk, Heavy Asterisk, annotation, details, reference, star
  static const IconData asterisk = IconDataSolid(0x2a);

  /// Brands Asymmetrik, Ltd. icon
  ///
  /// https://fontawesome.com/icons/asymmetrik?style=brands
  static const IconData asymmetrik = IconDataBrands(0xf372);

  /// Solid At icon
  ///
  /// https://fontawesome.com/icons/at?style=solid
  /// Commercial At, address, author, e-mail, email, fluctuate, handle
  static const IconData at = IconDataSolid(0x40);

  /// Brands Atlassian icon
  ///
  /// https://fontawesome.com/icons/atlassian?style=brands
  static const IconData atlassian = IconDataBrands(0xf77b);

  /// Solid Atom icon
  ///
  /// https://fontawesome.com/icons/atom?style=solid
  /// atheism, atheist, atom, atom symbol, chemistry, electron, ion, isotope, neutron, nuclear, proton, science
  static const IconData atom = IconDataSolid(0xf5d2);

  /// Brands Audible icon
  ///
  /// https://fontawesome.com/icons/audible?style=brands
  static const IconData audible = IconDataBrands(0xf373);

  /// Solid Audio Description icon
  ///
  /// https://fontawesome.com/icons/audio-description?style=solid
  /// blind, narration, video, visual
  static const IconData audioDescription = IconDataSolid(0xf29e);

  /// Solid Austral Sign icon
  ///
  /// https://fontawesome.com/icons/austral-sign?style=solid
  /// Austral Sign, currency
  static const IconData australSign = IconDataSolid(0xe0a9);

  /// Brands Autoprefixer icon
  ///
  /// https://fontawesome.com/icons/autoprefixer?style=brands
  static const IconData autoprefixer = IconDataBrands(0xf41c);

  /// Brands avianex icon
  ///
  /// https://fontawesome.com/icons/avianex?style=brands
  static const IconData avianex = IconDataBrands(0xf374);

  /// Brands Aviato icon
  ///
  /// https://fontawesome.com/icons/aviato?style=brands
  static const IconData aviato = IconDataBrands(0xf421);

  /// Solid Award icon
  ///
  /// https://fontawesome.com/icons/award?style=solid
  /// honor, praise, prize, recognition, ribbon, trophy
  static const IconData award = IconDataSolid(0xf559);

  /// Brands Amazon Web Services (AWS) icon
  ///
  /// https://fontawesome.com/icons/aws?style=brands
  static const IconData aws = IconDataBrands(0xf375);

  /// Solid B icon
  ///
  /// https://fontawesome.com/icons/b?style=solid
  /// Latin Capital Letter B, Latin Small Letter B, letter
  static const IconData b = IconDataSolid(0x42);

  /// Solid Baby icon
  ///
  /// https://fontawesome.com/icons/baby?style=solid
  /// users-people
  static const IconData baby = IconDataSolid(0xf77c);

  /// Solid Baby Carriage icon
  ///
  /// https://fontawesome.com/icons/baby-carriage?style=solid
  /// buggy, carrier, infant, push, stroller, transportation, walk, wheels
  static const IconData babyCarriage = IconDataSolid(0xf77d);

  /// Alias carriage-baby for icon [babyCarriage]
  @Deprecated('Use "babyCarriage" instead.')
  static const IconData carriageBaby = babyCarriage;

  /// Solid Backward icon
  ///
  /// https://fontawesome.com/icons/backward?style=solid
  /// arrow, double, fast reverse button, previous, rewind
  static const IconData backward = IconDataSolid(0xf04a);

  /// Solid Backward Fast icon
  ///
  /// https://fontawesome.com/icons/backward-fast?style=solid
  /// arrow, beginning, first, last track button, previous, previous scene, previous track, rewind, start, triangle
  static const IconData backwardFast = IconDataSolid(0xf049);

  /// Alias fast-backward for icon [backwardFast]
  @Deprecated('Use "backwardFast" instead.')
  static const IconData fastBackward = backwardFast;

  /// Solid Backward Step icon
  ///
  /// https://fontawesome.com/icons/backward-step?style=solid
  /// beginning, first, previous, rewind, start
  static const IconData backwardStep = IconDataSolid(0xf048);

  /// Alias step-backward for icon [backwardStep]
  @Deprecated('Use "backwardStep" instead.')
  static const IconData stepBackward = backwardStep;

  /// Solid Bacon icon
  ///
  /// https://fontawesome.com/icons/bacon?style=solid
  /// bacon, blt, breakfast, food, ham, lard, meat, pancetta, pork, rasher
  static const IconData bacon = IconDataSolid(0xf7e5);

  /// Solid Bacteria icon
  ///
  /// https://fontawesome.com/icons/bacteria?style=solid
  /// antibiotic, antibody, covid-19, health, organism, sick
  static const IconData bacteria = IconDataSolid(0xe059);

  /// Solid Bacterium icon
  ///
  /// https://fontawesome.com/icons/bacterium?style=solid
  /// antibiotic, antibody, covid-19, health, organism, sick
  static const IconData bacterium = IconDataSolid(0xe05a);

  /// Solid Bag Shopping icon
  ///
  /// https://fontawesome.com/icons/bag-shopping?style=solid
  /// buy, checkout, grocery, payment, purchase
  static const IconData bagShopping = IconDataSolid(0xf290);

  /// Alias shopping-bag for icon [bagShopping]
  @Deprecated('Use "bagShopping" instead.')
  static const IconData shoppingBag = bagShopping;

  /// Solid Bahai icon
  ///
  /// https://fontawesome.com/icons/bahai?style=solid
  /// bahai, bahá'í, star
  static const IconData bahai = IconDataSolid(0xf666);

  /// Alias haykal for icon [bahai]
  @Deprecated('Use "bahai" instead.')
  static const IconData haykal = bahai;

  /// Solid Baht Sign icon
  ///
  /// https://fontawesome.com/icons/baht-sign?style=solid
  /// currency
  static const IconData bahtSign = IconDataSolid(0xe0ac);

  /// Solid Ban icon
  ///
  /// https://fontawesome.com/icons/ban?style=solid
  /// abort, ban, block, cancel, delete, entry, forbidden, hide, no, not, prohibit, prohibited, remove, stop, trash
  static const IconData ban = IconDataSolid(0xf05e);

  /// Alias cancel for icon [ban]
  @Deprecated('Use "ban" instead.')
  static const IconData cancel = ban;

  /// Solid Ban Smoking icon
  ///
  /// https://fontawesome.com/icons/ban-smoking?style=solid
  /// ban, cancel, forbidden, no, no smoking, non-smoking, not, prohibited, smoking
  static const IconData banSmoking = IconDataSolid(0xf54d);

  /// Alias smoking-ban for icon [banSmoking]
  @Deprecated('Use "banSmoking" instead.')
  static const IconData smokingBan = banSmoking;

  /// Solid Bandage icon
  ///
  /// https://fontawesome.com/icons/bandage?style=solid
  /// adhesive bandage, bandage, boo boo, first aid, ouch
  static const IconData bandage = IconDataSolid(0xf462);

  /// Alias band-aid for icon [bandage]
  @Deprecated('Use "bandage" instead.')
  static const IconData bandAid = bandage;

  /// Brands Bandcamp icon
  ///
  /// https://fontawesome.com/icons/bandcamp?style=brands
  static const IconData bandcamp = IconDataBrands(0xf2d5);

  /// Solid Bangladeshi Taka Sign icon
  ///
  /// https://fontawesome.com/icons/bangladeshi-taka-sign?style=solid
  /// bdt, currency, tk
  static const IconData bangladeshiTakaSign = IconDataSolid(0xe2e6);

  /// Solid Barcode icon
  ///
  /// https://fontawesome.com/icons/barcode?style=solid
  /// info, laser, price, scan, upc
  static const IconData barcode = IconDataSolid(0xf02a);

  /// Solid Bars icon
  ///
  /// https://fontawesome.com/icons/bars?style=solid
  /// checklist, drag, hamburger, list, menu, nav, navigation, ol, reorder, settings, todo, ul
  static const IconData bars = IconDataSolid(0xf0c9);

  /// Alias navicon for icon [bars]
  @Deprecated('Use "bars" instead.')
  static const IconData navicon = bars;

  /// Solid Bars Progress icon
  ///
  /// https://fontawesome.com/icons/bars-progress?style=solid
  /// checklist, downloading, downloads, loading, poll, progress, project management, settings, to do
  static const IconData barsProgress = IconDataSolid(0xf828);

  /// Alias tasks-alt for icon [barsProgress]
  @Deprecated('Use "barsProgress" instead.')
  static const IconData tasksAlt = barsProgress;

  /// Solid Bars Staggered icon
  ///
  /// https://fontawesome.com/icons/bars-staggered?style=solid
  /// flow, list, timeline
  static const IconData barsStaggered = IconDataSolid(0xf550);

  /// Alias reorder for icon [barsStaggered]
  @Deprecated('Use "barsStaggered" instead.')
  static const IconData reorder = barsStaggered;

  /// Alias stream for icon [barsStaggered]
  @Deprecated('Use "barsStaggered" instead.')
  static const IconData stream = barsStaggered;

  /// Solid Baseball icon
  ///
  /// https://fontawesome.com/icons/baseball?style=solid
  /// ball, baseball, foul, glove, hardball, league, leather, mlb, softball, sport, underarm
  static const IconData baseball = IconDataSolid(0xf433);

  /// Alias baseball-ball for icon [baseball]
  @Deprecated('Use "baseball" instead.')
  static const IconData baseballBall = baseball;

  /// Solid Baseball Bat Ball icon
  ///
  /// https://fontawesome.com/icons/baseball-bat-ball?style=solid
  /// bat, league, mlb, slugger, softball, sport
  static const IconData baseballBatBall = IconDataSolid(0xf432);

  /// Solid Basket Shopping icon
  ///
  /// https://fontawesome.com/icons/basket-shopping?style=solid
  /// buy, checkout, grocery, payment, purchase
  static const IconData basketShopping = IconDataSolid(0xf291);

  /// Alias shopping-basket for icon [basketShopping]
  @Deprecated('Use "basketShopping" instead.')
  static const IconData shoppingBasket = basketShopping;

  /// Solid Basketball icon
  ///
  /// https://fontawesome.com/icons/basketball?style=solid
  /// ball, basketball, dribble, dunk, hoop, nba
  static const IconData basketball = IconDataSolid(0xf434);

  /// Alias basketball-ball for icon [basketball]
  @Deprecated('Use "basketball" instead.')
  static const IconData basketballBall = basketball;

  /// Solid Bath icon
  ///
  /// https://fontawesome.com/icons/bath?style=solid
  /// bath, bathtub, clean, shower, tub, wash
  static const IconData bath = IconDataSolid(0xf2cd);

  /// Alias bathtub for icon [bath]
  @Deprecated('Use "bath" instead.')
  static const IconData bathtub = bath;

  /// Solid Battery Empty icon
  ///
  /// https://fontawesome.com/icons/battery-empty?style=solid
  /// charge, dead, power, status
  static const IconData batteryEmpty = IconDataSolid(0xf244);

  /// Alias battery-0 for icon [batteryEmpty]
  @Deprecated('Use "batteryEmpty" instead.')
  static const IconData battery0 = batteryEmpty;

  /// Solid Battery Full icon
  ///
  /// https://fontawesome.com/icons/battery-full?style=solid
  /// batter, battery, charge, power, status
  static const IconData batteryFull = IconDataSolid(0xf240);

  /// Alias battery for icon [batteryFull]
  @Deprecated('Use "batteryFull" instead.')
  static const IconData battery = batteryFull;

  /// Alias battery-5 for icon [batteryFull]
  @Deprecated('Use "batteryFull" instead.')
  static const IconData battery5 = batteryFull;

  /// Solid Battery Half icon
  ///
  /// https://fontawesome.com/icons/battery-half?style=solid
  /// charge, power, status
  static const IconData batteryHalf = IconDataSolid(0xf242);

  /// Alias battery-3 for icon [batteryHalf]
  @Deprecated('Use "batteryHalf" instead.')
  static const IconData battery3 = batteryHalf;

  /// Solid Battery Quarter icon
  ///
  /// https://fontawesome.com/icons/battery-quarter?style=solid
  /// charge, low, power, status
  static const IconData batteryQuarter = IconDataSolid(0xf243);

  /// Alias battery-2 for icon [batteryQuarter]
  @Deprecated('Use "batteryQuarter" instead.')
  static const IconData battery2 = batteryQuarter;

  /// Solid Battery Three Quarters icon
  ///
  /// https://fontawesome.com/icons/battery-three-quarters?style=solid
  /// charge, power, status
  static const IconData batteryThreeQuarters = IconDataSolid(0xf241);

  /// Alias battery-4 for icon [batteryThreeQuarters]
  @Deprecated('Use "batteryThreeQuarters" instead.')
  static const IconData battery4 = batteryThreeQuarters;

  /// Brands Battle.net icon
  ///
  /// https://fontawesome.com/icons/battle-net?style=brands
  static const IconData battleNet = IconDataBrands(0xf835);

  /// Solid Bed icon
  ///
  /// https://fontawesome.com/icons/bed?style=solid
  /// hospital, hotel, lodging, mattress, patient, person in bed, rest, sleep, travel
  static const IconData bed = IconDataSolid(0xf236);

  /// Solid Bed Pulse icon
  ///
  /// https://fontawesome.com/icons/bed-pulse?style=solid
  /// EKG, bed, electrocardiogram, health, hospital, life, patient, vital
  static const IconData bedPulse = IconDataSolid(0xf487);

  /// Alias procedures for icon [bedPulse]
  @Deprecated('Use "bedPulse" instead.')
  static const IconData procedures = bedPulse;

  /// Solid Beer Mug Empty icon
  ///
  /// https://fontawesome.com/icons/beer-mug-empty?style=solid
  /// alcohol, ale, bar, beverage, brew, brewery, drink, foam, lager, liquor, mug, stein
  static const IconData beerMugEmpty = IconDataSolid(0xf0fc);

  /// Alias beer for icon [beerMugEmpty]
  @Deprecated('Use "beerMugEmpty" instead.')
  static const IconData beer = beerMugEmpty;

  /// Brands Behance icon
  ///
  /// https://fontawesome.com/icons/behance?style=brands
  static const IconData behance = IconDataBrands(0xf1b4);

  /// Solid Bell icon
  ///
  /// https://fontawesome.com/icons/bell?style=solid
  /// alarm, alert, bel, bell, chime, notification, reminder
  static const IconData solidBell = IconDataSolid(0xf0f3);

  /// Regular Bell icon
  ///
  /// https://fontawesome.com/icons/bell?style=regular
  /// alarm, alert, bel, bell, chime, notification, reminder
  static const IconData bell = IconDataRegular(0xf0f3);

  /// Solid Bell Concierge icon
  ///
  /// https://fontawesome.com/icons/bell-concierge?style=solid
  /// attention, bell, bellhop, bellhop bell, hotel, receptionist, service, support
  static const IconData bellConcierge = IconDataSolid(0xf562);

  /// Alias concierge-bell for icon [bellConcierge]
  @Deprecated('Use "bellConcierge" instead.')
  static const IconData conciergeBell = bellConcierge;

  /// Solid Bell Slash icon
  ///
  /// https://fontawesome.com/icons/bell-slash?style=solid
  /// alert, bell, bell with slash, cancel, disabled, forbidden, mute, notification, off, quiet, reminder, silent
  static const IconData solidBellSlash = IconDataSolid(0xf1f6);

  /// Regular Bell Slash icon
  ///
  /// https://fontawesome.com/icons/bell-slash?style=regular
  /// alert, bell, bell with slash, cancel, disabled, forbidden, mute, notification, off, quiet, reminder, silent
  static const IconData bellSlash = IconDataRegular(0xf1f6);

  /// Solid Bezier Curve icon
  ///
  /// https://fontawesome.com/icons/bezier-curve?style=solid
  /// curves, illustrator, lines, path, vector
  static const IconData bezierCurve = IconDataSolid(0xf55b);

  /// Solid Bicycle icon
  ///
  /// https://fontawesome.com/icons/bicycle?style=solid
  /// bicycle, bike, gears, pedal, transportation, vehicle
  static const IconData bicycle = IconDataSolid(0xf206);

  /// Brands Bilibili icon
  ///
  /// https://fontawesome.com/icons/bilibili?style=brands
  static const IconData bilibili = IconDataBrands(0xe3d9);

  /// Brands BIMobject icon
  ///
  /// https://fontawesome.com/icons/bimobject?style=brands
  static const IconData bimobject = IconDataBrands(0xf378);

  /// Solid Binoculars icon
  ///
  /// https://fontawesome.com/icons/binoculars?style=solid
  /// glasses, magnify, scenic, spyglass, view
  static const IconData binoculars = IconDataSolid(0xf1e5);

  /// Solid Biohazard icon
  ///
  /// https://fontawesome.com/icons/biohazard?style=solid
  /// biohazard, covid-19, danger, dangerous, epidemic, hazmat, medical, pandemic, radioactive, sign, toxic, waste, zombie
  static const IconData biohazard = IconDataSolid(0xf780);

  /// Brands Bitbucket icon
  ///
  /// https://fontawesome.com/icons/bitbucket?style=brands
  /// atlassian, bitbucket-square, git
  static const IconData bitbucket = IconDataBrands(0xf171);

  /// Brands Bitcoin icon
  ///
  /// https://fontawesome.com/icons/bitcoin?style=brands
  static const IconData bitcoin = IconDataBrands(0xf379);

  /// Solid Bitcoin Sign icon
  ///
  /// https://fontawesome.com/icons/bitcoin-sign?style=solid
  /// Bitcoin Sign, currency
  static const IconData bitcoinSign = IconDataSolid(0xe0b4);

  /// Brands Bity icon
  ///
  /// https://fontawesome.com/icons/bity?style=brands
  static const IconData bity = IconDataBrands(0xf37a);

  /// Brands Font Awesome Black Tie icon
  ///
  /// https://fontawesome.com/icons/black-tie?style=brands
  static const IconData blackTie = IconDataBrands(0xf27e);

  /// Brands BlackBerry icon
  ///
  /// https://fontawesome.com/icons/blackberry?style=brands
  static const IconData blackberry = IconDataBrands(0xf37b);

  /// Solid Blender icon
  ///
  /// https://fontawesome.com/icons/blender?style=solid
  /// cocktail, milkshake, mixer, puree, smoothie
  static const IconData blender = IconDataSolid(0xf517);

  /// Solid Blender Phone icon
  ///
  /// https://fontawesome.com/icons/blender-phone?style=solid
  /// appliance, cocktail, fantasy, milkshake, mixer, puree, silly, smoothie
  static const IconData blenderPhone = IconDataSolid(0xf6b6);

  /// Solid Blog icon
  ///
  /// https://fontawesome.com/icons/blog?style=solid
  /// journal, log, online, personal, post, web 2.0, wordpress, writing
  static const IconData blog = IconDataSolid(0xf781);

  /// Brands Blogger icon
  ///
  /// https://fontawesome.com/icons/blogger?style=brands
  static const IconData blogger = IconDataBrands(0xf37c);

  /// Brands Blogger B icon
  ///
  /// https://fontawesome.com/icons/blogger-b?style=brands
  static const IconData bloggerB = IconDataBrands(0xf37d);

  /// Brands Bluetooth icon
  ///
  /// https://fontawesome.com/icons/bluetooth?style=brands
  /// signal
  static const IconData bluetooth = IconDataBrands(0xf293);

  /// Brands Bluetooth icon
  ///
  /// https://fontawesome.com/icons/bluetooth-b?style=brands
  static const IconData bluetoothB = IconDataBrands(0xf294);

  /// Solid Bold icon
  ///
  /// https://fontawesome.com/icons/bold?style=solid
  /// emphasis, format, text
  static const IconData bold = IconDataSolid(0xf032);

  /// Solid Bolt icon
  ///
  /// https://fontawesome.com/icons/bolt?style=solid
  /// charge, danger, electric, electricity, flash, high voltage, lightning, voltage, weather, zap
  static const IconData bolt = IconDataSolid(0xf0e7);

  /// Alias zap for icon [bolt]
  @Deprecated('Use "bolt" instead.')
  static const IconData zap = bolt;

  /// Solid Bolt Lightning icon
  ///
  /// https://fontawesome.com/icons/bolt-lightning?style=solid
  /// electricity, flash, lightning, weather, zap
  static const IconData boltLightning = IconDataSolid(0xe0b7);

  /// Solid Bomb icon
  ///
  /// https://fontawesome.com/icons/bomb?style=solid
  /// bomb, comic, error, explode, fuse, grenade, warning
  static const IconData bomb = IconDataSolid(0xf1e2);

  /// Solid Bone icon
  ///
  /// https://fontawesome.com/icons/bone?style=solid
  /// bone, calcium, dog, skeletal, skeleton, tibia
  static const IconData bone = IconDataSolid(0xf5d7);

  /// Solid Bong icon
  ///
  /// https://fontawesome.com/icons/bong?style=solid
  /// aparatus, cannabis, marijuana, pipe, smoke, smoking
  static const IconData bong = IconDataSolid(0xf55c);

  /// Solid Book icon
  ///
  /// https://fontawesome.com/icons/book?style=solid
  /// book, cover, decorated, diary, documentation, journal, library, notebook, notebook with decorative cover, read, research
  static const IconData book = IconDataSolid(0xf02d);

  /// Solid Book Atlas icon
  ///
  /// https://fontawesome.com/icons/book-atlas?style=solid
  /// book, directions, geography, globe, library, map, research, travel, wayfinding
  static const IconData bookAtlas = IconDataSolid(0xf558);

  /// Alias atlas for icon [bookAtlas]
  @Deprecated('Use "bookAtlas" instead.')
  static const IconData atlas = bookAtlas;

  /// Solid Book Bible icon
  ///
  /// https://fontawesome.com/icons/book-bible?style=solid
  /// book, catholicism, christianity, god, holy
  static const IconData bookBible = IconDataSolid(0xf647);

  /// Alias bible for icon [bookBible]
  @Deprecated('Use "bookBible" instead.')
  static const IconData bible = bookBible;

  /// Solid Book Bookmark icon
  ///
  /// https://fontawesome.com/icons/book-bookmark?style=solid
  /// library, research
  static const IconData bookBookmark = IconDataSolid(0xe0bb);

  /// Solid Book Journal Whills icon
  ///
  /// https://fontawesome.com/icons/book-journal-whills?style=solid
  /// book, force, jedi, sith, star wars, yoda
  static const IconData bookJournalWhills = IconDataSolid(0xf66a);

  /// Alias journal-whills for icon [bookJournalWhills]
  @Deprecated('Use "bookJournalWhills" instead.')
  static const IconData journalWhills = bookJournalWhills;

  /// Solid Book Medical icon
  ///
  /// https://fontawesome.com/icons/book-medical?style=solid
  /// diary, documentation, health, history, journal, library, read, record, research
  static const IconData bookMedical = IconDataSolid(0xf7e6);

  /// Solid Book Open icon
  ///
  /// https://fontawesome.com/icons/book-open?style=solid
  /// Book, book, flyer, library, notebook, open, open book, pamphlet, reading, research
  static const IconData bookOpen = IconDataSolid(0xf518);

  /// Solid Book Open Reader icon
  ///
  /// https://fontawesome.com/icons/book-open-reader?style=solid
  /// flyer, library, notebook, open book, pamphlet, reading, research
  static const IconData bookOpenReader = IconDataSolid(0xf5da);

  /// Alias book-reader for icon [bookOpenReader]
  @Deprecated('Use "bookOpenReader" instead.')
  static const IconData bookReader = bookOpenReader;

  /// Solid Book Quran icon
  ///
  /// https://fontawesome.com/icons/book-quran?style=solid
  /// book, islam, muslim, religion
  static const IconData bookQuran = IconDataSolid(0xf687);

  /// Alias quran for icon [bookQuran]
  @Deprecated('Use "bookQuran" instead.')
  static const IconData quran = bookQuran;

  /// Solid Book Skull icon
  ///
  /// https://fontawesome.com/icons/book-skull?style=solid
  /// Dungeons & Dragons, crossbones, d&d, dark arts, death, dnd, documentation, evil, fantasy, halloween, holiday, library, necronomicon, read, research, skull, spell
  static const IconData bookSkull = IconDataSolid(0xf6b7);

  /// Alias book-dead for icon [bookSkull]
  @Deprecated('Use "bookSkull" instead.')
  static const IconData bookDead = bookSkull;

  /// Solid Book Tanakh icon
  ///
  /// https://fontawesome.com/icons/book-tanakh?style=solid
  /// book, jewish, judaism, religion
  static const IconData bookTanakh = IconDataSolid(0xf827);

  /// Alias tanakh for icon [bookTanakh]
  @Deprecated('Use "bookTanakh" instead.')
  static const IconData tanakh = bookTanakh;

  /// Solid Bookmark icon
  ///
  /// https://fontawesome.com/icons/bookmark?style=solid
  /// bookmark, favorite, library, mark, marker, read, remember, research, save
  static const IconData solidBookmark = IconDataSolid(0xf02e);

  /// Regular Bookmark icon
  ///
  /// https://fontawesome.com/icons/bookmark?style=regular
  /// bookmark, favorite, library, mark, marker, read, remember, research, save
  static const IconData bookmark = IconDataRegular(0xf02e);

  /// Brands Bootstrap icon
  ///
  /// https://fontawesome.com/icons/bootstrap?style=brands
  static const IconData bootstrap = IconDataBrands(0xf836);

  /// Solid Border All icon
  ///
  /// https://fontawesome.com/icons/border-all?style=solid
  /// cell, grid, outline, stroke, table
  static const IconData borderAll = IconDataSolid(0xf84c);

  /// Solid Border None icon
  ///
  /// https://fontawesome.com/icons/border-none?style=solid
  /// cell, grid, outline, stroke, table
  static const IconData borderNone = IconDataSolid(0xf850);

  /// Solid Border Top Left icon
  ///
  /// https://fontawesome.com/icons/border-top-left?style=solid
  /// cell, outline, stroke, table
  static const IconData borderTopLeft = IconDataSolid(0xf853);

  /// Alias border-style for icon [borderTopLeft]
  @Deprecated('Use "borderTopLeft" instead.')
  static const IconData borderStyle = borderTopLeft;

  /// Solid Bore Hole icon
  ///
  /// https://fontawesome.com/icons/bore-hole?style=solid
  /// bore, bury, drill, hole
  static const IconData boreHole = IconDataSolid(0xe4c3);

  /// Brands Bots icon
  ///
  /// https://fontawesome.com/icons/bots?style=brands
  static const IconData bots = IconDataBrands(0xe340);

  /// Solid Bottle Droplet icon
  ///
  /// https://fontawesome.com/icons/bottle-droplet?style=solid
  /// alcohol, drink, oil, olive oil, wine
  static const IconData bottleDroplet = IconDataSolid(0xe4c4);

  /// Solid Bottle Water icon
  ///
  /// https://fontawesome.com/icons/bottle-water?style=solid
  /// h2o, plastic, water
  static const IconData bottleWater = IconDataSolid(0xe4c5);

  /// Solid Bowl Food icon
  ///
  /// https://fontawesome.com/icons/bowl-food?style=solid
  /// catfood, dogfood, food, rice
  static const IconData bowlFood = IconDataSolid(0xe4c6);

  /// Solid Bowl Rice icon
  ///
  /// https://fontawesome.com/icons/bowl-rice?style=solid
  /// boiled, cooked, cooked rice, rice, steamed
  static const IconData bowlRice = IconDataSolid(0xe2eb);

  /// Solid Bowling Ball icon
  ///
  /// https://fontawesome.com/icons/bowling-ball?style=solid
  /// alley, candlepin, gutter, lane, strike, tenpin
  static const IconData bowlingBall = IconDataSolid(0xf436);

  /// Solid Box icon
  ///
  /// https://fontawesome.com/icons/box?style=solid
  /// archive, box, container, package, parcel, storage
  static const IconData box = IconDataSolid(0xf466);

  /// Solid Box Archive icon
  ///
  /// https://fontawesome.com/icons/box-archive?style=solid
  /// box, package, save, storage
  static const IconData boxArchive = IconDataSolid(0xf187);

  /// Alias archive for icon [boxArchive]
  @Deprecated('Use "boxArchive" instead.')
  static const IconData archive = boxArchive;

  /// Solid Box Open icon
  ///
  /// https://fontawesome.com/icons/box-open?style=solid
  /// archive, container, package, storage, unpack
  static const IconData boxOpen = IconDataSolid(0xf49e);

  /// Solid Box Tissue icon
  ///
  /// https://fontawesome.com/icons/box-tissue?style=solid
  /// cough, covid-19, kleenex, mucus, nose, sneeze, snot
  static const IconData boxTissue = IconDataSolid(0xe05b);

  /// Solid Boxes Packing icon
  ///
  /// https://fontawesome.com/icons/boxes-packing?style=solid
  /// archive, box, package, storage, supplies
  static const IconData boxesPacking = IconDataSolid(0xe4c7);

  /// Solid Boxes Stacked icon
  ///
  /// https://fontawesome.com/icons/boxes-stacked?style=solid
  /// archives, inventory, storage, warehouse
  static const IconData boxesStacked = IconDataSolid(0xf468);

  /// Alias boxes for icon [boxesStacked]
  @Deprecated('Use "boxesStacked" instead.')
  static const IconData boxes = boxesStacked;

  /// Alias boxes-alt for icon [boxesStacked]
  @Deprecated('Use "boxesStacked" instead.')
  static const IconData boxesAlt = boxesStacked;

  /// Solid Braille icon
  ///
  /// https://fontawesome.com/icons/braille?style=solid
  /// alphabet, blind, dots, raised, vision
  static const IconData braille = IconDataSolid(0xf2a1);

  /// Solid Brain icon
  ///
  /// https://fontawesome.com/icons/brain?style=solid
  /// brain, cerebellum, gray matter, intellect, intelligent, medulla oblongata, mind, noodle, wit
  static const IconData brain = IconDataSolid(0xf5dc);

  /// Solid Brazilian Real Sign icon
  ///
  /// https://fontawesome.com/icons/brazilian-real-sign?style=solid
  /// brazilian real sign, currency
  static const IconData brazilianRealSign = IconDataSolid(0xe46c);

  /// Solid Bread Slice icon
  ///
  /// https://fontawesome.com/icons/bread-slice?style=solid
  /// bake, bakery, baking, dough, flour, gluten, grain, sandwich, sourdough, toast, wheat, yeast
  static const IconData breadSlice = IconDataSolid(0xf7ec);

  /// Solid Bridge icon
  ///
  /// https://fontawesome.com/icons/bridge?style=solid
  /// bridge, road
  static const IconData bridge = IconDataSolid(0xe4c8);

  /// Solid Bridge Circle Check icon
  ///
  /// https://fontawesome.com/icons/bridge-circle-check?style=solid
  /// bridge, not affected, ok, okay, road
  static const IconData bridgeCircleCheck = IconDataSolid(0xe4c9);

  /// Solid Bridge Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/bridge-circle-exclamation?style=solid
  /// affected, bridge, road
  static const IconData bridgeCircleExclamation = IconDataSolid(0xe4ca);

  /// Solid Bridge Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/bridge-circle-xmark?style=solid
  /// bridge, destroy, road
  static const IconData bridgeCircleXmark = IconDataSolid(0xe4cb);

  /// Solid Bridge Lock icon
  ///
  /// https://fontawesome.com/icons/bridge-lock?style=solid
  /// bridge, closed, lockdown, quarantine, road
  static const IconData bridgeLock = IconDataSolid(0xe4cc);

  /// Solid Bridge Water icon
  ///
  /// https://fontawesome.com/icons/bridge-water?style=solid
  /// bridge, road
  static const IconData bridgeWater = IconDataSolid(0xe4ce);

  /// Solid Briefcase icon
  ///
  /// https://fontawesome.com/icons/briefcase?style=solid
  /// bag, briefcas, briefcase, business, luggage, office, work
  static const IconData briefcase = IconDataSolid(0xf0b1);

  /// Solid Briefcase Medical icon
  ///
  /// https://fontawesome.com/icons/briefcase-medical?style=solid
  /// doctor, emt, first aid, health
  static const IconData briefcaseMedical = IconDataSolid(0xf469);

  /// Solid Broom icon
  ///
  /// https://fontawesome.com/icons/broom?style=solid
  /// broom, clean, cleaning, firebolt, fly, halloween, nimbus 2000, quidditch, sweep, sweeping, witch
  static const IconData broom = IconDataSolid(0xf51a);

  /// Solid Broom Ball icon
  ///
  /// https://fontawesome.com/icons/broom-ball?style=solid
  /// ball, bludger, broom, golden snitch, harry potter, hogwarts, quaffle, sport, wizard
  static const IconData broomBall = IconDataSolid(0xf458);

  /// Alias quidditch for icon [broomBall]
  @Deprecated('Use "broomBall" instead.')
  static const IconData quidditch = broomBall;

  /// Alias quidditch-broom-ball for icon [broomBall]
  @Deprecated('Use "broomBall" instead.')
  static const IconData quidditchBroomBall = broomBall;

  /// Solid Brush icon
  ///
  /// https://fontawesome.com/icons/brush?style=solid
  /// art, bristles, color, handle, paint
  static const IconData brush = IconDataSolid(0xf55d);

  /// Brands BTC icon
  ///
  /// https://fontawesome.com/icons/btc?style=brands
  static const IconData btc = IconDataBrands(0xf15a);

  /// Solid Bucket icon
  ///
  /// https://fontawesome.com/icons/bucket?style=solid
  /// bucket, pail, sandcastle
  static const IconData bucket = IconDataSolid(0xe4cf);

  /// Brands Buffer icon
  ///
  /// https://fontawesome.com/icons/buffer?style=brands
  static const IconData buffer = IconDataBrands(0xf837);

  /// Solid Bug icon
  ///
  /// https://fontawesome.com/icons/bug?style=solid
  /// beetle, error, glitch, insect, repair, report
  static const IconData bug = IconDataSolid(0xf188);

  /// Solid Bug Slash icon
  ///
  /// https://fontawesome.com/icons/bug-slash?style=solid
  /// beetle, fix, glitch, insect, optimize, repair, report, warning
  static const IconData bugSlash = IconDataSolid(0xe490);

  /// Solid Bugs icon
  ///
  /// https://fontawesome.com/icons/bugs?style=solid
  /// bedbug, infestation, lice, plague, ticks
  static const IconData bugs = IconDataSolid(0xe4d0);

  /// Solid Building icon
  ///
  /// https://fontawesome.com/icons/building?style=solid
  /// apartment, building, business, city, company, office, office building, urban, work
  static const IconData solidBuilding = IconDataSolid(0xf1ad);

  /// Regular Building icon
  ///
  /// https://fontawesome.com/icons/building?style=regular
  /// apartment, building, business, city, company, office, office building, urban, work
  static const IconData building = IconDataRegular(0xf1ad);

  /// Solid Building Circle Arrow Right icon
  ///
  /// https://fontawesome.com/icons/building-circle-arrow-right?style=solid
  /// building, city, distribution center, office
  static const IconData buildingCircleArrowRight = IconDataSolid(0xe4d1);

  /// Solid Building Circle Check icon
  ///
  /// https://fontawesome.com/icons/building-circle-check?style=solid
  /// building, city, not affected, office, ok, okay
  static const IconData buildingCircleCheck = IconDataSolid(0xe4d2);

  /// Solid Building Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/building-circle-exclamation?style=solid
  /// affected, building, city, office
  static const IconData buildingCircleExclamation = IconDataSolid(0xe4d3);

  /// Solid Building Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/building-circle-xmark?style=solid
  /// building, city, destroy, office
  static const IconData buildingCircleXmark = IconDataSolid(0xe4d4);

  /// Solid Building Columns icon
  ///
  /// https://fontawesome.com/icons/building-columns?style=solid
  /// bank, building, college, education, institution, museum, students
  static const IconData buildingColumns = IconDataSolid(0xf19c);

  /// Alias bank for icon [buildingColumns]
  @Deprecated('Use "buildingColumns" instead.')
  static const IconData bank = buildingColumns;

  /// Alias institution for icon [buildingColumns]
  @Deprecated('Use "buildingColumns" instead.')
  static const IconData institution = buildingColumns;

  /// Alias museum for icon [buildingColumns]
  @Deprecated('Use "buildingColumns" instead.')
  static const IconData museum = buildingColumns;

  /// Alias university for icon [buildingColumns]
  @Deprecated('Use "buildingColumns" instead.')
  static const IconData university = buildingColumns;

  /// Solid Building Flag icon
  ///
  /// https://fontawesome.com/icons/building-flag?style=solid
  ///  city, building, diplomat, embassy, flag, headquarters, united nations
  static const IconData buildingFlag = IconDataSolid(0xe4d5);

  /// Solid Building Lock icon
  ///
  /// https://fontawesome.com/icons/building-lock?style=solid
  /// building, city, closed, lock, lockdown, quarantine, secure
  static const IconData buildingLock = IconDataSolid(0xe4d6);

  /// Solid Building Ngo icon
  ///
  /// https://fontawesome.com/icons/building-ngo?style=solid
  ///  city, building, non governmental organization, office
  static const IconData buildingNgo = IconDataSolid(0xe4d7);

  /// Solid Building Shield icon
  ///
  /// https://fontawesome.com/icons/building-shield?style=solid
  /// building, city, police, protect, safety
  static const IconData buildingShield = IconDataSolid(0xe4d8);

  /// Solid Building Un icon
  ///
  /// https://fontawesome.com/icons/building-un?style=solid
  /// building, city, office, united nations
  static const IconData buildingUn = IconDataSolid(0xe4d9);

  /// Solid Building User icon
  ///
  /// https://fontawesome.com/icons/building-user?style=solid
  /// apartment, building, city
  static const IconData buildingUser = IconDataSolid(0xe4da);

  /// Solid Building Wheat icon
  ///
  /// https://fontawesome.com/icons/building-wheat?style=solid
  /// agriculture, building, city, usda
  static const IconData buildingWheat = IconDataSolid(0xe4db);

  /// Solid Bullhorn icon
  ///
  /// https://fontawesome.com/icons/bullhorn?style=solid
  /// Bullhorn, announcement, broadcast, loud, louder, loudspeaker, megaphone, public address, share
  static const IconData bullhorn = IconDataSolid(0xf0a1);

  /// Solid Bullseye icon
  ///
  /// https://fontawesome.com/icons/bullseye?style=solid
  /// archery, goal, objective, strategy, target
  static const IconData bullseye = IconDataSolid(0xf140);

  /// Solid Burger icon
  ///
  /// https://fontawesome.com/icons/burger?style=solid
  /// bacon, beef, burger, burger king, cheeseburger, fast food, grill, ground beef, mcdonalds, sandwich
  static const IconData burger = IconDataSolid(0xf805);

  /// Alias hamburger for icon [burger]
  @Deprecated('Use "burger" instead.')
  static const IconData hamburger = burger;

  /// Brands Büromöbel-Experte GmbH & Co. KG. icon
  ///
  /// https://fontawesome.com/icons/buromobelexperte?style=brands
  static const IconData buromobelexperte = IconDataBrands(0xf37f);

  /// Solid Burst icon
  ///
  /// https://fontawesome.com/icons/burst?style=solid
  /// boom, crash, explosion
  static const IconData burst = IconDataSolid(0xe4dc);

  /// Solid Bus icon
  ///
  /// https://fontawesome.com/icons/bus?style=solid
  /// bus, oncoming, oncoming bus, public transportation, transportation, travel, vehicle
  static const IconData bus = IconDataSolid(0xf207);

  /// Solid Bus Simple icon
  ///
  /// https://fontawesome.com/icons/bus-simple?style=solid
  /// mta, public transportation, transportation, travel, vehicle
  static const IconData busSimple = IconDataSolid(0xf55e);

  /// Alias bus-alt for icon [busSimple]
  @Deprecated('Use "busSimple" instead.')
  static const IconData busAlt = busSimple;

  /// Solid Business Time icon
  ///
  /// https://fontawesome.com/icons/business-time?style=solid
  /// alarm, briefcase, business socks, clock, flight of the conchords, reminder, wednesday
  static const IconData businessTime = IconDataSolid(0xf64a);

  /// Alias briefcase-clock for icon [businessTime]
  @Deprecated('Use "businessTime" instead.')
  static const IconData briefcaseClock = businessTime;

  /// Brands Buy n Large icon
  ///
  /// https://fontawesome.com/icons/buy-n-large?style=brands
  static const IconData buyNLarge = IconDataBrands(0xf8a6);

  /// Brands BuySellAds icon
  ///
  /// https://fontawesome.com/icons/buysellads?style=brands
  static const IconData buysellads = IconDataBrands(0xf20d);

  /// Solid C icon
  ///
  /// https://fontawesome.com/icons/c?style=solid
  /// Latin Capital Letter C, Latin Small Letter C, letter
  static const IconData c = IconDataSolid(0x43);

  /// Solid Cable Car icon
  ///
  /// https://fontawesome.com/icons/cable-car?style=solid
  /// aerial tramway, cable, gondola, lift, mountain, mountain cableway, tram, tramway, trolley
  static const IconData cableCar = IconDataSolid(0xf7da);

  /// Alias tram for icon [cableCar]
  @Deprecated('Use "cableCar" instead.')
  static const IconData tram = cableCar;

  /// Solid Cake Candles icon
  ///
  /// https://fontawesome.com/icons/cake-candles?style=solid
  /// anniversary, bakery, birthday, birthday cake, cake, candles, celebration, dessert, frosting, holiday, party, pastry, sweet
  static const IconData cakeCandles = IconDataSolid(0xf1fd);

  /// Alias birthday-cake for icon [cakeCandles]
  @Deprecated('Use "cakeCandles" instead.')
  static const IconData birthdayCake = cakeCandles;

  /// Alias cake for icon [cakeCandles]
  @Deprecated('Use "cakeCandles" instead.')
  static const IconData cake = cakeCandles;

  /// Solid Calculator icon
  ///
  /// https://fontawesome.com/icons/calculator?style=solid
  /// Pocket Calculator, abacus, addition, arithmetic, counting, math, multiplication, subtraction
  static const IconData calculator = IconDataSolid(0xf1ec);

  /// Solid Calendar icon
  ///
  /// https://fontawesome.com/icons/calendar?style=solid
  /// calendar, calendar-o, date, day, event, month, schedule, tear-off calendar, time, when, year
  static const IconData solidCalendar = IconDataSolid(0xf133);

  /// Regular Calendar icon
  ///
  /// https://fontawesome.com/icons/calendar?style=regular
  /// calendar, calendar-o, date, day, event, month, schedule, tear-off calendar, time, when, year
  static const IconData calendar = IconDataRegular(0xf133);

  /// Solid Calendar Check icon
  ///
  /// https://fontawesome.com/icons/calendar-check?style=solid
  /// accept, agree, appointment, confirm, correct, date, day, done, event, month, ok, schedule, select, success, tick, time, todo, when, year
  static const IconData solidCalendarCheck = IconDataSolid(0xf274);

  /// Regular Calendar Check icon
  ///
  /// https://fontawesome.com/icons/calendar-check?style=regular
  /// accept, agree, appointment, confirm, correct, date, day, done, event, month, ok, schedule, select, success, tick, time, todo, when, year
  static const IconData calendarCheck = IconDataRegular(0xf274);

  /// Solid Calendar Day icon
  ///
  /// https://fontawesome.com/icons/calendar-day?style=solid
  /// date, day, detail, event, focus, month, schedule, single day, time, today, when, year
  static const IconData calendarDay = IconDataSolid(0xf783);

  /// Solid Calendar Days icon
  ///
  /// https://fontawesome.com/icons/calendar-days?style=solid
  /// calendar, date, day, event, month, schedule, time, when, year
  static const IconData solidCalendarDays = IconDataSolid(0xf073);

  /// Alias calendar-alt for icon [solidCalendarDays]
  @Deprecated('Use "solidCalendarDays" instead.')
  static const IconData solidCalendarAlt = solidCalendarDays;

  /// Regular Calendar Days icon
  ///
  /// https://fontawesome.com/icons/calendar-days?style=regular
  /// calendar, date, day, event, month, schedule, time, when, year
  static const IconData calendarDays = IconDataRegular(0xf073);

  /// Alias calendar-alt for icon [calendarDays]
  @Deprecated('Use "calendarDays" instead.')
  static const IconData calendarAlt = calendarDays;

  /// Solid Calendar Minus icon
  ///
  /// https://fontawesome.com/icons/calendar-minus?style=solid
  /// calendar, date, day, delete, event, month, negative, remove, schedule, time, when, year
  static const IconData solidCalendarMinus = IconDataSolid(0xf272);

  /// Regular Calendar Minus icon
  ///
  /// https://fontawesome.com/icons/calendar-minus?style=regular
  /// calendar, date, day, delete, event, month, negative, remove, schedule, time, when, year
  static const IconData calendarMinus = IconDataRegular(0xf272);

  /// Solid Calendar Plus icon
  ///
  /// https://fontawesome.com/icons/calendar-plus?style=solid
  /// add, calendar, create, date, day, event, month, new, positive, schedule, time, when, year
  static const IconData solidCalendarPlus = IconDataSolid(0xf271);

  /// Regular Calendar Plus icon
  ///
  /// https://fontawesome.com/icons/calendar-plus?style=regular
  /// add, calendar, create, date, day, event, month, new, positive, schedule, time, when, year
  static const IconData calendarPlus = IconDataRegular(0xf271);

  /// Solid Calendar Week icon
  ///
  /// https://fontawesome.com/icons/calendar-week?style=solid
  /// date, day, detail, event, focus, month, schedule, single week, time, today, when, year
  static const IconData calendarWeek = IconDataSolid(0xf784);

  /// Solid Calendar Xmark icon
  ///
  /// https://fontawesome.com/icons/calendar-xmark?style=solid
  /// archive, calendar, date, day, delete, event, month, remove, schedule, time, when, x, year
  static const IconData solidCalendarXmark = IconDataSolid(0xf273);

  /// Alias calendar-times for icon [solidCalendarXmark]
  @Deprecated('Use "solidCalendarXmark" instead.')
  static const IconData solidCalendarTimes = solidCalendarXmark;

  /// Regular Calendar Xmark icon
  ///
  /// https://fontawesome.com/icons/calendar-xmark?style=regular
  /// archive, calendar, date, day, delete, event, month, remove, schedule, time, when, x, year
  static const IconData calendarXmark = IconDataRegular(0xf273);

  /// Alias calendar-times for icon [calendarXmark]
  @Deprecated('Use "calendarXmark" instead.')
  static const IconData calendarTimes = calendarXmark;

  /// Solid Camera icon
  ///
  /// https://fontawesome.com/icons/camera?style=solid
  /// image, lens, photo, picture, record, shutter, video
  static const IconData camera = IconDataSolid(0xf030);

  /// Alias camera-alt for icon [camera]
  @Deprecated('Use "camera" instead.')
  static const IconData cameraAlt = camera;

  /// Solid Camera Retro icon
  ///
  /// https://fontawesome.com/icons/camera-retro?style=solid
  /// camera, image, lens, photo, picture, record, shutter, video
  static const IconData cameraRetro = IconDataSolid(0xf083);

  /// Solid Camera Rotate icon
  ///
  /// https://fontawesome.com/icons/camera-rotate?style=solid
  /// flip, front-facing, photo, selfie
  static const IconData cameraRotate = IconDataSolid(0xe0d8);

  /// Solid Campground icon
  ///
  /// https://fontawesome.com/icons/campground?style=solid
  /// camping, fall, outdoors, teepee, tent, tipi
  static const IconData campground = IconDataSolid(0xf6bb);

  /// Brands Canadian Maple Leaf icon
  ///
  /// https://fontawesome.com/icons/canadian-maple-leaf?style=brands
  /// canada, flag, flora, nature, plant
  static const IconData canadianMapleLeaf = IconDataBrands(0xf785);

  /// Solid Candy Cane icon
  ///
  /// https://fontawesome.com/icons/candy-cane?style=solid
  /// candy, christmas, holiday, mint, peppermint, striped, xmas
  static const IconData candyCane = IconDataSolid(0xf786);

  /// Solid Cannabis icon
  ///
  /// https://fontawesome.com/icons/cannabis?style=solid
  /// bud, chronic, drugs, endica, endo, ganja, marijuana, mary jane, pot, reefer, sativa, spliff, weed, whacky-tabacky
  static const IconData cannabis = IconDataSolid(0xf55f);

  /// Solid Capsules icon
  ///
  /// https://fontawesome.com/icons/capsules?style=solid
  /// drugs, medicine, pills, prescription
  static const IconData capsules = IconDataSolid(0xf46b);

  /// Solid Car icon
  ///
  /// https://fontawesome.com/icons/car?style=solid
  /// auto, automobile, car, oncoming, oncoming automobile, sedan, transportation, travel, vehicle
  static const IconData car = IconDataSolid(0xf1b9);

  /// Alias automobile for icon [car]
  @Deprecated('Use "car" instead.')
  static const IconData automobile = car;

  /// Solid Car Battery icon
  ///
  /// https://fontawesome.com/icons/car-battery?style=solid
  /// auto, electric, mechanic, power
  static const IconData carBattery = IconDataSolid(0xf5df);

  /// Alias battery-car for icon [carBattery]
  @Deprecated('Use "carBattery" instead.')
  static const IconData batteryCar = carBattery;

  /// Solid Car Burst icon
  ///
  /// https://fontawesome.com/icons/car-burst?style=solid
  /// accident, auto, automobile, insurance, sedan, transportation, vehicle, wreck
  static const IconData carBurst = IconDataSolid(0xf5e1);

  /// Alias car-crash for icon [carBurst]
  @Deprecated('Use "carBurst" instead.')
  static const IconData carCrash = carBurst;

  /// Solid Car On icon
  ///
  /// https://fontawesome.com/icons/car-on?style=solid
  /// alarm, car, carjack, warning
  static const IconData carOn = IconDataSolid(0xe4dd);

  /// Solid Car Rear icon
  ///
  /// https://fontawesome.com/icons/car-rear?style=solid
  /// auto, automobile, sedan, transportation, travel, vehicle
  static const IconData carRear = IconDataSolid(0xf5de);

  /// Alias car-alt for icon [carRear]
  @Deprecated('Use "carRear" instead.')
  static const IconData carAlt = carRear;

  /// Solid Car Side icon
  ///
  /// https://fontawesome.com/icons/car-side?style=solid
  /// auto, automobile, car, sedan, transportation, travel, vehicle
  static const IconData carSide = IconDataSolid(0xf5e4);

  /// Solid Car Tunnel icon
  ///
  /// https://fontawesome.com/icons/car-tunnel?style=solid
  /// road, tunnel
  static const IconData carTunnel = IconDataSolid(0xe4de);

  /// Solid Caravan icon
  ///
  /// https://fontawesome.com/icons/caravan?style=solid
  /// camper, motor home, rv, trailer, travel
  static const IconData caravan = IconDataSolid(0xf8ff);

  /// Solid Caret Down icon
  ///
  /// https://fontawesome.com/icons/caret-down?style=solid
  /// arrow, dropdown, expand, menu, more, triangle
  static const IconData caretDown = IconDataSolid(0xf0d7);

  /// Solid Caret Left icon
  ///
  /// https://fontawesome.com/icons/caret-left?style=solid
  /// arrow, back, previous, triangle
  static const IconData caretLeft = IconDataSolid(0xf0d9);

  /// Solid Caret Right icon
  ///
  /// https://fontawesome.com/icons/caret-right?style=solid
  /// arrow, forward, next, triangle
  static const IconData caretRight = IconDataSolid(0xf0da);

  /// Solid Caret Up icon
  ///
  /// https://fontawesome.com/icons/caret-up?style=solid
  /// arrow, collapse, triangle
  static const IconData caretUp = IconDataSolid(0xf0d8);

  /// Solid Carrot icon
  ///
  /// https://fontawesome.com/icons/carrot?style=solid
  /// bugs bunny, carrot, food, orange, vegan, vegetable
  static const IconData carrot = IconDataSolid(0xf787);

  /// Solid Cart Arrow Down icon
  ///
  /// https://fontawesome.com/icons/cart-arrow-down?style=solid
  /// download, save, shopping
  static const IconData cartArrowDown = IconDataSolid(0xf218);

  /// Solid Cart Flatbed icon
  ///
  /// https://fontawesome.com/icons/cart-flatbed?style=solid
  /// carry, inventory, shipping, transport
  static const IconData cartFlatbed = IconDataSolid(0xf474);

  /// Alias dolly-flatbed for icon [cartFlatbed]
  @Deprecated('Use "cartFlatbed" instead.')
  static const IconData dollyFlatbed = cartFlatbed;

  /// Solid Cart Flatbed Suitcase icon
  ///
  /// https://fontawesome.com/icons/cart-flatbed-suitcase?style=solid
  /// airport, bag, baggage, suitcase, travel
  static const IconData cartFlatbedSuitcase = IconDataSolid(0xf59d);

  /// Alias luggage-cart for icon [cartFlatbedSuitcase]
  @Deprecated('Use "cartFlatbedSuitcase" instead.')
  static const IconData luggageCart = cartFlatbedSuitcase;

  /// Solid Cart Plus icon
  ///
  /// https://fontawesome.com/icons/cart-plus?style=solid
  /// add, create, new, positive, shopping
  static const IconData cartPlus = IconDataSolid(0xf217);

  /// Solid Cart Shopping icon
  ///
  /// https://fontawesome.com/icons/cart-shopping?style=solid
  /// buy, cart, checkout, grocery, payment, purchase, shopping, shopping cart, trolley
  static const IconData cartShopping = IconDataSolid(0xf07a);

  /// Alias shopping-cart for icon [cartShopping]
  @Deprecated('Use "cartShopping" instead.')
  static const IconData shoppingCart = cartShopping;

  /// Solid Cash Register icon
  ///
  /// https://fontawesome.com/icons/cash-register?style=solid
  /// buy, cha-ching, change, checkout, commerce, leaerboard, machine, pay, payment, purchase, store
  static const IconData cashRegister = IconDataSolid(0xf788);

  /// Solid Cat icon
  ///
  /// https://fontawesome.com/icons/cat?style=solid
  /// cat, feline, halloween, holiday, kitten, kitty, meow, pet
  static const IconData cat = IconDataSolid(0xf6be);

  /// Brands Amazon Pay Credit Card icon
  ///
  /// https://fontawesome.com/icons/cc-amazon-pay?style=brands
  static const IconData ccAmazonPay = IconDataBrands(0xf42d);

  /// Brands American Express Credit Card icon
  ///
  /// https://fontawesome.com/icons/cc-amex?style=brands
  /// amex
  static const IconData ccAmex = IconDataBrands(0xf1f3);

  /// Brands Apple Pay Credit Card icon
  ///
  /// https://fontawesome.com/icons/cc-apple-pay?style=brands
  static const IconData ccApplePay = IconDataBrands(0xf416);

  /// Brands Diner's Club Credit Card icon
  ///
  /// https://fontawesome.com/icons/cc-diners-club?style=brands
  static const IconData ccDinersClub = IconDataBrands(0xf24c);

  /// Brands Discover Credit Card icon
  ///
  /// https://fontawesome.com/icons/cc-discover?style=brands
  static const IconData ccDiscover = IconDataBrands(0xf1f2);

  /// Brands JCB Credit Card icon
  ///
  /// https://fontawesome.com/icons/cc-jcb?style=brands
  static const IconData ccJcb = IconDataBrands(0xf24b);

  /// Brands MasterCard Credit Card icon
  ///
  /// https://fontawesome.com/icons/cc-mastercard?style=brands
  static const IconData ccMastercard = IconDataBrands(0xf1f1);

  /// Brands Paypal Credit Card icon
  ///
  /// https://fontawesome.com/icons/cc-paypal?style=brands
  static const IconData ccPaypal = IconDataBrands(0xf1f4);

  /// Brands Stripe Credit Card icon
  ///
  /// https://fontawesome.com/icons/cc-stripe?style=brands
  static const IconData ccStripe = IconDataBrands(0xf1f5);

  /// Brands Visa Credit Card icon
  ///
  /// https://fontawesome.com/icons/cc-visa?style=brands
  static const IconData ccVisa = IconDataBrands(0xf1f0);

  /// Solid Cedi Sign icon
  ///
  /// https://fontawesome.com/icons/cedi-sign?style=solid
  /// Cedi Sign, currency
  static const IconData cediSign = IconDataSolid(0xe0df);

  /// Solid Cent Sign icon
  ///
  /// https://fontawesome.com/icons/cent-sign?style=solid
  /// Cent Sign, currency
  static const IconData centSign = IconDataSolid(0xe3f5);

  /// Brands Centercode icon
  ///
  /// https://fontawesome.com/icons/centercode?style=brands
  static const IconData centercode = IconDataBrands(0xf380);

  /// Brands Centos icon
  ///
  /// https://fontawesome.com/icons/centos?style=brands
  /// linux, operating system, os
  static const IconData centos = IconDataBrands(0xf789);

  /// Solid Certificate icon
  ///
  /// https://fontawesome.com/icons/certificate?style=solid
  /// badge, star, verified
  static const IconData certificate = IconDataSolid(0xf0a3);

  /// Solid Chair icon
  ///
  /// https://fontawesome.com/icons/chair?style=solid
  /// chair, furniture, seat, sit
  static const IconData chair = IconDataSolid(0xf6c0);

  /// Solid Chalkboard icon
  ///
  /// https://fontawesome.com/icons/chalkboard?style=solid
  /// blackboard, learning, school, teaching, whiteboard, writing
  static const IconData chalkboard = IconDataSolid(0xf51b);

  /// Alias blackboard for icon [chalkboard]
  @Deprecated('Use "chalkboard" instead.')
  static const IconData blackboard = chalkboard;

  /// Solid Chalkboard User icon
  ///
  /// https://fontawesome.com/icons/chalkboard-user?style=solid
  /// blackboard, instructor, learning, professor, school, whiteboard, writing
  static const IconData chalkboardUser = IconDataSolid(0xf51c);

  /// Alias chalkboard-teacher for icon [chalkboardUser]
  @Deprecated('Use "chalkboardUser" instead.')
  static const IconData chalkboardTeacher = chalkboardUser;

  /// Solid Champagne Glasses icon
  ///
  /// https://fontawesome.com/icons/champagne-glasses?style=solid
  /// alcohol, bar, beverage, celebrate, celebration, champagne, clink, clinking glasses, drink, glass, holiday, new year's eve, party, toast
  static const IconData champagneGlasses = IconDataSolid(0xf79f);

  /// Alias glass-cheers for icon [champagneGlasses]
  @Deprecated('Use "champagneGlasses" instead.')
  static const IconData glassCheers = champagneGlasses;

  /// Solid Charging Station icon
  ///
  /// https://fontawesome.com/icons/charging-station?style=solid
  /// electric, ev, tesla, vehicle
  static const IconData chargingStation = IconDataSolid(0xf5e7);

  /// Solid Chart Area icon
  ///
  /// https://fontawesome.com/icons/chart-area?style=solid
  /// analytics, area, chart, graph
  static const IconData chartArea = IconDataSolid(0xf1fe);

  /// Alias area-chart for icon [chartArea]
  @Deprecated('Use "chartArea" instead.')
  static const IconData areaChart = chartArea;

  /// Solid Chart Bar icon
  ///
  /// https://fontawesome.com/icons/chart-bar?style=solid
  /// analytics, bar, chart, graph
  static const IconData solidChartBar = IconDataSolid(0xf080);

  /// Alias bar-chart for icon [solidChartBar]
  @Deprecated('Use "solidChartBar" instead.')
  static const IconData solidBarChart = solidChartBar;

  /// Regular Chart Bar icon
  ///
  /// https://fontawesome.com/icons/chart-bar?style=regular
  /// analytics, bar, chart, graph
  static const IconData chartBar = IconDataRegular(0xf080);

  /// Alias bar-chart for icon [chartBar]
  @Deprecated('Use "chartBar" instead.')
  static const IconData barChart = chartBar;

  /// Solid Chart Column icon
  ///
  /// https://fontawesome.com/icons/chart-column?style=solid
  /// bar, bar chart, chart, graph, track, trend
  static const IconData chartColumn = IconDataSolid(0xe0e3);

  /// Solid Chart Gantt icon
  ///
  /// https://fontawesome.com/icons/chart-gantt?style=solid
  /// chart, graph, track, trend
  static const IconData chartGantt = IconDataSolid(0xe0e4);

  /// Solid Chart Line icon
  ///
  /// https://fontawesome.com/icons/chart-line?style=solid
  /// activity, analytics, chart, dashboard, gain, graph, increase, line
  static const IconData chartLine = IconDataSolid(0xf201);

  /// Alias line-chart for icon [chartLine]
  @Deprecated('Use "chartLine" instead.')
  static const IconData lineChart = chartLine;

  /// Solid Chart Pie icon
  ///
  /// https://fontawesome.com/icons/chart-pie?style=solid
  /// analytics, chart, diagram, graph, pie
  static const IconData chartPie = IconDataSolid(0xf200);

  /// Alias pie-chart for icon [chartPie]
  @Deprecated('Use "chartPie" instead.')
  static const IconData pieChart = chartPie;

  /// Solid Chart Simple icon
  ///
  /// https://fontawesome.com/icons/chart-simple?style=solid
  /// analytics, bar, chart, column, graph, row, trend
  static const IconData chartSimple = IconDataSolid(0xe473);

  /// Solid Check icon
  ///
  /// https://fontawesome.com/icons/check?style=solid
  /// Check Mark, accept, agree, check, check mark, checkmark, confirm, correct, done, mark, notice, notification, notify, ok, select, success, tick, todo, yes, ✓
  static const IconData check = IconDataSolid(0xf00c);

  /// Solid Check Double icon
  ///
  /// https://fontawesome.com/icons/check-double?style=solid
  /// accept, agree, checkmark, confirm, correct, done, notice, notification, notify, ok, select, success, tick, todo
  static const IconData checkDouble = IconDataSolid(0xf560);

  /// Solid Check To Slot icon
  ///
  /// https://fontawesome.com/icons/check-to-slot?style=solid
  /// accept, cast, election, politics, positive, voting, yes
  static const IconData checkToSlot = IconDataSolid(0xf772);

  /// Alias vote-yea for icon [checkToSlot]
  @Deprecated('Use "checkToSlot" instead.')
  static const IconData voteYea = checkToSlot;

  /// Solid Cheese icon
  ///
  /// https://fontawesome.com/icons/cheese?style=solid
  /// cheddar, curd, gouda, melt, parmesan, sandwich, swiss, wedge
  static const IconData cheese = IconDataSolid(0xf7ef);

  /// Solid Chess icon
  ///
  /// https://fontawesome.com/icons/chess?style=solid
  /// board, castle, checkmate, game, king, rook, strategy, tournament
  static const IconData chess = IconDataSolid(0xf439);

  /// Solid Chess Bishop icon
  ///
  /// https://fontawesome.com/icons/chess-bishop?style=solid
  /// Black Chess Bishop, board, checkmate, game, strategy
  static const IconData solidChessBishop = IconDataSolid(0xf43a);

  /// Regular Chess Bishop icon
  ///
  /// https://fontawesome.com/icons/chess-bishop?style=regular
  /// Black Chess Bishop, board, checkmate, game, strategy
  static const IconData chessBishop = IconDataRegular(0xf43a);

  /// Solid Chess Board icon
  ///
  /// https://fontawesome.com/icons/chess-board?style=solid
  /// board, checkmate, game, strategy
  static const IconData chessBoard = IconDataSolid(0xf43c);

  /// Solid Chess King icon
  ///
  /// https://fontawesome.com/icons/chess-king?style=solid
  /// Black Chess King, board, checkmate, game, strategy
  static const IconData solidChessKing = IconDataSolid(0xf43f);

  /// Regular Chess King icon
  ///
  /// https://fontawesome.com/icons/chess-king?style=regular
  /// Black Chess King, board, checkmate, game, strategy
  static const IconData chessKing = IconDataRegular(0xf43f);

  /// Solid Chess Knight icon
  ///
  /// https://fontawesome.com/icons/chess-knight?style=solid
  /// Black Chess Knight, board, checkmate, game, horse, strategy
  static const IconData solidChessKnight = IconDataSolid(0xf441);

  /// Regular Chess Knight icon
  ///
  /// https://fontawesome.com/icons/chess-knight?style=regular
  /// Black Chess Knight, board, checkmate, game, horse, strategy
  static const IconData chessKnight = IconDataRegular(0xf441);

  /// Solid Chess Pawn icon
  ///
  /// https://fontawesome.com/icons/chess-pawn?style=solid
  /// board, checkmate, chess, chess pawn, dupe, expendable, game, strategy
  static const IconData solidChessPawn = IconDataSolid(0xf443);

  /// Regular Chess Pawn icon
  ///
  /// https://fontawesome.com/icons/chess-pawn?style=regular
  /// board, checkmate, chess, chess pawn, dupe, expendable, game, strategy
  static const IconData chessPawn = IconDataRegular(0xf443);

  /// Solid Chess Queen icon
  ///
  /// https://fontawesome.com/icons/chess-queen?style=solid
  /// Black Chess Queen, board, checkmate, game, strategy
  static const IconData solidChessQueen = IconDataSolid(0xf445);

  /// Regular Chess Queen icon
  ///
  /// https://fontawesome.com/icons/chess-queen?style=regular
  /// Black Chess Queen, board, checkmate, game, strategy
  static const IconData chessQueen = IconDataRegular(0xf445);

  /// Solid Chess Rook icon
  ///
  /// https://fontawesome.com/icons/chess-rook?style=solid
  /// Black Chess Rook, board, castle, checkmate, game, strategy
  static const IconData solidChessRook = IconDataSolid(0xf447);

  /// Regular Chess Rook icon
  ///
  /// https://fontawesome.com/icons/chess-rook?style=regular
  /// Black Chess Rook, board, castle, checkmate, game, strategy
  static const IconData chessRook = IconDataRegular(0xf447);

  /// Solid Chevron Down icon
  ///
  /// https://fontawesome.com/icons/chevron-down?style=solid
  /// arrow, download, expand
  static const IconData chevronDown = IconDataSolid(0xf078);

  /// Solid Chevron Left icon
  ///
  /// https://fontawesome.com/icons/chevron-left?style=solid
  /// Left-Pointing Angle Bracket, arrow, back, bracket, previous
  static const IconData chevronLeft = IconDataSolid(0xf053);

  /// Solid Chevron Right icon
  ///
  /// https://fontawesome.com/icons/chevron-right?style=solid
  /// Right-Pointing Angle Bracket, arrow, bracket, forward, next
  static const IconData chevronRight = IconDataSolid(0xf054);

  /// Solid Chevron Up icon
  ///
  /// https://fontawesome.com/icons/chevron-up?style=solid
  /// arrow, collapse, upload
  static const IconData chevronUp = IconDataSolid(0xf077);

  /// Solid Child icon
  ///
  /// https://fontawesome.com/icons/child?style=solid
  /// boy, girl, kid, toddler, young, youth
  static const IconData child = IconDataSolid(0xf1ae);

  /// Solid Child Combatant icon
  ///
  /// https://fontawesome.com/icons/child-combatant?style=solid
  /// combatant
  static const IconData childCombatant = IconDataSolid(0xe4e0);

  /// Alias child-rifle for icon [childCombatant]
  @Deprecated('Use "childCombatant" instead.')
  static const IconData childRifle = childCombatant;

  /// Solid Child Dress icon
  ///
  /// https://fontawesome.com/icons/child-dress?style=solid
  /// boy, girl, kid, toddler, young, youth
  static const IconData childDress = IconDataSolid(0xe59c);

  /// Solid Child Reaching icon
  ///
  /// https://fontawesome.com/icons/child-reaching?style=solid
  /// boy, girl, kid, toddler, young, youth
  static const IconData childReaching = IconDataSolid(0xe59d);

  /// Solid Children icon
  ///
  /// https://fontawesome.com/icons/children?style=solid
  /// boy, child, girl, kid, kids, young, youth
  static const IconData children = IconDataSolid(0xe4e1);

  /// Brands Chrome icon
  ///
  /// https://fontawesome.com/icons/chrome?style=brands
  /// browser
  static const IconData chrome = IconDataBrands(0xf268);

  /// Brands Chromecast icon
  ///
  /// https://fontawesome.com/icons/chromecast?style=brands
  static const IconData chromecast = IconDataBrands(0xf838);

  /// Solid Church icon
  ///
  /// https://fontawesome.com/icons/church?style=solid
  /// Christian, building, cathedral, chapel, church, community, cross, religion
  static const IconData church = IconDataSolid(0xf51d);

  /// Solid Circle icon
  ///
  /// https://fontawesome.com/icons/circle?style=solid
  /// Black Circle, Black Large Circle, black circle, blue, blue circle, brown, brown circle, chart, circle, circle-thin, diameter, dot, ellipse, fill, geometric, green, green circle, notification, orange, orange circle, progress, purple, purple circle, red, red circle, round, white circle, yellow, yellow circle
  static const IconData solidCircle = IconDataSolid(0xf111);

  /// Regular Circle icon
  ///
  /// https://fontawesome.com/icons/circle?style=regular
  /// Black Circle, Black Large Circle, black circle, blue, blue circle, brown, brown circle, chart, circle, circle-thin, diameter, dot, ellipse, fill, geometric, green, green circle, notification, orange, orange circle, progress, purple, purple circle, red, red circle, round, white circle, yellow, yellow circle
  static const IconData circle = IconDataRegular(0xf111);

  /// Solid Circle Arrow Down icon
  ///
  /// https://fontawesome.com/icons/circle-arrow-down?style=solid
  /// download
  static const IconData circleArrowDown = IconDataSolid(0xf0ab);

  /// Alias arrow-circle-down for icon [circleArrowDown]
  @Deprecated('Use "circleArrowDown" instead.')
  static const IconData arrowCircleDown = circleArrowDown;

  /// Solid Circle Arrow Left icon
  ///
  /// https://fontawesome.com/icons/circle-arrow-left?style=solid
  /// back, previous
  static const IconData circleArrowLeft = IconDataSolid(0xf0a8);

  /// Alias arrow-circle-left for icon [circleArrowLeft]
  @Deprecated('Use "circleArrowLeft" instead.')
  static const IconData arrowCircleLeft = circleArrowLeft;

  /// Solid Circle Arrow Right icon
  ///
  /// https://fontawesome.com/icons/circle-arrow-right?style=solid
  /// forward, next
  static const IconData circleArrowRight = IconDataSolid(0xf0a9);

  /// Alias arrow-circle-right for icon [circleArrowRight]
  @Deprecated('Use "circleArrowRight" instead.')
  static const IconData arrowCircleRight = circleArrowRight;

  /// Solid Circle Arrow Up icon
  ///
  /// https://fontawesome.com/icons/circle-arrow-up?style=solid
  /// upload
  static const IconData circleArrowUp = IconDataSolid(0xf0aa);

  /// Alias arrow-circle-up for icon [circleArrowUp]
  @Deprecated('Use "circleArrowUp" instead.')
  static const IconData arrowCircleUp = circleArrowUp;

  /// Solid Circle Check icon
  ///
  /// https://fontawesome.com/icons/circle-check?style=solid
  /// accept, affected, agree, clear, confirm, correct, done, ok, select, success, tick, todo, yes
  static const IconData solidCircleCheck = IconDataSolid(0xf058);

  /// Alias check-circle for icon [solidCircleCheck]
  @Deprecated('Use "solidCircleCheck" instead.')
  static const IconData solidCheckCircle = solidCircleCheck;

  /// Regular Circle Check icon
  ///
  /// https://fontawesome.com/icons/circle-check?style=regular
  /// accept, affected, agree, clear, confirm, correct, done, ok, select, success, tick, todo, yes
  static const IconData circleCheck = IconDataRegular(0xf058);

  /// Alias check-circle for icon [circleCheck]
  @Deprecated('Use "circleCheck" instead.')
  static const IconData checkCircle = circleCheck;

  /// Solid Circle Chevron Down icon
  ///
  /// https://fontawesome.com/icons/circle-chevron-down?style=solid
  /// arrow, download, dropdown, menu, more
  static const IconData circleChevronDown = IconDataSolid(0xf13a);

  /// Alias chevron-circle-down for icon [circleChevronDown]
  @Deprecated('Use "circleChevronDown" instead.')
  static const IconData chevronCircleDown = circleChevronDown;

  /// Solid Circle Chevron Left icon
  ///
  /// https://fontawesome.com/icons/circle-chevron-left?style=solid
  /// arrow, back, previous
  static const IconData circleChevronLeft = IconDataSolid(0xf137);

  /// Alias chevron-circle-left for icon [circleChevronLeft]
  @Deprecated('Use "circleChevronLeft" instead.')
  static const IconData chevronCircleLeft = circleChevronLeft;

  /// Solid Circle Chevron Right icon
  ///
  /// https://fontawesome.com/icons/circle-chevron-right?style=solid
  /// arrow, forward, next
  static const IconData circleChevronRight = IconDataSolid(0xf138);

  /// Alias chevron-circle-right for icon [circleChevronRight]
  @Deprecated('Use "circleChevronRight" instead.')
  static const IconData chevronCircleRight = circleChevronRight;

  /// Solid Circle Chevron Up icon
  ///
  /// https://fontawesome.com/icons/circle-chevron-up?style=solid
  /// arrow, collapse, upload
  static const IconData circleChevronUp = IconDataSolid(0xf139);

  /// Alias chevron-circle-up for icon [circleChevronUp]
  @Deprecated('Use "circleChevronUp" instead.')
  static const IconData chevronCircleUp = circleChevronUp;

  /// Solid Circle Dollar To Slot icon
  ///
  /// https://fontawesome.com/icons/circle-dollar-to-slot?style=solid
  /// contribute, generosity, gift, give
  static const IconData circleDollarToSlot = IconDataSolid(0xf4b9);

  /// Alias donate for icon [circleDollarToSlot]
  @Deprecated('Use "circleDollarToSlot" instead.')
  static const IconData donate = circleDollarToSlot;

  /// Solid Circle Dot icon
  ///
  /// https://fontawesome.com/icons/circle-dot?style=solid
  /// bullseye, button, geometric, notification, radio, radio button, target
  static const IconData solidCircleDot = IconDataSolid(0xf192);

  /// Alias dot-circle for icon [solidCircleDot]
  @Deprecated('Use "solidCircleDot" instead.')
  static const IconData solidDotCircle = solidCircleDot;

  /// Regular Circle Dot icon
  ///
  /// https://fontawesome.com/icons/circle-dot?style=regular
  /// bullseye, button, geometric, notification, radio, radio button, target
  static const IconData circleDot = IconDataRegular(0xf192);

  /// Alias dot-circle for icon [circleDot]
  @Deprecated('Use "circleDot" instead.')
  static const IconData dotCircle = circleDot;

  /// Solid Circle Down icon
  ///
  /// https://fontawesome.com/icons/circle-down?style=solid
  /// arrow-circle-o-down, download
  static const IconData solidCircleDown = IconDataSolid(0xf358);

  /// Alias arrow-alt-circle-down for icon [solidCircleDown]
  @Deprecated('Use "solidCircleDown" instead.')
  static const IconData solidArrowAltCircleDown = solidCircleDown;

  /// Regular Circle Down icon
  ///
  /// https://fontawesome.com/icons/circle-down?style=regular
  /// arrow-circle-o-down, download
  static const IconData circleDown = IconDataRegular(0xf358);

  /// Alias arrow-alt-circle-down for icon [circleDown]
  @Deprecated('Use "circleDown" instead.')
  static const IconData arrowAltCircleDown = circleDown;

  /// Solid Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/circle-exclamation?style=solid
  /// affect, alert, damage, danger, error, important, notice, notification, notify, problem, warning
  static const IconData circleExclamation = IconDataSolid(0xf06a);

  /// Alias exclamation-circle for icon [circleExclamation]
  @Deprecated('Use "circleExclamation" instead.')
  static const IconData exclamationCircle = circleExclamation;

  /// Solid Circle H icon
  ///
  /// https://fontawesome.com/icons/circle-h?style=solid
  /// Circled Latin Capital Letter H, clinic, covid-19, emergency, letter, map
  static const IconData circleH = IconDataSolid(0xf47e);

  /// Alias hospital-symbol for icon [circleH]
  @Deprecated('Use "circleH" instead.')
  static const IconData hospitalSymbol = circleH;

  /// Solid Circle Half Stroke icon
  ///
  /// https://fontawesome.com/icons/circle-half-stroke?style=solid
  /// Circle with Left Half Black, adjust, chart, contrast, dark, fill, light, pie, progress, saturation
  static const IconData circleHalfStroke = IconDataSolid(0xf042);

  /// Alias adjust for icon [circleHalfStroke]
  @Deprecated('Use "circleHalfStroke" instead.')
  static const IconData adjust = circleHalfStroke;

  /// Solid Circle Info icon
  ///
  /// https://fontawesome.com/icons/circle-info?style=solid
  /// details, help, information, more, support
  static const IconData circleInfo = IconDataSolid(0xf05a);

  /// Alias info-circle for icon [circleInfo]
  @Deprecated('Use "circleInfo" instead.')
  static const IconData infoCircle = circleInfo;

  /// Solid Circle Left icon
  ///
  /// https://fontawesome.com/icons/circle-left?style=solid
  /// arrow-circle-o-left, back, previous
  static const IconData solidCircleLeft = IconDataSolid(0xf359);

  /// Alias arrow-alt-circle-left for icon [solidCircleLeft]
  @Deprecated('Use "solidCircleLeft" instead.')
  static const IconData solidArrowAltCircleLeft = solidCircleLeft;

  /// Regular Circle Left icon
  ///
  /// https://fontawesome.com/icons/circle-left?style=regular
  /// arrow-circle-o-left, back, previous
  static const IconData circleLeft = IconDataRegular(0xf359);

  /// Alias arrow-alt-circle-left for icon [circleLeft]
  @Deprecated('Use "circleLeft" instead.')
  static const IconData arrowAltCircleLeft = circleLeft;

  /// Solid Circle Minus icon
  ///
  /// https://fontawesome.com/icons/circle-minus?style=solid
  /// delete, hide, negative, remove, shape, trash
  static const IconData circleMinus = IconDataSolid(0xf056);

  /// Alias minus-circle for icon [circleMinus]
  @Deprecated('Use "circleMinus" instead.')
  static const IconData minusCircle = circleMinus;

  /// Solid Circle Nodes icon
  ///
  /// https://fontawesome.com/icons/circle-nodes?style=solid
  /// cluster, connect, network
  static const IconData circleNodes = IconDataSolid(0xe4e2);

  /// Solid Circle Notch icon
  ///
  /// https://fontawesome.com/icons/circle-notch?style=solid
  /// circle-o-notch, diameter, dot, ellipse, round, spinner
  static const IconData circleNotch = IconDataSolid(0xf1ce);

  /// Solid Circle Pause icon
  ///
  /// https://fontawesome.com/icons/circle-pause?style=solid
  /// hold, wait
  static const IconData solidCirclePause = IconDataSolid(0xf28b);

  /// Alias pause-circle for icon [solidCirclePause]
  @Deprecated('Use "solidCirclePause" instead.')
  static const IconData solidPauseCircle = solidCirclePause;

  /// Regular Circle Pause icon
  ///
  /// https://fontawesome.com/icons/circle-pause?style=regular
  /// hold, wait
  static const IconData circlePause = IconDataRegular(0xf28b);

  /// Alias pause-circle for icon [circlePause]
  @Deprecated('Use "circlePause" instead.')
  static const IconData pauseCircle = circlePause;

  /// Solid Circle Play icon
  ///
  /// https://fontawesome.com/icons/circle-play?style=solid
  /// audio, music, playing, sound, start, video
  static const IconData solidCirclePlay = IconDataSolid(0xf144);

  /// Alias play-circle for icon [solidCirclePlay]
  @Deprecated('Use "solidCirclePlay" instead.')
  static const IconData solidPlayCircle = solidCirclePlay;

  /// Regular Circle Play icon
  ///
  /// https://fontawesome.com/icons/circle-play?style=regular
  /// audio, music, playing, sound, start, video
  static const IconData circlePlay = IconDataRegular(0xf144);

  /// Alias play-circle for icon [circlePlay]
  @Deprecated('Use "circlePlay" instead.')
  static const IconData playCircle = circlePlay;

  /// Solid Circle Plus icon
  ///
  /// https://fontawesome.com/icons/circle-plus?style=solid
  /// add, create, expand, new, positive, shape
  static const IconData circlePlus = IconDataSolid(0xf055);

  /// Alias plus-circle for icon [circlePlus]
  @Deprecated('Use "circlePlus" instead.')
  static const IconData plusCircle = circlePlus;

  /// Solid Circle Question icon
  ///
  /// https://fontawesome.com/icons/circle-question?style=solid
  /// help, information, support, unknown
  static const IconData solidCircleQuestion = IconDataSolid(0xf059);

  /// Alias question-circle for icon [solidCircleQuestion]
  @Deprecated('Use "solidCircleQuestion" instead.')
  static const IconData solidQuestionCircle = solidCircleQuestion;

  /// Regular Circle Question icon
  ///
  /// https://fontawesome.com/icons/circle-question?style=regular
  /// help, information, support, unknown
  static const IconData circleQuestion = IconDataRegular(0xf059);

  /// Alias question-circle for icon [circleQuestion]
  @Deprecated('Use "circleQuestion" instead.')
  static const IconData questionCircle = circleQuestion;

  /// Solid Circle Radiation icon
  ///
  /// https://fontawesome.com/icons/circle-radiation?style=solid
  /// danger, dangerous, deadly, hazard, nuclear, radioactive, sign, warning
  static const IconData circleRadiation = IconDataSolid(0xf7ba);

  /// Alias radiation-alt for icon [circleRadiation]
  @Deprecated('Use "circleRadiation" instead.')
  static const IconData radiationAlt = circleRadiation;

  /// Solid Circle Right icon
  ///
  /// https://fontawesome.com/icons/circle-right?style=solid
  /// arrow-circle-o-right, forward, next
  static const IconData solidCircleRight = IconDataSolid(0xf35a);

  /// Alias arrow-alt-circle-right for icon [solidCircleRight]
  @Deprecated('Use "solidCircleRight" instead.')
  static const IconData solidArrowAltCircleRight = solidCircleRight;

  /// Regular Circle Right icon
  ///
  /// https://fontawesome.com/icons/circle-right?style=regular
  /// arrow-circle-o-right, forward, next
  static const IconData circleRight = IconDataRegular(0xf35a);

  /// Alias arrow-alt-circle-right for icon [circleRight]
  @Deprecated('Use "circleRight" instead.')
  static const IconData arrowAltCircleRight = circleRight;

  /// Solid Circle Stop icon
  ///
  /// https://fontawesome.com/icons/circle-stop?style=solid
  /// block, box, circle, square
  static const IconData solidCircleStop = IconDataSolid(0xf28d);

  /// Alias stop-circle for icon [solidCircleStop]
  @Deprecated('Use "solidCircleStop" instead.')
  static const IconData solidStopCircle = solidCircleStop;

  /// Regular Circle Stop icon
  ///
  /// https://fontawesome.com/icons/circle-stop?style=regular
  /// block, box, circle, square
  static const IconData circleStop = IconDataRegular(0xf28d);

  /// Alias stop-circle for icon [circleStop]
  @Deprecated('Use "circleStop" instead.')
  static const IconData stopCircle = circleStop;

  /// Solid Circle Up icon
  ///
  /// https://fontawesome.com/icons/circle-up?style=solid
  /// arrow-circle-o-up
  static const IconData solidCircleUp = IconDataSolid(0xf35b);

  /// Alias arrow-alt-circle-up for icon [solidCircleUp]
  @Deprecated('Use "solidCircleUp" instead.')
  static const IconData solidArrowAltCircleUp = solidCircleUp;

  /// Regular Circle Up icon
  ///
  /// https://fontawesome.com/icons/circle-up?style=regular
  /// arrow-circle-o-up
  static const IconData circleUp = IconDataRegular(0xf35b);

  /// Alias arrow-alt-circle-up for icon [circleUp]
  @Deprecated('Use "circleUp" instead.')
  static const IconData arrowAltCircleUp = circleUp;

  /// Solid Circle User icon
  ///
  /// https://fontawesome.com/icons/circle-user?style=solid
  /// users-people
  static const IconData solidCircleUser = IconDataSolid(0xf2bd);

  /// Alias user-circle for icon [solidCircleUser]
  @Deprecated('Use "solidCircleUser" instead.')
  static const IconData solidUserCircle = solidCircleUser;

  /// Regular Circle User icon
  ///
  /// https://fontawesome.com/icons/circle-user?style=regular
  /// users-people
  static const IconData circleUser = IconDataRegular(0xf2bd);

  /// Alias user-circle for icon [circleUser]
  @Deprecated('Use "circleUser" instead.')
  static const IconData userCircle = circleUser;

  /// Solid Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/circle-xmark?style=solid
  /// close, cross, destroy, exit, incorrect, notice, notification, notify, problem, wrong, x
  static const IconData solidCircleXmark = IconDataSolid(0xf057);

  /// Alias times-circle for icon [solidCircleXmark]
  @Deprecated('Use "solidCircleXmark" instead.')
  static const IconData solidTimesCircle = solidCircleXmark;

  /// Alias xmark-circle for icon [solidCircleXmark]
  @Deprecated('Use "solidCircleXmark" instead.')
  static const IconData solidXmarkCircle = solidCircleXmark;

  /// Regular Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/circle-xmark?style=regular
  /// close, cross, destroy, exit, incorrect, notice, notification, notify, problem, wrong, x
  static const IconData circleXmark = IconDataRegular(0xf057);

  /// Alias times-circle for icon [circleXmark]
  @Deprecated('Use "circleXmark" instead.')
  static const IconData timesCircle = circleXmark;

  /// Alias xmark-circle for icon [circleXmark]
  @Deprecated('Use "circleXmark" instead.')
  static const IconData xmarkCircle = circleXmark;

  /// Solid City icon
  ///
  /// https://fontawesome.com/icons/city?style=solid
  /// buildings, busy, city, cityscape, skyscrapers, urban, windows
  static const IconData city = IconDataSolid(0xf64f);

  /// Solid Clapperboard icon
  ///
  /// https://fontawesome.com/icons/clapperboard?style=solid
  /// camera, clapper, clapper board, director, film, movie, record
  static const IconData clapperboard = IconDataSolid(0xe131);

  /// Solid Clipboard icon
  ///
  /// https://fontawesome.com/icons/clipboard?style=solid
  /// clipboar, clipboard, copy, notes, paste, record
  static const IconData solidClipboard = IconDataSolid(0xf328);

  /// Regular Clipboard icon
  ///
  /// https://fontawesome.com/icons/clipboard?style=regular
  /// clipboar, clipboard, copy, notes, paste, record
  static const IconData clipboard = IconDataRegular(0xf328);

  /// Solid Clipboard Check icon
  ///
  /// https://fontawesome.com/icons/clipboard-check?style=solid
  /// accept, agree, confirm, done, ok, select, success, tick, todo, yes
  static const IconData clipboardCheck = IconDataSolid(0xf46c);

  /// Solid Clipboard List icon
  ///
  /// https://fontawesome.com/icons/clipboard-list?style=solid
  /// checklist, completed, done, finished, intinerary, ol, schedule, tick, todo, ul
  static const IconData clipboardList = IconDataSolid(0xf46d);

  /// Solid Clipboard Question icon
  ///
  /// https://fontawesome.com/icons/clipboard-question?style=solid
  /// assistance, interview, query, question
  static const IconData clipboardQuestion = IconDataSolid(0xe4e3);

  /// Solid Clipboard User icon
  ///
  /// https://fontawesome.com/icons/clipboard-user?style=solid
  /// attendance, record, roster, staff
  static const IconData clipboardUser = IconDataSolid(0xf7f3);

  /// Solid Clock icon
  ///
  /// https://fontawesome.com/icons/clock?style=solid
  /// 00, 4, 4:00, clock, date, four, four o’clock, hour, late, minute, o'clock, o’clock, schedule, ticking, time, timer, timestamp, watch
  static const IconData solidClock = IconDataSolid(0xf017);

  /// Alias clock-four for icon [solidClock]
  @Deprecated('Use "solidClock" instead.')
  static const IconData solidClockFour = solidClock;

  /// Regular Clock icon
  ///
  /// https://fontawesome.com/icons/clock?style=regular
  /// 00, 4, 4:00, clock, date, four, four o’clock, hour, late, minute, o'clock, o’clock, schedule, ticking, time, timer, timestamp, watch
  static const IconData clock = IconDataRegular(0xf017);

  /// Alias clock-four for icon [clock]
  @Deprecated('Use "clock" instead.')
  static const IconData clockFour = clock;

  /// Solid Clock Rotate Left icon
  ///
  /// https://fontawesome.com/icons/clock-rotate-left?style=solid
  /// Rewind, clock, reverse, time, time machine, time travel
  static const IconData clockRotateLeft = IconDataSolid(0xf1da);

  /// Alias history for icon [clockRotateLeft]
  @Deprecated('Use "clockRotateLeft" instead.')
  static const IconData history = clockRotateLeft;

  /// Solid Clone icon
  ///
  /// https://fontawesome.com/icons/clone?style=solid
  /// arrange, copy, duplicate, paste
  static const IconData solidClone = IconDataSolid(0xf24d);

  /// Regular Clone icon
  ///
  /// https://fontawesome.com/icons/clone?style=regular
  /// arrange, copy, duplicate, paste
  static const IconData clone = IconDataRegular(0xf24d);

  /// Solid Closed Captioning icon
  ///
  /// https://fontawesome.com/icons/closed-captioning?style=solid
  /// cc, deaf, hearing, subtitle, subtitling, text, video
  static const IconData solidClosedCaptioning = IconDataSolid(0xf20a);

  /// Regular Closed Captioning icon
  ///
  /// https://fontawesome.com/icons/closed-captioning?style=regular
  /// cc, deaf, hearing, subtitle, subtitling, text, video
  static const IconData closedCaptioning = IconDataRegular(0xf20a);

  /// Solid Cloud icon
  ///
  /// https://fontawesome.com/icons/cloud?style=solid
  /// atmosphere, cloud, fog, overcast, save, upload, weather
  static const IconData cloud = IconDataSolid(0xf0c2);

  /// Solid Cloud Arrow Down icon
  ///
  /// https://fontawesome.com/icons/cloud-arrow-down?style=solid
  /// download, export, save
  static const IconData cloudArrowDown = IconDataSolid(0xf0ed);

  /// Alias cloud-download for icon [cloudArrowDown]
  @Deprecated('Use "cloudArrowDown" instead.')
  static const IconData cloudDownload = cloudArrowDown;

  /// Alias cloud-download-alt for icon [cloudArrowDown]
  @Deprecated('Use "cloudArrowDown" instead.')
  static const IconData cloudDownloadAlt = cloudArrowDown;

  /// Solid Cloud Arrow Up icon
  ///
  /// https://fontawesome.com/icons/cloud-arrow-up?style=solid
  /// import, save, upload
  static const IconData cloudArrowUp = IconDataSolid(0xf0ee);

  /// Alias cloud-upload for icon [cloudArrowUp]
  @Deprecated('Use "cloudArrowUp" instead.')
  static const IconData cloudUpload = cloudArrowUp;

  /// Alias cloud-upload-alt for icon [cloudArrowUp]
  @Deprecated('Use "cloudArrowUp" instead.')
  static const IconData cloudUploadAlt = cloudArrowUp;

  /// Solid Cloud Bolt icon
  ///
  /// https://fontawesome.com/icons/cloud-bolt?style=solid
  /// bolt, cloud, cloud with lightning, lightning, precipitation, rain, storm, weather
  static const IconData cloudBolt = IconDataSolid(0xf76c);

  /// Alias thunderstorm for icon [cloudBolt]
  @Deprecated('Use "cloudBolt" instead.')
  static const IconData thunderstorm = cloudBolt;

  /// Solid Cloud Meatball icon
  ///
  /// https://fontawesome.com/icons/cloud-meatball?style=solid
  /// FLDSMDFR, food, spaghetti, storm
  static const IconData cloudMeatball = IconDataSolid(0xf73b);

  /// Solid Cloud Moon icon
  ///
  /// https://fontawesome.com/icons/cloud-moon?style=solid
  /// crescent, evening, lunar, night, partly cloudy, sky
  static const IconData cloudMoon = IconDataSolid(0xf6c3);

  /// Solid Cloud Moon Rain icon
  ///
  /// https://fontawesome.com/icons/cloud-moon-rain?style=solid
  /// crescent, evening, lunar, night, partly cloudy, precipitation, rain, sky, storm
  static const IconData cloudMoonRain = IconDataSolid(0xf73c);

  /// Solid Cloud Rain icon
  ///
  /// https://fontawesome.com/icons/cloud-rain?style=solid
  /// Rain, cloud, cloud with rain, precipitation, rain, sky, storm
  static const IconData cloudRain = IconDataSolid(0xf73d);

  /// Solid Cloud Showers Heavy icon
  ///
  /// https://fontawesome.com/icons/cloud-showers-heavy?style=solid
  /// precipitation, rain, sky, storm
  static const IconData cloudShowersHeavy = IconDataSolid(0xf740);

  /// Solid Cloud Showers Water icon
  ///
  /// https://fontawesome.com/icons/cloud-showers-water?style=solid
  /// cloud, deluge, flood, rain, storm, surge
  static const IconData cloudShowersWater = IconDataSolid(0xe4e4);

  /// Solid Cloud Sun icon
  ///
  /// https://fontawesome.com/icons/cloud-sun?style=solid
  /// clear, cloud, day, daytime, fall, outdoors, overcast, partly cloudy, sun, sun behind cloud
  static const IconData cloudSun = IconDataSolid(0xf6c4);

  /// Solid Cloud Sun Rain icon
  ///
  /// https://fontawesome.com/icons/cloud-sun-rain?style=solid
  /// cloud, day, overcast, precipitation, rain, storm, summer, sun, sun behind rain cloud, sunshower
  static const IconData cloudSunRain = IconDataSolid(0xf743);

  /// Brands Cloudflare icon
  ///
  /// https://fontawesome.com/icons/cloudflare?style=brands
  static const IconData cloudflare = IconDataBrands(0xe07d);

  /// Brands cloudscale.ch icon
  ///
  /// https://fontawesome.com/icons/cloudscale?style=brands
  static const IconData cloudscale = IconDataBrands(0xf383);

  /// Brands Cloudsmith icon
  ///
  /// https://fontawesome.com/icons/cloudsmith?style=brands
  static const IconData cloudsmith = IconDataBrands(0xf384);

  /// Brands cloudversify icon
  ///
  /// https://fontawesome.com/icons/cloudversify?style=brands
  static const IconData cloudversify = IconDataBrands(0xf385);

  /// Solid Clover icon
  ///
  /// https://fontawesome.com/icons/clover?style=solid
  /// 4, charm, clover, four, four leaf clover, four-leaf clover, leaf, leprechaun, luck, lucky
  static const IconData clover = IconDataSolid(0xe139);

  /// Brands Cmplid icon
  ///
  /// https://fontawesome.com/icons/cmplid?style=brands
  static const IconData cmplid = IconDataBrands(0xe360);

  /// Solid Code icon
  ///
  /// https://fontawesome.com/icons/code?style=solid
  /// brackets, code, development, html
  static const IconData code = IconDataSolid(0xf121);

  /// Solid Code Branch icon
  ///
  /// https://fontawesome.com/icons/code-branch?style=solid
  /// branch, git, github, rebase, svn, vcs, version
  static const IconData codeBranch = IconDataSolid(0xf126);

  /// Solid Code Commit icon
  ///
  /// https://fontawesome.com/icons/code-commit?style=solid
  /// commit, git, github, hash, rebase, svn, vcs, version
  static const IconData codeCommit = IconDataSolid(0xf386);

  /// Solid Code Compare icon
  ///
  /// https://fontawesome.com/icons/code-compare?style=solid
  /// compare, git, github, svn, version
  static const IconData codeCompare = IconDataSolid(0xe13a);

  /// Solid Code Fork icon
  ///
  /// https://fontawesome.com/icons/code-fork?style=solid
  /// fork, git, github, svn, version
  static const IconData codeFork = IconDataSolid(0xe13b);

  /// Solid Code Merge icon
  ///
  /// https://fontawesome.com/icons/code-merge?style=solid
  /// git, github, merge, pr, rebase, svn, vcs, version
  static const IconData codeMerge = IconDataSolid(0xf387);

  /// Solid Code Pull Request icon
  ///
  /// https://fontawesome.com/icons/code-pull-request?style=solid
  /// git, github, pr, svn, version
  static const IconData codePullRequest = IconDataSolid(0xe13c);

  /// Brands Codepen icon
  ///
  /// https://fontawesome.com/icons/codepen?style=brands
  static const IconData codepen = IconDataBrands(0xf1cb);

  /// Brands Codie Pie icon
  ///
  /// https://fontawesome.com/icons/codiepie?style=brands
  static const IconData codiepie = IconDataBrands(0xf284);

  /// Solid Coins icon
  ///
  /// https://fontawesome.com/icons/coins?style=solid
  /// currency, dime, financial, gold, money, penny
  static const IconData coins = IconDataSolid(0xf51e);

  /// Solid Colon Sign icon
  ///
  /// https://fontawesome.com/icons/colon-sign?style=solid
  /// Colon Sign, currency
  static const IconData colonSign = IconDataSolid(0xe140);

  /// Solid Comment icon
  ///
  /// https://fontawesome.com/icons/comment?style=solid
  /// Right Speech Bubble, bubble, chat, commenting, conversation, feedback, message, note, notification, sms, speech, texting
  static const IconData solidComment = IconDataSolid(0xf075);

  /// Regular Comment icon
  ///
  /// https://fontawesome.com/icons/comment?style=regular
  /// Right Speech Bubble, bubble, chat, commenting, conversation, feedback, message, note, notification, sms, speech, texting
  static const IconData comment = IconDataRegular(0xf075);

  /// Solid Comment Dollar icon
  ///
  /// https://fontawesome.com/icons/comment-dollar?style=solid
  /// bubble, chat, commenting, conversation, feedback, message, money, note, notification, pay, sms, speech, spend, texting, transfer
  static const IconData commentDollar = IconDataSolid(0xf651);

  /// Solid Comment Dots icon
  ///
  /// https://fontawesome.com/icons/comment-dots?style=solid
  /// balloon, bubble, chat, comic, commenting, conversation, dialog, feedback, message, more, note, notification, reply, sms, speech, speech balloon, texting
  static const IconData solidCommentDots = IconDataSolid(0xf4ad);

  /// Alias commenting for icon [solidCommentDots]
  @Deprecated('Use "solidCommentDots" instead.')
  static const IconData solidCommenting = solidCommentDots;

  /// Regular Comment Dots icon
  ///
  /// https://fontawesome.com/icons/comment-dots?style=regular
  /// balloon, bubble, chat, comic, commenting, conversation, dialog, feedback, message, more, note, notification, reply, sms, speech, speech balloon, texting
  static const IconData commentDots = IconDataRegular(0xf4ad);

  /// Alias commenting for icon [commentDots]
  @Deprecated('Use "commentDots" instead.')
  static const IconData commenting = commentDots;

  /// Solid Comment Medical icon
  ///
  /// https://fontawesome.com/icons/comment-medical?style=solid
  /// advice, bubble, chat, commenting, conversation, diagnose, feedback, message, note, notification, prescription, sms, speech, texting
  static const IconData commentMedical = IconDataSolid(0xf7f5);

  /// Solid Comment Slash icon
  ///
  /// https://fontawesome.com/icons/comment-slash?style=solid
  /// bubble, cancel, chat, commenting, conversation, feedback, message, mute, note, notification, quiet, sms, speech, texting
  static const IconData commentSlash = IconDataSolid(0xf4b3);

  /// Solid Comment Sms icon
  ///
  /// https://fontawesome.com/icons/comment-sms?style=solid
  /// chat, conversation, message, mobile, notification, phone, sms, texting
  static const IconData commentSms = IconDataSolid(0xf7cd);

  /// Alias sms for icon [commentSms]
  @Deprecated('Use "commentSms" instead.')
  static const IconData sms = commentSms;

  /// Solid Comments icon
  ///
  /// https://fontawesome.com/icons/comments?style=solid
  /// Two Speech Bubbles, bubble, chat, commenting, conversation, feedback, message, note, notification, sms, speech, texting
  static const IconData solidComments = IconDataSolid(0xf086);

  /// Regular Comments icon
  ///
  /// https://fontawesome.com/icons/comments?style=regular
  /// Two Speech Bubbles, bubble, chat, commenting, conversation, feedback, message, note, notification, sms, speech, texting
  static const IconData comments = IconDataRegular(0xf086);

  /// Solid Comments Dollar icon
  ///
  /// https://fontawesome.com/icons/comments-dollar?style=solid
  /// bubble, chat, commenting, conversation, feedback, message, money, note, notification, pay, sms, speech, spend, texting, transfer
  static const IconData commentsDollar = IconDataSolid(0xf653);

  /// Solid Compact Disc icon
  ///
  /// https://fontawesome.com/icons/compact-disc?style=solid
  /// Optical Disc Icon, album, blu-ray, bluray, cd, computer, disc, disk, dvd, media, movie, music, optical, optical disk, record, video, vinyl
  static const IconData compactDisc = IconDataSolid(0xf51f);

  /// Solid Compass icon
  ///
  /// https://fontawesome.com/icons/compass?style=solid
  /// compass, directions, directory, location, magnetic, menu, navigation, orienteering, safari, travel
  static const IconData solidCompass = IconDataSolid(0xf14e);

  /// Regular Compass icon
  ///
  /// https://fontawesome.com/icons/compass?style=regular
  /// compass, directions, directory, location, magnetic, menu, navigation, orienteering, safari, travel
  static const IconData compass = IconDataRegular(0xf14e);

  /// Solid Compass Drafting icon
  ///
  /// https://fontawesome.com/icons/compass-drafting?style=solid
  /// design, map, mechanical drawing, plot, plotting
  static const IconData compassDrafting = IconDataSolid(0xf568);

  /// Alias drafting-compass for icon [compassDrafting]
  @Deprecated('Use "compassDrafting" instead.')
  static const IconData draftingCompass = compassDrafting;

  /// Solid Compress icon
  ///
  /// https://fontawesome.com/icons/compress?style=solid
  /// collapse, fullscreen, minimize, move, resize, shrink, smaller
  static const IconData compress = IconDataSolid(0xf066);

  /// Solid Computer icon
  ///
  /// https://fontawesome.com/icons/computer?style=solid
  /// computer, desktop, display, monitor, tower
  static const IconData computer = IconDataSolid(0xe4e5);

  /// Solid Computer Mouse icon
  ///
  /// https://fontawesome.com/icons/computer-mouse?style=solid
  /// click, computer, computer mouse, cursor, input, peripheral
  static const IconData computerMouse = IconDataSolid(0xf8cc);

  /// Alias mouse for icon [computerMouse]
  @Deprecated('Use "computerMouse" instead.')
  static const IconData mouse = computerMouse;

  /// Brands Confluence icon
  ///
  /// https://fontawesome.com/icons/confluence?style=brands
  /// atlassian
  static const IconData confluence = IconDataBrands(0xf78d);

  /// Brands Connect Develop icon
  ///
  /// https://fontawesome.com/icons/connectdevelop?style=brands
  static const IconData connectdevelop = IconDataBrands(0xf20e);

  /// Brands Contao icon
  ///
  /// https://fontawesome.com/icons/contao?style=brands
  static const IconData contao = IconDataBrands(0xf26d);

  /// Solid Cookie icon
  ///
  /// https://fontawesome.com/icons/cookie?style=solid
  /// baked good, chips, chocolate, cookie, dessert, eat, snack, sweet, treat
  static const IconData cookie = IconDataSolid(0xf563);

  /// Solid Cookie Bite icon
  ///
  /// https://fontawesome.com/icons/cookie-bite?style=solid
  /// baked good, bitten, chips, chocolate, eat, snack, sweet, treat
  static const IconData cookieBite = IconDataSolid(0xf564);

  /// Solid Copy icon
  ///
  /// https://fontawesome.com/icons/copy?style=solid
  /// clone, duplicate, file, files-o, paper, paste
  static const IconData solidCopy = IconDataSolid(0xf0c5);

  /// Regular Copy icon
  ///
  /// https://fontawesome.com/icons/copy?style=regular
  /// clone, duplicate, file, files-o, paper, paste
  static const IconData copy = IconDataRegular(0xf0c5);

  /// Solid Copyright icon
  ///
  /// https://fontawesome.com/icons/copyright?style=solid
  /// brand, c, copyright, mark, register, trademark
  static const IconData solidCopyright = IconDataSolid(0xf1f9);

  /// Regular Copyright icon
  ///
  /// https://fontawesome.com/icons/copyright?style=regular
  /// brand, c, copyright, mark, register, trademark
  static const IconData copyright = IconDataRegular(0xf1f9);

  /// Brands Cotton Bureau icon
  ///
  /// https://fontawesome.com/icons/cotton-bureau?style=brands
  /// clothing, t-shirts, tshirts
  static const IconData cottonBureau = IconDataBrands(0xf89e);

  /// Solid Couch icon
  ///
  /// https://fontawesome.com/icons/couch?style=solid
  /// chair, cushion, furniture, relax, sofa
  static const IconData couch = IconDataSolid(0xf4b8);

  /// Solid Cow icon
  ///
  /// https://fontawesome.com/icons/cow?style=solid
  /// agriculture, animal, beef, bovine, co, cow, farm, fauna, livestock, mammal, milk, moo
  static const IconData cow = IconDataSolid(0xf6c8);

  /// Brands cPanel icon
  ///
  /// https://fontawesome.com/icons/cpanel?style=brands
  static const IconData cpanel = IconDataBrands(0xf388);

  /// Brands Creative Commons icon
  ///
  /// https://fontawesome.com/icons/creative-commons?style=brands
  static const IconData creativeCommons = IconDataBrands(0xf25e);

  /// Brands Creative Commons Attribution icon
  ///
  /// https://fontawesome.com/icons/creative-commons-by?style=brands
  static const IconData creativeCommonsBy = IconDataBrands(0xf4e7);

  /// Brands Creative Commons Noncommercial icon
  ///
  /// https://fontawesome.com/icons/creative-commons-nc?style=brands
  static const IconData creativeCommonsNc = IconDataBrands(0xf4e8);

  /// Brands Creative Commons Noncommercial (Euro Sign) icon
  ///
  /// https://fontawesome.com/icons/creative-commons-nc-eu?style=brands
  static const IconData creativeCommonsNcEu = IconDataBrands(0xf4e9);

  /// Brands Creative Commons Noncommercial (Yen Sign) icon
  ///
  /// https://fontawesome.com/icons/creative-commons-nc-jp?style=brands
  static const IconData creativeCommonsNcJp = IconDataBrands(0xf4ea);

  /// Brands Creative Commons No Derivative Works icon
  ///
  /// https://fontawesome.com/icons/creative-commons-nd?style=brands
  static const IconData creativeCommonsNd = IconDataBrands(0xf4eb);

  /// Brands Creative Commons Public Domain icon
  ///
  /// https://fontawesome.com/icons/creative-commons-pd?style=brands
  static const IconData creativeCommonsPd = IconDataBrands(0xf4ec);

  /// Brands Alternate Creative Commons Public Domain icon
  ///
  /// https://fontawesome.com/icons/creative-commons-pd-alt?style=brands
  static const IconData creativeCommonsPdAlt = IconDataBrands(0xf4ed);

  /// Brands Creative Commons Remix icon
  ///
  /// https://fontawesome.com/icons/creative-commons-remix?style=brands
  static const IconData creativeCommonsRemix = IconDataBrands(0xf4ee);

  /// Brands Creative Commons Share Alike icon
  ///
  /// https://fontawesome.com/icons/creative-commons-sa?style=brands
  static const IconData creativeCommonsSa = IconDataBrands(0xf4ef);

  /// Brands Creative Commons Sampling icon
  ///
  /// https://fontawesome.com/icons/creative-commons-sampling?style=brands
  static const IconData creativeCommonsSampling = IconDataBrands(0xf4f0);

  /// Brands Creative Commons Sampling + icon
  ///
  /// https://fontawesome.com/icons/creative-commons-sampling-plus?style=brands
  static const IconData creativeCommonsSamplingPlus = IconDataBrands(0xf4f1);

  /// Brands Creative Commons Share icon
  ///
  /// https://fontawesome.com/icons/creative-commons-share?style=brands
  static const IconData creativeCommonsShare = IconDataBrands(0xf4f2);

  /// Brands Creative Commons CC0 icon
  ///
  /// https://fontawesome.com/icons/creative-commons-zero?style=brands
  static const IconData creativeCommonsZero = IconDataBrands(0xf4f3);

  /// Solid Credit Card icon
  ///
  /// https://fontawesome.com/icons/credit-card?style=solid
  /// buy, card, checkout, credit, credit card, credit-card-alt, debit, money, payment, purchase
  static const IconData solidCreditCard = IconDataSolid(0xf09d);

  /// Alias credit-card-alt for icon [solidCreditCard]
  @Deprecated('Use "solidCreditCard" instead.')
  static const IconData solidCreditCardAlt = solidCreditCard;

  /// Regular Credit Card icon
  ///
  /// https://fontawesome.com/icons/credit-card?style=regular
  /// buy, card, checkout, credit, credit card, credit-card-alt, debit, money, payment, purchase
  static const IconData creditCard = IconDataRegular(0xf09d);

  /// Alias credit-card-alt for icon [creditCard]
  @Deprecated('Use "creditCard" instead.')
  static const IconData creditCardAlt = creditCard;

  /// Brands Critical Role icon
  ///
  /// https://fontawesome.com/icons/critical-role?style=brands
  /// Dungeons & Dragons, d&d, dnd, fantasy, game, gaming, tabletop
  static const IconData criticalRole = IconDataBrands(0xf6c9);

  /// Solid Crop icon
  ///
  /// https://fontawesome.com/icons/crop?style=solid
  /// design, frame, mask, resize, shrink
  static const IconData crop = IconDataSolid(0xf125);

  /// Solid Crop Simple icon
  ///
  /// https://fontawesome.com/icons/crop-simple?style=solid
  /// design, frame, mask, resize, shrink
  static const IconData cropSimple = IconDataSolid(0xf565);

  /// Alias crop-alt for icon [cropSimple]
  @Deprecated('Use "cropSimple" instead.')
  static const IconData cropAlt = cropSimple;

  /// Solid Cross icon
  ///
  /// https://fontawesome.com/icons/cross?style=solid
  /// Christian, Heavy Latin Cross, catholicism, christianity, church, cross, jesus, latin cross, religion
  static const IconData cross = IconDataSolid(0xf654);

  /// Solid Crosshairs icon
  ///
  /// https://fontawesome.com/icons/crosshairs?style=solid
  /// aim, bullseye, gpd, picker, position
  static const IconData crosshairs = IconDataSolid(0xf05b);

  /// Solid Crow icon
  ///
  /// https://fontawesome.com/icons/crow?style=solid
  /// bird, bullfrog, fauna, halloween, holiday, toad
  static const IconData crow = IconDataSolid(0xf520);

  /// Solid Crown icon
  ///
  /// https://fontawesome.com/icons/crown?style=solid
  /// award, clothing, crown, favorite, king, queen, royal, tiara
  static const IconData crown = IconDataSolid(0xf521);

  /// Solid Crutch icon
  ///
  /// https://fontawesome.com/icons/crutch?style=solid
  /// cane, injury, mobility, wheelchair
  static const IconData crutch = IconDataSolid(0xf7f7);

  /// Solid Cruzeiro Sign icon
  ///
  /// https://fontawesome.com/icons/cruzeiro-sign?style=solid
  /// Cruzeiro Sign, currency
  static const IconData cruzeiroSign = IconDataSolid(0xe152);

  /// Brands CSS 3 Logo icon
  ///
  /// https://fontawesome.com/icons/css3?style=brands
  /// code
  static const IconData css3 = IconDataBrands(0xf13c);

  /// Brands Alternate CSS3 Logo icon
  ///
  /// https://fontawesome.com/icons/css3-alt?style=brands
  static const IconData css3Alt = IconDataBrands(0xf38b);

  /// Solid Cube icon
  ///
  /// https://fontawesome.com/icons/cube?style=solid
  /// 3d, block, dice, package, square, tesseract
  static const IconData cube = IconDataSolid(0xf1b2);

  /// Solid Cubes icon
  ///
  /// https://fontawesome.com/icons/cubes?style=solid
  /// 3d, block, dice, package, pyramid, square, stack, tesseract
  static const IconData cubes = IconDataSolid(0xf1b3);

  /// Solid Cubes Stacked icon
  ///
  /// https://fontawesome.com/icons/cubes-stacked?style=solid
  /// blocks, cubes, sugar
  static const IconData cubesStacked = IconDataSolid(0xe4e6);

  /// Brands Cuttlefish icon
  ///
  /// https://fontawesome.com/icons/cuttlefish?style=brands
  static const IconData cuttlefish = IconDataBrands(0xf38c);

  /// Solid D icon
  ///
  /// https://fontawesome.com/icons/d?style=solid
  /// Latin Capital Letter D, Latin Small Letter D, letter
  static const IconData d = IconDataSolid(0x44);

  /// Brands Dungeons & Dragons icon
  ///
  /// https://fontawesome.com/icons/d-and-d?style=brands
  static const IconData dAndD = IconDataBrands(0xf38d);

  /// Brands D&D Beyond icon
  ///
  /// https://fontawesome.com/icons/d-and-d-beyond?style=brands
  /// Dungeons & Dragons, d&d, dnd, fantasy, gaming, tabletop
  static const IconData dAndDBeyond = IconDataBrands(0xf6ca);

  /// Brands dailymotion icon
  ///
  /// https://fontawesome.com/icons/dailymotion?style=brands
  static const IconData dailymotion = IconDataBrands(0xe052);

  /// Brands DashCube icon
  ///
  /// https://fontawesome.com/icons/dashcube?style=brands
  static const IconData dashcube = IconDataBrands(0xf210);

  /// Solid Database icon
  ///
  /// https://fontawesome.com/icons/database?style=solid
  /// computer, development, directory, memory, storage
  static const IconData database = IconDataSolid(0xf1c0);

  /// Brands Debian icon
  ///
  /// https://fontawesome.com/icons/debian?style=brands
  static const IconData debian = IconDataBrands(0xe60b);

  /// Brands Deezer icon
  ///
  /// https://fontawesome.com/icons/deezer?style=brands
  static const IconData deezer = IconDataBrands(0xe077);

  /// Solid Delete Left icon
  ///
  /// https://fontawesome.com/icons/delete-left?style=solid
  /// Erase to the Left, command, delete, erase, keyboard, undo
  static const IconData deleteLeft = IconDataSolid(0xf55a);

  /// Alias backspace for icon [deleteLeft]
  @Deprecated('Use "deleteLeft" instead.')
  static const IconData backspace = deleteLeft;

  /// Brands Delicious icon
  ///
  /// https://fontawesome.com/icons/delicious?style=brands
  static const IconData delicious = IconDataBrands(0xf1a5);

  /// Solid Democrat icon
  ///
  /// https://fontawesome.com/icons/democrat?style=solid
  /// american, democratic party, donkey, election, left, left-wing, liberal, politics, usa
  static const IconData democrat = IconDataSolid(0xf747);

  /// Brands deploy.dog icon
  ///
  /// https://fontawesome.com/icons/deploydog?style=brands
  static const IconData deploydog = IconDataBrands(0xf38e);

  /// Brands Deskpro icon
  ///
  /// https://fontawesome.com/icons/deskpro?style=brands
  static const IconData deskpro = IconDataBrands(0xf38f);

  /// Solid Desktop icon
  ///
  /// https://fontawesome.com/icons/desktop?style=solid
  /// computer, cpu, demo, desktop, desktop computer, device, imac, machine, monitor, pc, screen
  static const IconData desktop = IconDataSolid(0xf390);

  /// Alias desktop-alt for icon [desktop]
  @Deprecated('Use "desktop" instead.')
  static const IconData desktopAlt = desktop;

  /// Brands DEV icon
  ///
  /// https://fontawesome.com/icons/dev?style=brands
  static const IconData dev = IconDataBrands(0xf6cc);

  /// Brands deviantART icon
  ///
  /// https://fontawesome.com/icons/deviantart?style=brands
  static const IconData deviantart = IconDataBrands(0xf1bd);

  /// Solid Dharmachakra icon
  ///
  /// https://fontawesome.com/icons/dharmachakra?style=solid
  /// Buddhist, buddhism, buddhist, dharma, religion, wheel, wheel of dharma
  static const IconData dharmachakra = IconDataSolid(0xf655);

  /// Brands DHL icon
  ///
  /// https://fontawesome.com/icons/dhl?style=brands
  /// Dalsey, Hillblom and Lynn, german, package, shipping
  static const IconData dhl = IconDataBrands(0xf790);

  /// Solid Diagram Next icon
  ///
  /// https://fontawesome.com/icons/diagram-next?style=solid
  /// cells, chart, gantt, row, subtask, successor, table
  static const IconData diagramNext = IconDataSolid(0xe476);

  /// Solid Diagram Predecessor icon
  ///
  /// https://fontawesome.com/icons/diagram-predecessor?style=solid
  /// cells, chart, gantt, predecessor, previous, row, subtask, table
  static const IconData diagramPredecessor = IconDataSolid(0xe477);

  /// Solid Diagram Project icon
  ///
  /// https://fontawesome.com/icons/diagram-project?style=solid
  /// chart, graph, network, pert
  static const IconData diagramProject = IconDataSolid(0xf542);

  /// Alias project-diagram for icon [diagramProject]
  @Deprecated('Use "diagramProject" instead.')
  static const IconData projectDiagram = diagramProject;

  /// Solid Diagram Successor icon
  ///
  /// https://fontawesome.com/icons/diagram-successor?style=solid
  /// cells, chart, gantt, next, row, subtask, successor, table
  static const IconData diagramSuccessor = IconDataSolid(0xe47a);

  /// Solid Diamond icon
  ///
  /// https://fontawesome.com/icons/diamond?style=solid
  /// card, cards, diamond suit, game, gem, gemstone, poker, suit
  static const IconData diamond = IconDataSolid(0xf219);

  /// Solid Diamond Turn Right icon
  ///
  /// https://fontawesome.com/icons/diamond-turn-right?style=solid
  /// map, navigation, sign, turn
  static const IconData diamondTurnRight = IconDataSolid(0xf5eb);

  /// Alias directions for icon [diamondTurnRight]
  @Deprecated('Use "diamondTurnRight" instead.')
  static const IconData directions = diamondTurnRight;

  /// Brands Diaspora icon
  ///
  /// https://fontawesome.com/icons/diaspora?style=brands
  static const IconData diaspora = IconDataBrands(0xf791);

  /// Solid Dice icon
  ///
  /// https://fontawesome.com/icons/dice?style=solid
  /// chance, dice, die, gambling, game, game die, roll
  static const IconData dice = IconDataSolid(0xf522);

  /// Solid Dice D20 icon
  ///
  /// https://fontawesome.com/icons/dice-d20?style=solid
  /// Dungeons & Dragons, chance, d&d, dnd, fantasy, gambling, game, roll
  static const IconData diceD20 = IconDataSolid(0xf6cf);

  /// Solid Dice D6 icon
  ///
  /// https://fontawesome.com/icons/dice-d6?style=solid
  /// Dungeons & Dragons, chance, d&d, dnd, fantasy, gambling, game, roll
  static const IconData diceD6 = IconDataSolid(0xf6d1);

  /// Solid Dice Five icon
  ///
  /// https://fontawesome.com/icons/dice-five?style=solid
  /// Die Face-5, chance, gambling, game, roll
  static const IconData diceFive = IconDataSolid(0xf523);

  /// Solid Dice Four icon
  ///
  /// https://fontawesome.com/icons/dice-four?style=solid
  /// Die Face-4, chance, gambling, game, roll
  static const IconData diceFour = IconDataSolid(0xf524);

  /// Solid Dice One icon
  ///
  /// https://fontawesome.com/icons/dice-one?style=solid
  /// Die Face-1, chance, gambling, game, roll
  static const IconData diceOne = IconDataSolid(0xf525);

  /// Solid Dice Six icon
  ///
  /// https://fontawesome.com/icons/dice-six?style=solid
  /// Die Face-6, chance, gambling, game, roll
  static const IconData diceSix = IconDataSolid(0xf526);

  /// Solid Dice Three icon
  ///
  /// https://fontawesome.com/icons/dice-three?style=solid
  /// Die Face-3, chance, gambling, game, roll
  static const IconData diceThree = IconDataSolid(0xf527);

  /// Solid Dice Two icon
  ///
  /// https://fontawesome.com/icons/dice-two?style=solid
  /// Die Face-2, chance, gambling, game, roll
  static const IconData diceTwo = IconDataSolid(0xf528);

  /// Brands Digg Logo icon
  ///
  /// https://fontawesome.com/icons/digg?style=brands
  static const IconData digg = IconDataBrands(0xf1a6);

  /// Brands Digital Ocean icon
  ///
  /// https://fontawesome.com/icons/digital-ocean?style=brands
  static const IconData digitalOcean = IconDataBrands(0xf391);

  /// Brands Discord icon
  ///
  /// https://fontawesome.com/icons/discord?style=brands
  static const IconData discord = IconDataBrands(0xf392);

  /// Brands Discourse icon
  ///
  /// https://fontawesome.com/icons/discourse?style=brands
  static const IconData discourse = IconDataBrands(0xf393);

  /// Solid Disease icon
  ///
  /// https://fontawesome.com/icons/disease?style=solid
  /// bacteria, cancer, coronavirus, covid-19, flu, illness, infection, pandemic, sickness, virus
  static const IconData disease = IconDataSolid(0xf7fa);

  /// Solid Display icon
  ///
  /// https://fontawesome.com/icons/display?style=solid
  /// Screen, computer, desktop, imac
  static const IconData display = IconDataSolid(0xe163);

  /// Solid Divide icon
  ///
  /// https://fontawesome.com/icons/divide?style=solid
  /// Division Sign, arithmetic, calculus, divide, division, math, sign, ÷
  static const IconData divide = IconDataSolid(0xf529);

  /// Solid Dna icon
  ///
  /// https://fontawesome.com/icons/dna?style=solid
  /// biologist, dna, double helix, evolution, gene, genetic, genetics, helix, life, molecule, protein
  static const IconData dna = IconDataSolid(0xf471);

  /// Brands DocHub icon
  ///
  /// https://fontawesome.com/icons/dochub?style=brands
  static const IconData dochub = IconDataBrands(0xf394);

  /// Brands Docker icon
  ///
  /// https://fontawesome.com/icons/docker?style=brands
  static const IconData docker = IconDataBrands(0xf395);

  /// Solid Dog icon
  ///
  /// https://fontawesome.com/icons/dog?style=solid
  /// animal, canine, dog, fauna, mammal, pet, pooch, puppy, woof
  static const IconData dog = IconDataSolid(0xf6d3);

  /// Solid Dollar Sign icon
  ///
  /// https://fontawesome.com/icons/dollar-sign?style=solid
  /// Dollar Sign, currency, dollar, heavy dollar sign, money
  static const IconData dollarSign = IconDataSolid(0x24);

  /// Alias dollar for icon [dollarSign]
  @Deprecated('Use "dollarSign" instead.')
  static const IconData dollar = dollarSign;

  /// Alias usd for icon [dollarSign]
  @Deprecated('Use "dollarSign" instead.')
  static const IconData usd = dollarSign;

  /// Solid Dolly icon
  ///
  /// https://fontawesome.com/icons/dolly?style=solid
  /// carry, shipping, transport
  static const IconData dolly = IconDataSolid(0xf472);

  /// Alias dolly-box for icon [dolly]
  @Deprecated('Use "dolly" instead.')
  static const IconData dollyBox = dolly;

  /// Solid Dong Sign icon
  ///
  /// https://fontawesome.com/icons/dong-sign?style=solid
  /// Dong Sign, currency
  static const IconData dongSign = IconDataSolid(0xe169);

  /// Solid Door Closed icon
  ///
  /// https://fontawesome.com/icons/door-closed?style=solid
  /// doo, door, enter, exit, locked
  static const IconData doorClosed = IconDataSolid(0xf52a);

  /// Solid Door Open icon
  ///
  /// https://fontawesome.com/icons/door-open?style=solid
  /// enter, exit, welcome
  static const IconData doorOpen = IconDataSolid(0xf52b);

  /// Solid Dove icon
  ///
  /// https://fontawesome.com/icons/dove?style=solid
  /// bird, dove, fauna, fly, flying, peace, war
  static const IconData dove = IconDataSolid(0xf4ba);

  /// Solid Down Left And Up Right To Center icon
  ///
  /// https://fontawesome.com/icons/down-left-and-up-right-to-center?style=solid
  /// collapse, fullscreen, minimize, move, resize, shrink, smaller
  static const IconData downLeftAndUpRightToCenter = IconDataSolid(0xf422);

  /// Alias compress-alt for icon [downLeftAndUpRightToCenter]
  @Deprecated('Use "downLeftAndUpRightToCenter" instead.')
  static const IconData compressAlt = downLeftAndUpRightToCenter;

  /// Solid Down Long icon
  ///
  /// https://fontawesome.com/icons/down-long?style=solid
  /// download, long-arrow-down
  static const IconData downLong = IconDataSolid(0xf309);

  /// Alias long-arrow-alt-down for icon [downLong]
  @Deprecated('Use "downLong" instead.')
  static const IconData longArrowAltDown = downLong;

  /// Solid Download icon
  ///
  /// https://fontawesome.com/icons/download?style=solid
  /// export, hard drive, save, transfer
  static const IconData download = IconDataSolid(0xf019);

  /// Brands Draft2digital icon
  ///
  /// https://fontawesome.com/icons/draft2digital?style=brands
  static const IconData draft2digital = IconDataBrands(0xf396);

  /// Solid Dragon icon
  ///
  /// https://fontawesome.com/icons/dragon?style=solid
  /// Dungeons & Dragons, d&d, dnd, dragon, fairy tale, fantasy, fire, lizard, serpent
  static const IconData dragon = IconDataSolid(0xf6d5);

  /// Solid Draw Polygon icon
  ///
  /// https://fontawesome.com/icons/draw-polygon?style=solid
  /// anchors, lines, object, render, shape
  static const IconData drawPolygon = IconDataSolid(0xf5ee);

  /// Brands Dribbble icon
  ///
  /// https://fontawesome.com/icons/dribbble?style=brands
  static const IconData dribbble = IconDataBrands(0xf17d);

  /// Brands Dropbox icon
  ///
  /// https://fontawesome.com/icons/dropbox?style=brands
  static const IconData dropbox = IconDataBrands(0xf16b);

  /// Solid Droplet icon
  ///
  /// https://fontawesome.com/icons/droplet?style=solid
  /// cold, color, comic, drop, droplet, raindrop, sweat, waterdrop
  static const IconData droplet = IconDataSolid(0xf043);

  /// Alias tint for icon [droplet]
  @Deprecated('Use "droplet" instead.')
  static const IconData tint = droplet;

  /// Solid Droplet Slash icon
  ///
  /// https://fontawesome.com/icons/droplet-slash?style=solid
  /// color, drop, droplet, raindrop, waterdrop
  static const IconData dropletSlash = IconDataSolid(0xf5c7);

  /// Alias tint-slash for icon [dropletSlash]
  @Deprecated('Use "dropletSlash" instead.')
  static const IconData tintSlash = dropletSlash;

  /// Solid Drum icon
  ///
  /// https://fontawesome.com/icons/drum?style=solid
  /// drum, drumsticks, instrument, music, percussion, snare, sound
  static const IconData drum = IconDataSolid(0xf569);

  /// Solid Drum Steelpan icon
  ///
  /// https://fontawesome.com/icons/drum-steelpan?style=solid
  /// calypso, instrument, music, percussion, reggae, snare, sound, steel, tropical
  static const IconData drumSteelpan = IconDataSolid(0xf56a);

  /// Solid Drumstick Bite icon
  ///
  /// https://fontawesome.com/icons/drumstick-bite?style=solid
  /// bone, chicken, leg, meat, poultry, turkey
  static const IconData drumstickBite = IconDataSolid(0xf6d7);

  /// Brands Drupal Logo icon
  ///
  /// https://fontawesome.com/icons/drupal?style=brands
  static const IconData drupal = IconDataBrands(0xf1a9);

  /// Solid Dumbbell icon
  ///
  /// https://fontawesome.com/icons/dumbbell?style=solid
  /// exercise, gym, strength, weight, weight-lifting
  static const IconData dumbbell = IconDataSolid(0xf44b);

  /// Solid Dumpster icon
  ///
  /// https://fontawesome.com/icons/dumpster?style=solid
  /// alley, bin, commercial, trash, waste
  static const IconData dumpster = IconDataSolid(0xf793);

  /// Solid Dumpster Fire icon
  ///
  /// https://fontawesome.com/icons/dumpster-fire?style=solid
  /// alley, bin, commercial, danger, dangerous, euphemism, flame, heat, hot, trash, waste
  static const IconData dumpsterFire = IconDataSolid(0xf794);

  /// Solid Dungeon icon
  ///
  /// https://fontawesome.com/icons/dungeon?style=solid
  /// Dungeons & Dragons, building, d&d, dnd, door, entrance, fantasy, gate
  static const IconData dungeon = IconDataSolid(0xf6d9);

  /// Brands Dyalog icon
  ///
  /// https://fontawesome.com/icons/dyalog?style=brands
  static const IconData dyalog = IconDataBrands(0xf399);

  /// Solid E icon
  ///
  /// https://fontawesome.com/icons/e?style=solid
  /// Latin Capital Letter E, Latin Small Letter E, letter
  static const IconData e = IconDataSolid(0x45);

  /// Solid Ear Deaf icon
  ///
  /// https://fontawesome.com/icons/ear-deaf?style=solid
  /// ear, hearing, sign language
  static const IconData earDeaf = IconDataSolid(0xf2a4);

  /// Alias deaf for icon [earDeaf]
  @Deprecated('Use "earDeaf" instead.')
  static const IconData deaf = earDeaf;

  /// Alias deafness for icon [earDeaf]
  @Deprecated('Use "earDeaf" instead.')
  static const IconData deafness = earDeaf;

  /// Alias hard-of-hearing for icon [earDeaf]
  @Deprecated('Use "earDeaf" instead.')
  static const IconData hardOfHearing = earDeaf;

  /// Solid Ear Listen icon
  ///
  /// https://fontawesome.com/icons/ear-listen?style=solid
  /// amplify, audio, deaf, ear, headset, hearing, sound
  static const IconData earListen = IconDataSolid(0xf2a2);

  /// Alias assistive-listening-systems for icon [earListen]
  @Deprecated('Use "earListen" instead.')
  static const IconData assistiveListeningSystems = earListen;

  /// Brands Earlybirds icon
  ///
  /// https://fontawesome.com/icons/earlybirds?style=brands
  static const IconData earlybirds = IconDataBrands(0xf39a);

  /// Solid Earth Africa icon
  ///
  /// https://fontawesome.com/icons/earth-africa?style=solid
  /// africa, all, country, earth, europe, global, globe, gps, language, localize, location, map, online, place, planet, translate, travel, world
  static const IconData earthAfrica = IconDataSolid(0xf57c);

  /// Alias globe-africa for icon [earthAfrica]
  @Deprecated('Use "earthAfrica" instead.')
  static const IconData globeAfrica = earthAfrica;

  /// Solid Earth Americas icon
  ///
  /// https://fontawesome.com/icons/earth-americas?style=solid
  /// all, america, country, earth, global, globe, gps, language, localize, location, map, online, place, planet, translate, travel, world
  static const IconData earthAmericas = IconDataSolid(0xf57d);

  /// Alias earth for icon [earthAmericas]
  @Deprecated('Use "earthAmericas" instead.')
  static const IconData earth = earthAmericas;

  /// Alias earth-america for icon [earthAmericas]
  @Deprecated('Use "earthAmericas" instead.')
  static const IconData earthAmerica = earthAmericas;

  /// Alias globe-americas for icon [earthAmericas]
  @Deprecated('Use "earthAmericas" instead.')
  static const IconData globeAmericas = earthAmericas;

  /// Solid Earth Asia icon
  ///
  /// https://fontawesome.com/icons/earth-asia?style=solid
  /// all, asia, australia, country, earth, global, globe, gps, language, localize, location, map, online, place, planet, translate, travel, world
  static const IconData earthAsia = IconDataSolid(0xf57e);

  /// Alias globe-asia for icon [earthAsia]
  @Deprecated('Use "earthAsia" instead.')
  static const IconData globeAsia = earthAsia;

  /// Solid Earth Europe icon
  ///
  /// https://fontawesome.com/icons/earth-europe?style=solid
  /// all, country, earth, europe, global, globe, gps, language, localize, location, map, online, place, planet, translate, travel, world
  static const IconData earthEurope = IconDataSolid(0xf7a2);

  /// Alias globe-europe for icon [earthEurope]
  @Deprecated('Use "earthEurope" instead.')
  static const IconData globeEurope = earthEurope;

  /// Solid Earth Oceania icon
  ///
  /// https://fontawesome.com/icons/earth-oceania?style=solid
  /// all, australia, country, earth, global, globe, gps, language, localize, location, map, melanesia, micronesia, new zealand, online, place, planet, polynesia, translate, travel, world
  static const IconData earthOceania = IconDataSolid(0xe47b);

  /// Alias globe-oceania for icon [earthOceania]
  @Deprecated('Use "earthOceania" instead.')
  static const IconData globeOceania = earthOceania;

  /// Brands eBay icon
  ///
  /// https://fontawesome.com/icons/ebay?style=brands
  static const IconData ebay = IconDataBrands(0xf4f4);

  /// Brands Edge Browser icon
  ///
  /// https://fontawesome.com/icons/edge?style=brands
  /// browser, ie
  static const IconData edge = IconDataBrands(0xf282);

  /// Brands Edge Legacy Browser icon
  ///
  /// https://fontawesome.com/icons/edge-legacy?style=brands
  static const IconData edgeLegacy = IconDataBrands(0xe078);

  /// Solid Egg icon
  ///
  /// https://fontawesome.com/icons/egg?style=solid
  /// breakfast, chicken, easter, egg, food, shell, yolk
  static const IconData egg = IconDataSolid(0xf7fb);

  /// Solid Eject icon
  ///
  /// https://fontawesome.com/icons/eject?style=solid
  /// abort, cancel, cd, discharge, eject, eject button
  static const IconData eject = IconDataSolid(0xf052);

  /// Brands Elementor icon
  ///
  /// https://fontawesome.com/icons/elementor?style=brands
  static const IconData elementor = IconDataBrands(0xf430);

  /// Solid Elevator icon
  ///
  /// https://fontawesome.com/icons/elevator?style=solid
  /// accessibility, elevator, hoist, lift, users-people
  static const IconData elevator = IconDataSolid(0xe16d);

  /// Solid Ellipsis icon
  ///
  /// https://fontawesome.com/icons/ellipsis?style=solid
  /// dots, drag, kebab, list, menu, nav, navigation, ol, pacman, reorder, settings, ul
  static const IconData ellipsis = IconDataSolid(0xf141);

  /// Alias ellipsis-h for icon [ellipsis]
  @Deprecated('Use "ellipsis" instead.')
  static const IconData ellipsisH = ellipsis;

  /// Solid Ellipsis Vertical icon
  ///
  /// https://fontawesome.com/icons/ellipsis-vertical?style=solid
  /// dots, drag, kebab, list, menu, nav, navigation, ol, reorder, settings, ul
  static const IconData ellipsisVertical = IconDataSolid(0xf142);

  /// Alias ellipsis-v for icon [ellipsisVertical]
  @Deprecated('Use "ellipsisVertical" instead.')
  static const IconData ellipsisV = ellipsisVertical;

  /// Brands Ello icon
  ///
  /// https://fontawesome.com/icons/ello?style=brands
  static const IconData ello = IconDataBrands(0xf5f1);

  /// Brands Ember icon
  ///
  /// https://fontawesome.com/icons/ember?style=brands
  static const IconData ember = IconDataBrands(0xf423);

  /// Brands Galactic Empire icon
  ///
  /// https://fontawesome.com/icons/empire?style=brands
  static const IconData empire = IconDataBrands(0xf1d1);

  /// Solid Envelope icon
  ///
  /// https://fontawesome.com/icons/envelope?style=solid
  /// Back of Envelope, e-mail, email, envelope, letter, mail, message, notification, support
  static const IconData solidEnvelope = IconDataSolid(0xf0e0);

  /// Regular Envelope icon
  ///
  /// https://fontawesome.com/icons/envelope?style=regular
  /// Back of Envelope, e-mail, email, envelope, letter, mail, message, notification, support
  static const IconData envelope = IconDataRegular(0xf0e0);

  /// Solid Envelope Circle Check icon
  ///
  /// https://fontawesome.com/icons/envelope-circle-check?style=solid
  /// check, email, envelope, mail, not affected, ok, okay, read, sent
  static const IconData envelopeCircleCheck = IconDataSolid(0xe4e8);

  /// Solid Envelope Open icon
  ///
  /// https://fontawesome.com/icons/envelope-open?style=solid
  /// e-mail, email, letter, mail, message, notification, support
  static const IconData solidEnvelopeOpen = IconDataSolid(0xf2b6);

  /// Regular Envelope Open icon
  ///
  /// https://fontawesome.com/icons/envelope-open?style=regular
  /// e-mail, email, letter, mail, message, notification, support
  static const IconData envelopeOpen = IconDataRegular(0xf2b6);

  /// Solid Envelope Open Text icon
  ///
  /// https://fontawesome.com/icons/envelope-open-text?style=solid
  /// e-mail, email, letter, mail, message, notification, support
  static const IconData envelopeOpenText = IconDataSolid(0xf658);

  /// Solid Envelopes Bulk icon
  ///
  /// https://fontawesome.com/icons/envelopes-bulk?style=solid
  /// archive, envelope, letter, post office, postal, postcard, send, stamp, usps
  static const IconData envelopesBulk = IconDataSolid(0xf674);

  /// Alias mail-bulk for icon [envelopesBulk]
  @Deprecated('Use "envelopesBulk" instead.')
  static const IconData mailBulk = envelopesBulk;

  /// Brands Envira Gallery icon
  ///
  /// https://fontawesome.com/icons/envira?style=brands
  /// leaf
  static const IconData envira = IconDataBrands(0xf299);

  /// Solid Equals icon
  ///
  /// https://fontawesome.com/icons/equals?style=solid
  /// Equals Sign, arithmetic, even, match, math
  static const IconData equals = IconDataSolid(0x3d);

  /// Solid Eraser icon
  ///
  /// https://fontawesome.com/icons/eraser?style=solid
  /// art, delete, remove, rubber
  static const IconData eraser = IconDataSolid(0xf12d);

  /// Brands Erlang icon
  ///
  /// https://fontawesome.com/icons/erlang?style=brands
  static const IconData erlang = IconDataBrands(0xf39d);

  /// Brands Ethereum icon
  ///
  /// https://fontawesome.com/icons/ethereum?style=brands
  static const IconData ethereum = IconDataBrands(0xf42e);

  /// Solid Ethernet icon
  ///
  /// https://fontawesome.com/icons/ethernet?style=solid
  /// cable, cat 5, cat 6, connection, hardware, internet, network, wired
  static const IconData ethernet = IconDataSolid(0xf796);

  /// Brands Etsy icon
  ///
  /// https://fontawesome.com/icons/etsy?style=brands
  static const IconData etsy = IconDataBrands(0xf2d7);

  /// Solid Euro Sign icon
  ///
  /// https://fontawesome.com/icons/euro-sign?style=solid
  /// Euro Sign, currency
  static const IconData euroSign = IconDataSolid(0xf153);

  /// Alias eur for icon [euroSign]
  @Deprecated('Use "euroSign" instead.')
  static const IconData eur = euroSign;

  /// Alias euro for icon [euroSign]
  @Deprecated('Use "euroSign" instead.')
  static const IconData euro = euroSign;

  /// Brands Evernote icon
  ///
  /// https://fontawesome.com/icons/evernote?style=brands
  static const IconData evernote = IconDataBrands(0xf839);

  /// Solid Exclamation icon
  ///
  /// https://fontawesome.com/icons/exclamation?style=solid
  /// !, Exclamation Mark, alert, danger, error, exclamation, important, mark, notice, notification, notify, outlined, problem, punctuation, red exclamation mark, warning, white exclamation mark
  static const IconData exclamation = IconDataSolid(0x21);

  /// Solid Expand icon
  ///
  /// https://fontawesome.com/icons/expand?style=solid
  /// bigger, crop, enlarge, focus, fullscreen, resize, viewfinder
  static const IconData expand = IconDataSolid(0xf065);

  /// Brands ExpeditedSSL icon
  ///
  /// https://fontawesome.com/icons/expeditedssl?style=brands
  static const IconData expeditedssl = IconDataBrands(0xf23e);

  /// Solid Explosion icon
  ///
  /// https://fontawesome.com/icons/explosion?style=solid
  /// blast, blowup, boom, crash, detonation, explosion
  static const IconData explosion = IconDataSolid(0xe4e9);

  /// Solid Eye icon
  ///
  /// https://fontawesome.com/icons/eye?style=solid
  /// body, eye, look, optic, see, seen, show, sight, views, visible
  static const IconData solidEye = IconDataSolid(0xf06e);

  /// Regular Eye icon
  ///
  /// https://fontawesome.com/icons/eye?style=regular
  /// body, eye, look, optic, see, seen, show, sight, views, visible
  static const IconData eye = IconDataRegular(0xf06e);

  /// Solid Eye Dropper icon
  ///
  /// https://fontawesome.com/icons/eye-dropper?style=solid
  /// beaker, clone, color, copy, eyedropper, pipette
  static const IconData eyeDropper = IconDataSolid(0xf1fb);

  /// Alias eye-dropper-empty for icon [eyeDropper]
  @Deprecated('Use "eyeDropper" instead.')
  static const IconData eyeDropperEmpty = eyeDropper;

  /// Alias eyedropper for icon [eyeDropper]
  @Deprecated('Use "eyeDropper" instead.')
  static const IconData eyedropper = eyeDropper;

  /// Solid Eye Low Vision icon
  ///
  /// https://fontawesome.com/icons/eye-low-vision?style=solid
  /// blind, eye, sight
  static const IconData eyeLowVision = IconDataSolid(0xf2a8);

  /// Alias low-vision for icon [eyeLowVision]
  @Deprecated('Use "eyeLowVision" instead.')
  static const IconData lowVision = eyeLowVision;

  /// Solid Eye Slash icon
  ///
  /// https://fontawesome.com/icons/eye-slash?style=solid
  /// blind, hide, show, toggle, unseen, views, visible, visiblity
  static const IconData solidEyeSlash = IconDataSolid(0xf070);

  /// Regular Eye Slash icon
  ///
  /// https://fontawesome.com/icons/eye-slash?style=regular
  /// blind, hide, show, toggle, unseen, views, visible, visiblity
  static const IconData eyeSlash = IconDataRegular(0xf070);

  /// Solid F icon
  ///
  /// https://fontawesome.com/icons/f?style=solid
  /// Latin Capital Letter F, Latin Small Letter F, letter
  static const IconData f = IconDataSolid(0x46);

  /// Solid Face Angry icon
  ///
  /// https://fontawesome.com/icons/face-angry?style=solid
  /// angry, angry face, disapprove, emoticon, face, mad, upset
  static const IconData solidFaceAngry = IconDataSolid(0xf556);

  /// Alias angry for icon [solidFaceAngry]
  @Deprecated('Use "solidFaceAngry" instead.')
  static const IconData solidAngry = solidFaceAngry;

  /// Regular Face Angry icon
  ///
  /// https://fontawesome.com/icons/face-angry?style=regular
  /// angry, angry face, disapprove, emoticon, face, mad, upset
  static const IconData faceAngry = IconDataRegular(0xf556);

  /// Alias angry for icon [faceAngry]
  @Deprecated('Use "faceAngry" instead.')
  static const IconData angry = faceAngry;

  /// Solid Face Dizzy icon
  ///
  /// https://fontawesome.com/icons/face-dizzy?style=solid
  /// dazed, dead, disapprove, emoticon, face
  static const IconData solidFaceDizzy = IconDataSolid(0xf567);

  /// Alias dizzy for icon [solidFaceDizzy]
  @Deprecated('Use "solidFaceDizzy" instead.')
  static const IconData solidDizzy = solidFaceDizzy;

  /// Regular Face Dizzy icon
  ///
  /// https://fontawesome.com/icons/face-dizzy?style=regular
  /// dazed, dead, disapprove, emoticon, face
  static const IconData faceDizzy = IconDataRegular(0xf567);

  /// Alias dizzy for icon [faceDizzy]
  @Deprecated('Use "faceDizzy" instead.')
  static const IconData dizzy = faceDizzy;

  /// Solid Face Flushed icon
  ///
  /// https://fontawesome.com/icons/face-flushed?style=solid
  /// dazed, embarrassed, emoticon, face, flushed, flushed face
  static const IconData solidFaceFlushed = IconDataSolid(0xf579);

  /// Alias flushed for icon [solidFaceFlushed]
  @Deprecated('Use "solidFaceFlushed" instead.')
  static const IconData solidFlushed = solidFaceFlushed;

  /// Regular Face Flushed icon
  ///
  /// https://fontawesome.com/icons/face-flushed?style=regular
  /// dazed, embarrassed, emoticon, face, flushed, flushed face
  static const IconData faceFlushed = IconDataRegular(0xf579);

  /// Alias flushed for icon [faceFlushed]
  @Deprecated('Use "faceFlushed" instead.')
  static const IconData flushed = faceFlushed;

  /// Solid Face Frown icon
  ///
  /// https://fontawesome.com/icons/face-frown?style=solid
  /// disapprove, emoticon, face, frown, frowning face, rating, sad
  static const IconData solidFaceFrown = IconDataSolid(0xf119);

  /// Alias frown for icon [solidFaceFrown]
  @Deprecated('Use "solidFaceFrown" instead.')
  static const IconData solidFrown = solidFaceFrown;

  /// Regular Face Frown icon
  ///
  /// https://fontawesome.com/icons/face-frown?style=regular
  /// disapprove, emoticon, face, frown, frowning face, rating, sad
  static const IconData faceFrown = IconDataRegular(0xf119);

  /// Alias frown for icon [faceFrown]
  @Deprecated('Use "faceFrown" instead.')
  static const IconData frown = faceFrown;

  /// Solid Face Frown Open icon
  ///
  /// https://fontawesome.com/icons/face-frown-open?style=solid
  /// disapprove, emoticon, face, frown, frowning face with open mouth, mouth, open, rating, sad
  static const IconData solidFaceFrownOpen = IconDataSolid(0xf57a);

  /// Alias frown-open for icon [solidFaceFrownOpen]
  @Deprecated('Use "solidFaceFrownOpen" instead.')
  static const IconData solidFrownOpen = solidFaceFrownOpen;

  /// Regular Face Frown Open icon
  ///
  /// https://fontawesome.com/icons/face-frown-open?style=regular
  /// disapprove, emoticon, face, frown, frowning face with open mouth, mouth, open, rating, sad
  static const IconData faceFrownOpen = IconDataRegular(0xf57a);

  /// Alias frown-open for icon [faceFrownOpen]
  @Deprecated('Use "faceFrownOpen" instead.')
  static const IconData frownOpen = faceFrownOpen;

  /// Solid Face Grimace icon
  ///
  /// https://fontawesome.com/icons/face-grimace?style=solid
  /// cringe, emoticon, face, grimace, grimacing face, teeth
  static const IconData solidFaceGrimace = IconDataSolid(0xf57f);

  /// Alias grimace for icon [solidFaceGrimace]
  @Deprecated('Use "solidFaceGrimace" instead.')
  static const IconData solidGrimace = solidFaceGrimace;

  /// Regular Face Grimace icon
  ///
  /// https://fontawesome.com/icons/face-grimace?style=regular
  /// cringe, emoticon, face, grimace, grimacing face, teeth
  static const IconData faceGrimace = IconDataRegular(0xf57f);

  /// Alias grimace for icon [faceGrimace]
  @Deprecated('Use "faceGrimace" instead.')
  static const IconData grimace = faceGrimace;

  /// Solid Face Grin icon
  ///
  /// https://fontawesome.com/icons/face-grin?style=solid
  /// emoticon, face, grin, grinning face, laugh, smile
  static const IconData solidFaceGrin = IconDataSolid(0xf580);

  /// Alias grin for icon [solidFaceGrin]
  @Deprecated('Use "solidFaceGrin" instead.')
  static const IconData solidGrin = solidFaceGrin;

  /// Regular Face Grin icon
  ///
  /// https://fontawesome.com/icons/face-grin?style=regular
  /// emoticon, face, grin, grinning face, laugh, smile
  static const IconData faceGrin = IconDataRegular(0xf580);

  /// Alias grin for icon [faceGrin]
  @Deprecated('Use "faceGrin" instead.')
  static const IconData grin = faceGrin;

  /// Solid Face Grin Beam icon
  ///
  /// https://fontawesome.com/icons/face-grin-beam?style=solid
  /// emoticon, eye, face, grinning face with smiling eyes, laugh, mouth, open, smile
  static const IconData solidFaceGrinBeam = IconDataSolid(0xf582);

  /// Alias grin-beam for icon [solidFaceGrinBeam]
  @Deprecated('Use "solidFaceGrinBeam" instead.')
  static const IconData solidGrinBeam = solidFaceGrinBeam;

  /// Regular Face Grin Beam icon
  ///
  /// https://fontawesome.com/icons/face-grin-beam?style=regular
  /// emoticon, eye, face, grinning face with smiling eyes, laugh, mouth, open, smile
  static const IconData faceGrinBeam = IconDataRegular(0xf582);

  /// Alias grin-beam for icon [faceGrinBeam]
  @Deprecated('Use "faceGrinBeam" instead.')
  static const IconData grinBeam = faceGrinBeam;

  /// Solid Face Grin Beam Sweat icon
  ///
  /// https://fontawesome.com/icons/face-grin-beam-sweat?style=solid
  /// cold, embarass, emoticon, face, grinning face with sweat, open, smile, sweat
  static const IconData solidFaceGrinBeamSweat = IconDataSolid(0xf583);

  /// Alias grin-beam-sweat for icon [solidFaceGrinBeamSweat]
  @Deprecated('Use "solidFaceGrinBeamSweat" instead.')
  static const IconData solidGrinBeamSweat = solidFaceGrinBeamSweat;

  /// Regular Face Grin Beam Sweat icon
  ///
  /// https://fontawesome.com/icons/face-grin-beam-sweat?style=regular
  /// cold, embarass, emoticon, face, grinning face with sweat, open, smile, sweat
  static const IconData faceGrinBeamSweat = IconDataRegular(0xf583);

  /// Alias grin-beam-sweat for icon [faceGrinBeamSweat]
  @Deprecated('Use "faceGrinBeamSweat" instead.')
  static const IconData grinBeamSweat = faceGrinBeamSweat;

  /// Solid Face Grin Hearts icon
  ///
  /// https://fontawesome.com/icons/face-grin-hearts?style=solid
  /// emoticon, eye, face, love, smile, smiling face with heart-eyes
  static const IconData solidFaceGrinHearts = IconDataSolid(0xf584);

  /// Alias grin-hearts for icon [solidFaceGrinHearts]
  @Deprecated('Use "solidFaceGrinHearts" instead.')
  static const IconData solidGrinHearts = solidFaceGrinHearts;

  /// Regular Face Grin Hearts icon
  ///
  /// https://fontawesome.com/icons/face-grin-hearts?style=regular
  /// emoticon, eye, face, love, smile, smiling face with heart-eyes
  static const IconData faceGrinHearts = IconDataRegular(0xf584);

  /// Alias grin-hearts for icon [faceGrinHearts]
  @Deprecated('Use "faceGrinHearts" instead.')
  static const IconData grinHearts = faceGrinHearts;

  /// Solid Face Grin Squint icon
  ///
  /// https://fontawesome.com/icons/face-grin-squint?style=solid
  /// emoticon, face, grinning squinting face, laugh, mouth, satisfied, smile
  static const IconData solidFaceGrinSquint = IconDataSolid(0xf585);

  /// Alias grin-squint for icon [solidFaceGrinSquint]
  @Deprecated('Use "solidFaceGrinSquint" instead.')
  static const IconData solidGrinSquint = solidFaceGrinSquint;

  /// Regular Face Grin Squint icon
  ///
  /// https://fontawesome.com/icons/face-grin-squint?style=regular
  /// emoticon, face, grinning squinting face, laugh, mouth, satisfied, smile
  static const IconData faceGrinSquint = IconDataRegular(0xf585);

  /// Alias grin-squint for icon [faceGrinSquint]
  @Deprecated('Use "faceGrinSquint" instead.')
  static const IconData grinSquint = faceGrinSquint;

  /// Solid Face Grin Squint Tears icon
  ///
  /// https://fontawesome.com/icons/face-grin-squint-tears?style=solid
  /// emoticon, face, floor, happy, laugh, rolling, rolling on the floor laughing, smile
  static const IconData solidFaceGrinSquintTears = IconDataSolid(0xf586);

  /// Alias grin-squint-tears for icon [solidFaceGrinSquintTears]
  @Deprecated('Use "solidFaceGrinSquintTears" instead.')
  static const IconData solidGrinSquintTears = solidFaceGrinSquintTears;

  /// Regular Face Grin Squint Tears icon
  ///
  /// https://fontawesome.com/icons/face-grin-squint-tears?style=regular
  /// emoticon, face, floor, happy, laugh, rolling, rolling on the floor laughing, smile
  static const IconData faceGrinSquintTears = IconDataRegular(0xf586);

  /// Alias grin-squint-tears for icon [faceGrinSquintTears]
  @Deprecated('Use "faceGrinSquintTears" instead.')
  static const IconData grinSquintTears = faceGrinSquintTears;

  /// Solid Face Grin Stars icon
  ///
  /// https://fontawesome.com/icons/face-grin-stars?style=solid
  /// emoticon, eyes, face, grinning, star, star-struck, starry-eyed
  static const IconData solidFaceGrinStars = IconDataSolid(0xf587);

  /// Alias grin-stars for icon [solidFaceGrinStars]
  @Deprecated('Use "solidFaceGrinStars" instead.')
  static const IconData solidGrinStars = solidFaceGrinStars;

  /// Regular Face Grin Stars icon
  ///
  /// https://fontawesome.com/icons/face-grin-stars?style=regular
  /// emoticon, eyes, face, grinning, star, star-struck, starry-eyed
  static const IconData faceGrinStars = IconDataRegular(0xf587);

  /// Alias grin-stars for icon [faceGrinStars]
  @Deprecated('Use "faceGrinStars" instead.')
  static const IconData grinStars = faceGrinStars;

  /// Solid Face Grin Tears icon
  ///
  /// https://fontawesome.com/icons/face-grin-tears?style=solid
  /// LOL, emoticon, face, face with tears of joy, joy, laugh, tear
  static const IconData solidFaceGrinTears = IconDataSolid(0xf588);

  /// Alias grin-tears for icon [solidFaceGrinTears]
  @Deprecated('Use "solidFaceGrinTears" instead.')
  static const IconData solidGrinTears = solidFaceGrinTears;

  /// Regular Face Grin Tears icon
  ///
  /// https://fontawesome.com/icons/face-grin-tears?style=regular
  /// LOL, emoticon, face, face with tears of joy, joy, laugh, tear
  static const IconData faceGrinTears = IconDataRegular(0xf588);

  /// Alias grin-tears for icon [faceGrinTears]
  @Deprecated('Use "faceGrinTears" instead.')
  static const IconData grinTears = faceGrinTears;

  /// Solid Face Grin Tongue icon
  ///
  /// https://fontawesome.com/icons/face-grin-tongue?style=solid
  /// LOL, emoticon, face, face with tongue, tongue
  static const IconData solidFaceGrinTongue = IconDataSolid(0xf589);

  /// Alias grin-tongue for icon [solidFaceGrinTongue]
  @Deprecated('Use "solidFaceGrinTongue" instead.')
  static const IconData solidGrinTongue = solidFaceGrinTongue;

  /// Regular Face Grin Tongue icon
  ///
  /// https://fontawesome.com/icons/face-grin-tongue?style=regular
  /// LOL, emoticon, face, face with tongue, tongue
  static const IconData faceGrinTongue = IconDataRegular(0xf589);

  /// Alias grin-tongue for icon [faceGrinTongue]
  @Deprecated('Use "faceGrinTongue" instead.')
  static const IconData grinTongue = faceGrinTongue;

  /// Solid Face Grin Tongue Squint icon
  ///
  /// https://fontawesome.com/icons/face-grin-tongue-squint?style=solid
  /// LOL, emoticon, eye, face, horrible, squinting face with tongue, taste, tongue
  static const IconData solidFaceGrinTongueSquint = IconDataSolid(0xf58a);

  /// Alias grin-tongue-squint for icon [solidFaceGrinTongueSquint]
  @Deprecated('Use "solidFaceGrinTongueSquint" instead.')
  static const IconData solidGrinTongueSquint = solidFaceGrinTongueSquint;

  /// Regular Face Grin Tongue Squint icon
  ///
  /// https://fontawesome.com/icons/face-grin-tongue-squint?style=regular
  /// LOL, emoticon, eye, face, horrible, squinting face with tongue, taste, tongue
  static const IconData faceGrinTongueSquint = IconDataRegular(0xf58a);

  /// Alias grin-tongue-squint for icon [faceGrinTongueSquint]
  @Deprecated('Use "faceGrinTongueSquint" instead.')
  static const IconData grinTongueSquint = faceGrinTongueSquint;

  /// Solid Face Grin Tongue Wink icon
  ///
  /// https://fontawesome.com/icons/face-grin-tongue-wink?style=solid
  /// LOL, emoticon, eye, face, joke, tongue, wink, winking face with tongue
  static const IconData solidFaceGrinTongueWink = IconDataSolid(0xf58b);

  /// Alias grin-tongue-wink for icon [solidFaceGrinTongueWink]
  @Deprecated('Use "solidFaceGrinTongueWink" instead.')
  static const IconData solidGrinTongueWink = solidFaceGrinTongueWink;

  /// Regular Face Grin Tongue Wink icon
  ///
  /// https://fontawesome.com/icons/face-grin-tongue-wink?style=regular
  /// LOL, emoticon, eye, face, joke, tongue, wink, winking face with tongue
  static const IconData faceGrinTongueWink = IconDataRegular(0xf58b);

  /// Alias grin-tongue-wink for icon [faceGrinTongueWink]
  @Deprecated('Use "faceGrinTongueWink" instead.')
  static const IconData grinTongueWink = faceGrinTongueWink;

  /// Solid Face Grin Wide icon
  ///
  /// https://fontawesome.com/icons/face-grin-wide?style=solid
  /// emoticon, face, grinning face with big eyes, laugh, mouth, open, smile
  static const IconData solidFaceGrinWide = IconDataSolid(0xf581);

  /// Alias grin-alt for icon [solidFaceGrinWide]
  @Deprecated('Use "solidFaceGrinWide" instead.')
  static const IconData solidGrinAlt = solidFaceGrinWide;

  /// Regular Face Grin Wide icon
  ///
  /// https://fontawesome.com/icons/face-grin-wide?style=regular
  /// emoticon, face, grinning face with big eyes, laugh, mouth, open, smile
  static const IconData faceGrinWide = IconDataRegular(0xf581);

  /// Alias grin-alt for icon [faceGrinWide]
  @Deprecated('Use "faceGrinWide" instead.')
  static const IconData grinAlt = faceGrinWide;

  /// Solid Face Grin Wink icon
  ///
  /// https://fontawesome.com/icons/face-grin-wink?style=solid
  /// emoticon, face, flirt, laugh, smile
  static const IconData solidFaceGrinWink = IconDataSolid(0xf58c);

  /// Alias grin-wink for icon [solidFaceGrinWink]
  @Deprecated('Use "solidFaceGrinWink" instead.')
  static const IconData solidGrinWink = solidFaceGrinWink;

  /// Regular Face Grin Wink icon
  ///
  /// https://fontawesome.com/icons/face-grin-wink?style=regular
  /// emoticon, face, flirt, laugh, smile
  static const IconData faceGrinWink = IconDataRegular(0xf58c);

  /// Alias grin-wink for icon [faceGrinWink]
  @Deprecated('Use "faceGrinWink" instead.')
  static const IconData grinWink = faceGrinWink;

  /// Solid Face Kiss icon
  ///
  /// https://fontawesome.com/icons/face-kiss?style=solid
  /// beso, emoticon, face, kiss, kissing face, love, smooch
  static const IconData solidFaceKiss = IconDataSolid(0xf596);

  /// Alias kiss for icon [solidFaceKiss]
  @Deprecated('Use "solidFaceKiss" instead.')
  static const IconData solidKiss = solidFaceKiss;

  /// Regular Face Kiss icon
  ///
  /// https://fontawesome.com/icons/face-kiss?style=regular
  /// beso, emoticon, face, kiss, kissing face, love, smooch
  static const IconData faceKiss = IconDataRegular(0xf596);

  /// Alias kiss for icon [faceKiss]
  @Deprecated('Use "faceKiss" instead.')
  static const IconData kiss = faceKiss;

  /// Solid Face Kiss Beam icon
  ///
  /// https://fontawesome.com/icons/face-kiss-beam?style=solid
  /// beso, emoticon, eye, face, kiss, kissing face with smiling eyes, love, smile, smooch
  static const IconData solidFaceKissBeam = IconDataSolid(0xf597);

  /// Alias kiss-beam for icon [solidFaceKissBeam]
  @Deprecated('Use "solidFaceKissBeam" instead.')
  static const IconData solidKissBeam = solidFaceKissBeam;

  /// Regular Face Kiss Beam icon
  ///
  /// https://fontawesome.com/icons/face-kiss-beam?style=regular
  /// beso, emoticon, eye, face, kiss, kissing face with smiling eyes, love, smile, smooch
  static const IconData faceKissBeam = IconDataRegular(0xf597);

  /// Alias kiss-beam for icon [faceKissBeam]
  @Deprecated('Use "faceKissBeam" instead.')
  static const IconData kissBeam = faceKissBeam;

  /// Solid Face Kiss Wink Heart icon
  ///
  /// https://fontawesome.com/icons/face-kiss-wink-heart?style=solid
  /// beso, emoticon, face, face blowing a kiss, kiss, love, smooch
  static const IconData solidFaceKissWinkHeart = IconDataSolid(0xf598);

  /// Alias kiss-wink-heart for icon [solidFaceKissWinkHeart]
  @Deprecated('Use "solidFaceKissWinkHeart" instead.')
  static const IconData solidKissWinkHeart = solidFaceKissWinkHeart;

  /// Regular Face Kiss Wink Heart icon
  ///
  /// https://fontawesome.com/icons/face-kiss-wink-heart?style=regular
  /// beso, emoticon, face, face blowing a kiss, kiss, love, smooch
  static const IconData faceKissWinkHeart = IconDataRegular(0xf598);

  /// Alias kiss-wink-heart for icon [faceKissWinkHeart]
  @Deprecated('Use "faceKissWinkHeart" instead.')
  static const IconData kissWinkHeart = faceKissWinkHeart;

  /// Solid Face Laugh icon
  ///
  /// https://fontawesome.com/icons/face-laugh?style=solid
  /// LOL, emoticon, face, laugh, smile
  static const IconData solidFaceLaugh = IconDataSolid(0xf599);

  /// Alias laugh for icon [solidFaceLaugh]
  @Deprecated('Use "solidFaceLaugh" instead.')
  static const IconData solidLaugh = solidFaceLaugh;

  /// Regular Face Laugh icon
  ///
  /// https://fontawesome.com/icons/face-laugh?style=regular
  /// LOL, emoticon, face, laugh, smile
  static const IconData faceLaugh = IconDataRegular(0xf599);

  /// Alias laugh for icon [faceLaugh]
  @Deprecated('Use "faceLaugh" instead.')
  static const IconData laugh = faceLaugh;

  /// Solid Face Laugh Beam icon
  ///
  /// https://fontawesome.com/icons/face-laugh-beam?style=solid
  /// LOL, beaming face with smiling eyes, emoticon, eye, face, grin, happy, smile
  static const IconData solidFaceLaughBeam = IconDataSolid(0xf59a);

  /// Alias laugh-beam for icon [solidFaceLaughBeam]
  @Deprecated('Use "solidFaceLaughBeam" instead.')
  static const IconData solidLaughBeam = solidFaceLaughBeam;

  /// Regular Face Laugh Beam icon
  ///
  /// https://fontawesome.com/icons/face-laugh-beam?style=regular
  /// LOL, beaming face with smiling eyes, emoticon, eye, face, grin, happy, smile
  static const IconData faceLaughBeam = IconDataRegular(0xf59a);

  /// Alias laugh-beam for icon [faceLaughBeam]
  @Deprecated('Use "faceLaughBeam" instead.')
  static const IconData laughBeam = faceLaughBeam;

  /// Solid Face Laugh Squint icon
  ///
  /// https://fontawesome.com/icons/face-laugh-squint?style=solid
  /// LOL, emoticon, face, happy, smile
  static const IconData solidFaceLaughSquint = IconDataSolid(0xf59b);

  /// Alias laugh-squint for icon [solidFaceLaughSquint]
  @Deprecated('Use "solidFaceLaughSquint" instead.')
  static const IconData solidLaughSquint = solidFaceLaughSquint;

  /// Regular Face Laugh Squint icon
  ///
  /// https://fontawesome.com/icons/face-laugh-squint?style=regular
  /// LOL, emoticon, face, happy, smile
  static const IconData faceLaughSquint = IconDataRegular(0xf59b);

  /// Alias laugh-squint for icon [faceLaughSquint]
  @Deprecated('Use "faceLaughSquint" instead.')
  static const IconData laughSquint = faceLaughSquint;

  /// Solid Face Laugh Wink icon
  ///
  /// https://fontawesome.com/icons/face-laugh-wink?style=solid
  /// LOL, emoticon, face, happy, smile
  static const IconData solidFaceLaughWink = IconDataSolid(0xf59c);

  /// Alias laugh-wink for icon [solidFaceLaughWink]
  @Deprecated('Use "solidFaceLaughWink" instead.')
  static const IconData solidLaughWink = solidFaceLaughWink;

  /// Regular Face Laugh Wink icon
  ///
  /// https://fontawesome.com/icons/face-laugh-wink?style=regular
  /// LOL, emoticon, face, happy, smile
  static const IconData faceLaughWink = IconDataRegular(0xf59c);

  /// Alias laugh-wink for icon [faceLaughWink]
  @Deprecated('Use "faceLaughWink" instead.')
  static const IconData laughWink = faceLaughWink;

  /// Solid Face Meh icon
  ///
  /// https://fontawesome.com/icons/face-meh?style=solid
  /// deadpan, emoticon, face, meh, neutral, neutral face, rating
  static const IconData solidFaceMeh = IconDataSolid(0xf11a);

  /// Alias meh for icon [solidFaceMeh]
  @Deprecated('Use "solidFaceMeh" instead.')
  static const IconData solidMeh = solidFaceMeh;

  /// Regular Face Meh icon
  ///
  /// https://fontawesome.com/icons/face-meh?style=regular
  /// deadpan, emoticon, face, meh, neutral, neutral face, rating
  static const IconData faceMeh = IconDataRegular(0xf11a);

  /// Alias meh for icon [faceMeh]
  @Deprecated('Use "faceMeh" instead.')
  static const IconData meh = faceMeh;

  /// Solid Face Meh Blank icon
  ///
  /// https://fontawesome.com/icons/face-meh-blank?style=solid
  /// emoticon, face, face without mouth, mouth, neutral, quiet, rating, silent
  static const IconData solidFaceMehBlank = IconDataSolid(0xf5a4);

  /// Alias meh-blank for icon [solidFaceMehBlank]
  @Deprecated('Use "solidFaceMehBlank" instead.')
  static const IconData solidMehBlank = solidFaceMehBlank;

  /// Regular Face Meh Blank icon
  ///
  /// https://fontawesome.com/icons/face-meh-blank?style=regular
  /// emoticon, face, face without mouth, mouth, neutral, quiet, rating, silent
  static const IconData faceMehBlank = IconDataRegular(0xf5a4);

  /// Alias meh-blank for icon [faceMehBlank]
  @Deprecated('Use "faceMehBlank" instead.')
  static const IconData mehBlank = faceMehBlank;

  /// Solid Face Rolling Eyes icon
  ///
  /// https://fontawesome.com/icons/face-rolling-eyes?style=solid
  /// emoticon, eyeroll, eyes, face, face with rolling eyes, neutral, rating, rolling
  static const IconData solidFaceRollingEyes = IconDataSolid(0xf5a5);

  /// Alias meh-rolling-eyes for icon [solidFaceRollingEyes]
  @Deprecated('Use "solidFaceRollingEyes" instead.')
  static const IconData solidMehRollingEyes = solidFaceRollingEyes;

  /// Regular Face Rolling Eyes icon
  ///
  /// https://fontawesome.com/icons/face-rolling-eyes?style=regular
  /// emoticon, eyeroll, eyes, face, face with rolling eyes, neutral, rating, rolling
  static const IconData faceRollingEyes = IconDataRegular(0xf5a5);

  /// Alias meh-rolling-eyes for icon [faceRollingEyes]
  @Deprecated('Use "faceRollingEyes" instead.')
  static const IconData mehRollingEyes = faceRollingEyes;

  /// Solid Face Sad Cry icon
  ///
  /// https://fontawesome.com/icons/face-sad-cry?style=solid
  /// cry, emoticon, face, loudly crying face, sad, sob, tear, tears
  static const IconData solidFaceSadCry = IconDataSolid(0xf5b3);

  /// Alias sad-cry for icon [solidFaceSadCry]
  @Deprecated('Use "solidFaceSadCry" instead.')
  static const IconData solidSadCry = solidFaceSadCry;

  /// Regular Face Sad Cry icon
  ///
  /// https://fontawesome.com/icons/face-sad-cry?style=regular
  /// cry, emoticon, face, loudly crying face, sad, sob, tear, tears
  static const IconData faceSadCry = IconDataRegular(0xf5b3);

  /// Alias sad-cry for icon [faceSadCry]
  @Deprecated('Use "faceSadCry" instead.')
  static const IconData sadCry = faceSadCry;

  /// Solid Face Sad Tear icon
  ///
  /// https://fontawesome.com/icons/face-sad-tear?style=solid
  /// cry, crying face, emoticon, face, sad, tear, tears
  static const IconData solidFaceSadTear = IconDataSolid(0xf5b4);

  /// Alias sad-tear for icon [solidFaceSadTear]
  @Deprecated('Use "solidFaceSadTear" instead.')
  static const IconData solidSadTear = solidFaceSadTear;

  /// Regular Face Sad Tear icon
  ///
  /// https://fontawesome.com/icons/face-sad-tear?style=regular
  /// cry, crying face, emoticon, face, sad, tear, tears
  static const IconData faceSadTear = IconDataRegular(0xf5b4);

  /// Alias sad-tear for icon [faceSadTear]
  @Deprecated('Use "faceSadTear" instead.')
  static const IconData sadTear = faceSadTear;

  /// Solid Face Smile icon
  ///
  /// https://fontawesome.com/icons/face-smile?style=solid
  /// approve, emoticon, face, happy, rating, satisfied, slightly smiling face, smile
  static const IconData solidFaceSmile = IconDataSolid(0xf118);

  /// Alias smile for icon [solidFaceSmile]
  @Deprecated('Use "solidFaceSmile" instead.')
  static const IconData solidSmile = solidFaceSmile;

  /// Regular Face Smile icon
  ///
  /// https://fontawesome.com/icons/face-smile?style=regular
  /// approve, emoticon, face, happy, rating, satisfied, slightly smiling face, smile
  static const IconData faceSmile = IconDataRegular(0xf118);

  /// Alias smile for icon [faceSmile]
  @Deprecated('Use "faceSmile" instead.')
  static const IconData smile = faceSmile;

  /// Solid Face Smile Beam icon
  ///
  /// https://fontawesome.com/icons/face-smile-beam?style=solid
  /// blush, emoticon, eye, face, happy, positive, smile, smiling face with smiling eyes
  static const IconData solidFaceSmileBeam = IconDataSolid(0xf5b8);

  /// Alias smile-beam for icon [solidFaceSmileBeam]
  @Deprecated('Use "solidFaceSmileBeam" instead.')
  static const IconData solidSmileBeam = solidFaceSmileBeam;

  /// Regular Face Smile Beam icon
  ///
  /// https://fontawesome.com/icons/face-smile-beam?style=regular
  /// blush, emoticon, eye, face, happy, positive, smile, smiling face with smiling eyes
  static const IconData faceSmileBeam = IconDataRegular(0xf5b8);

  /// Alias smile-beam for icon [faceSmileBeam]
  @Deprecated('Use "faceSmileBeam" instead.')
  static const IconData smileBeam = faceSmileBeam;

  /// Solid Face Smile Wink icon
  ///
  /// https://fontawesome.com/icons/face-smile-wink?style=solid
  /// emoticon, face, happy, hint, joke, wink, winking face
  static const IconData solidFaceSmileWink = IconDataSolid(0xf4da);

  /// Alias smile-wink for icon [solidFaceSmileWink]
  @Deprecated('Use "solidFaceSmileWink" instead.')
  static const IconData solidSmileWink = solidFaceSmileWink;

  /// Regular Face Smile Wink icon
  ///
  /// https://fontawesome.com/icons/face-smile-wink?style=regular
  /// emoticon, face, happy, hint, joke, wink, winking face
  static const IconData faceSmileWink = IconDataRegular(0xf4da);

  /// Alias smile-wink for icon [faceSmileWink]
  @Deprecated('Use "faceSmileWink" instead.')
  static const IconData smileWink = faceSmileWink;

  /// Solid Face Surprise icon
  ///
  /// https://fontawesome.com/icons/face-surprise?style=solid
  /// emoticon, face, face with open mouth, mouth, open, shocked, sympathy
  static const IconData solidFaceSurprise = IconDataSolid(0xf5c2);

  /// Alias surprise for icon [solidFaceSurprise]
  @Deprecated('Use "solidFaceSurprise" instead.')
  static const IconData solidSurprise = solidFaceSurprise;

  /// Regular Face Surprise icon
  ///
  /// https://fontawesome.com/icons/face-surprise?style=regular
  /// emoticon, face, face with open mouth, mouth, open, shocked, sympathy
  static const IconData faceSurprise = IconDataRegular(0xf5c2);

  /// Alias surprise for icon [faceSurprise]
  @Deprecated('Use "faceSurprise" instead.')
  static const IconData surprise = faceSurprise;

  /// Solid Face Tired icon
  ///
  /// https://fontawesome.com/icons/face-tired?style=solid
  /// angry, emoticon, face, grumpy, tired, tired face, upset
  static const IconData solidFaceTired = IconDataSolid(0xf5c8);

  /// Alias tired for icon [solidFaceTired]
  @Deprecated('Use "solidFaceTired" instead.')
  static const IconData solidTired = solidFaceTired;

  /// Regular Face Tired icon
  ///
  /// https://fontawesome.com/icons/face-tired?style=regular
  /// angry, emoticon, face, grumpy, tired, tired face, upset
  static const IconData faceTired = IconDataRegular(0xf5c8);

  /// Alias tired for icon [faceTired]
  @Deprecated('Use "faceTired" instead.')
  static const IconData tired = faceTired;

  /// Brands Facebook icon
  ///
  /// https://fontawesome.com/icons/facebook?style=brands
  /// facebook-official, social network
  static const IconData facebook = IconDataBrands(0xf09a);

  /// Brands Facebook F icon
  ///
  /// https://fontawesome.com/icons/facebook-f?style=brands
  /// facebook
  static const IconData facebookF = IconDataBrands(0xf39e);

  /// Brands Facebook Messenger icon
  ///
  /// https://fontawesome.com/icons/facebook-messenger?style=brands
  static const IconData facebookMessenger = IconDataBrands(0xf39f);

  /// Solid Fan icon
  ///
  /// https://fontawesome.com/icons/fan?style=solid
  /// ac, air conditioning, blade, blower, cool, hot
  static const IconData fan = IconDataSolid(0xf863);

  /// Brands Fantasy Flight-games icon
  ///
  /// https://fontawesome.com/icons/fantasy-flight-games?style=brands
  /// Dungeons & Dragons, d&d, dnd, fantasy, game, gaming, tabletop
  static const IconData fantasyFlightGames = IconDataBrands(0xf6dc);

  /// Solid Faucet icon
  ///
  /// https://fontawesome.com/icons/faucet?style=solid
  /// covid-19, drinking, drip, house, hygiene, kitchen, potable, potable water, sanitation, sink, water
  static const IconData faucet = IconDataSolid(0xe005);

  /// Solid Faucet Drip icon
  ///
  /// https://fontawesome.com/icons/faucet-drip?style=solid
  /// drinking, drip, house, hygiene, kitchen, potable, potable water, sanitation, sink, water
  static const IconData faucetDrip = IconDataSolid(0xe006);

  /// Solid Fax icon
  ///
  /// https://fontawesome.com/icons/fax?style=solid
  /// Fax Icon, business, communicate, copy, facsimile, fax, fax machine, send
  static const IconData fax = IconDataSolid(0xf1ac);

  /// Solid Feather icon
  ///
  /// https://fontawesome.com/icons/feather?style=solid
  /// bird, feather, flight, light, plucked, plumage, quill, write
  static const IconData feather = IconDataSolid(0xf52d);

  /// Solid Feather Pointed icon
  ///
  /// https://fontawesome.com/icons/feather-pointed?style=solid
  /// bird, light, plucked, quill, write
  static const IconData featherPointed = IconDataSolid(0xf56b);

  /// Alias feather-alt for icon [featherPointed]
  @Deprecated('Use "featherPointed" instead.')
  static const IconData featherAlt = featherPointed;

  /// Brands FedEx icon
  ///
  /// https://fontawesome.com/icons/fedex?style=brands
  /// Federal Express, package, shipping
  static const IconData fedex = IconDataBrands(0xf797);

  /// Brands Fedora icon
  ///
  /// https://fontawesome.com/icons/fedora?style=brands
  /// linux, operating system, os
  static const IconData fedora = IconDataBrands(0xf798);

  /// Solid Ferry icon
  ///
  /// https://fontawesome.com/icons/ferry?style=solid
  /// barge, boat, carry, ferryboat, ship
  static const IconData ferry = IconDataSolid(0xe4ea);

  /// Brands Figma icon
  ///
  /// https://fontawesome.com/icons/figma?style=brands
  /// app, design, interface
  static const IconData figma = IconDataBrands(0xf799);

  /// Solid File icon
  ///
  /// https://fontawesome.com/icons/file?style=solid
  /// Empty Document, document, new, page, page facing up, pdf, resume
  static const IconData solidFile = IconDataSolid(0xf15b);

  /// Regular File icon
  ///
  /// https://fontawesome.com/icons/file?style=regular
  /// Empty Document, document, new, page, page facing up, pdf, resume
  static const IconData file = IconDataRegular(0xf15b);

  /// Solid File Arrow Down icon
  ///
  /// https://fontawesome.com/icons/file-arrow-down?style=solid
  /// document, export, save
  static const IconData fileArrowDown = IconDataSolid(0xf56d);

  /// Alias file-download for icon [fileArrowDown]
  @Deprecated('Use "fileArrowDown" instead.')
  static const IconData fileDownload = fileArrowDown;

  /// Solid File Arrow Up icon
  ///
  /// https://fontawesome.com/icons/file-arrow-up?style=solid
  /// document, import, page, save
  static const IconData fileArrowUp = IconDataSolid(0xf574);

  /// Alias file-upload for icon [fileArrowUp]
  @Deprecated('Use "fileArrowUp" instead.')
  static const IconData fileUpload = fileArrowUp;

  /// Solid File Audio icon
  ///
  /// https://fontawesome.com/icons/file-audio?style=solid
  /// document, mp3, music, page, play, sound
  static const IconData solidFileAudio = IconDataSolid(0xf1c7);

  /// Regular File Audio icon
  ///
  /// https://fontawesome.com/icons/file-audio?style=regular
  /// document, mp3, music, page, play, sound
  static const IconData fileAudio = IconDataRegular(0xf1c7);

  /// Solid File Circle Check icon
  ///
  /// https://fontawesome.com/icons/file-circle-check?style=solid
  /// document, file, not affected, ok, okay, paper
  static const IconData fileCircleCheck = IconDataSolid(0xe5a0);

  /// Solid File Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/file-circle-exclamation?style=solid
  /// document, file, paper
  static const IconData fileCircleExclamation = IconDataSolid(0xe4eb);

  /// Solid File Circle Minus icon
  ///
  /// https://fontawesome.com/icons/file-circle-minus?style=solid
  /// document, file, paper
  static const IconData fileCircleMinus = IconDataSolid(0xe4ed);

  /// Solid File Circle Plus icon
  ///
  /// https://fontawesome.com/icons/file-circle-plus?style=solid
  /// add, document, file, new, page, paper, pdf
  static const IconData fileCirclePlus = IconDataSolid(0xe494);

  /// Solid File Circle Question icon
  ///
  /// https://fontawesome.com/icons/file-circle-question?style=solid
  /// document, file, paper
  static const IconData fileCircleQuestion = IconDataSolid(0xe4ef);

  /// Solid File Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/file-circle-xmark?style=solid
  /// document, file, paper
  static const IconData fileCircleXmark = IconDataSolid(0xe5a1);

  /// Solid File Code icon
  ///
  /// https://fontawesome.com/icons/file-code?style=solid
  /// css, development, document, html
  static const IconData solidFileCode = IconDataSolid(0xf1c9);

  /// Regular File Code icon
  ///
  /// https://fontawesome.com/icons/file-code?style=regular
  /// css, development, document, html
  static const IconData fileCode = IconDataRegular(0xf1c9);

  /// Solid File Contract icon
  ///
  /// https://fontawesome.com/icons/file-contract?style=solid
  /// agreement, binding, document, legal, signature
  static const IconData fileContract = IconDataSolid(0xf56c);

  /// Solid File Csv icon
  ///
  /// https://fontawesome.com/icons/file-csv?style=solid
  /// document, excel, numbers, spreadsheets, table
  static const IconData fileCsv = IconDataSolid(0xf6dd);

  /// Solid File Excel icon
  ///
  /// https://fontawesome.com/icons/file-excel?style=solid
  /// csv, document, numbers, spreadsheets, table
  static const IconData solidFileExcel = IconDataSolid(0xf1c3);

  /// Regular File Excel icon
  ///
  /// https://fontawesome.com/icons/file-excel?style=regular
  /// csv, document, numbers, spreadsheets, table
  static const IconData fileExcel = IconDataRegular(0xf1c3);

  /// Solid File Export icon
  ///
  /// https://fontawesome.com/icons/file-export?style=solid
  /// download, save
  static const IconData fileExport = IconDataSolid(0xf56e);

  /// Alias arrow-right-from-file for icon [fileExport]
  @Deprecated('Use "fileExport" instead.')
  static const IconData arrowRightFromFile = fileExport;

  /// Solid File Image icon
  ///
  /// https://fontawesome.com/icons/file-image?style=solid
  /// Document with Picture, document, image, jpg, photo, png
  static const IconData solidFileImage = IconDataSolid(0xf1c5);

  /// Regular File Image icon
  ///
  /// https://fontawesome.com/icons/file-image?style=regular
  /// Document with Picture, document, image, jpg, photo, png
  static const IconData fileImage = IconDataRegular(0xf1c5);

  /// Solid File Import icon
  ///
  /// https://fontawesome.com/icons/file-import?style=solid
  /// copy, document, send, upload
  static const IconData fileImport = IconDataSolid(0xf56f);

  /// Alias arrow-right-to-file for icon [fileImport]
  @Deprecated('Use "fileImport" instead.')
  static const IconData arrowRightToFile = fileImport;

  /// Solid File Invoice icon
  ///
  /// https://fontawesome.com/icons/file-invoice?style=solid
  /// account, bill, charge, document, payment, receipt
  static const IconData fileInvoice = IconDataSolid(0xf570);

  /// Solid File Invoice Dollar icon
  ///
  /// https://fontawesome.com/icons/file-invoice-dollar?style=solid
  /// $, account, bill, charge, document, dollar-sign, money, payment, receipt, usd
  static const IconData fileInvoiceDollar = IconDataSolid(0xf571);

  /// Solid File Lines icon
  ///
  /// https://fontawesome.com/icons/file-lines?style=solid
  /// Document, Document with Text, document, file-text, invoice, new, page, pdf
  static const IconData solidFileLines = IconDataSolid(0xf15c);

  /// Alias file-alt for icon [solidFileLines]
  @Deprecated('Use "solidFileLines" instead.')
  static const IconData solidFileAlt = solidFileLines;

  /// Alias file-text for icon [solidFileLines]
  @Deprecated('Use "solidFileLines" instead.')
  static const IconData solidFileText = solidFileLines;

  /// Regular File Lines icon
  ///
  /// https://fontawesome.com/icons/file-lines?style=regular
  /// Document, Document with Text, document, file-text, invoice, new, page, pdf
  static const IconData fileLines = IconDataRegular(0xf15c);

  /// Alias file-alt for icon [fileLines]
  @Deprecated('Use "fileLines" instead.')
  static const IconData fileAlt = fileLines;

  /// Alias file-text for icon [fileLines]
  @Deprecated('Use "fileLines" instead.')
  static const IconData fileText = fileLines;

  /// Solid File Medical icon
  ///
  /// https://fontawesome.com/icons/file-medical?style=solid
  /// document, health, history, prescription, record
  static const IconData fileMedical = IconDataSolid(0xf477);

  /// Solid File Pdf icon
  ///
  /// https://fontawesome.com/icons/file-pdf?style=solid
  /// acrobat, document, preview, save
  static const IconData solidFilePdf = IconDataSolid(0xf1c1);

  /// Regular File Pdf icon
  ///
  /// https://fontawesome.com/icons/file-pdf?style=regular
  /// acrobat, document, preview, save
  static const IconData filePdf = IconDataRegular(0xf1c1);

  /// Solid File Pen icon
  ///
  /// https://fontawesome.com/icons/file-pen?style=solid
  /// edit, memo, pen, pencil, update, write
  static const IconData filePen = IconDataSolid(0xf31c);

  /// Alias file-edit for icon [filePen]
  @Deprecated('Use "filePen" instead.')
  static const IconData fileEdit = filePen;

  /// Solid File Powerpoint icon
  ///
  /// https://fontawesome.com/icons/file-powerpoint?style=solid
  /// display, document, keynote, presentation
  static const IconData solidFilePowerpoint = IconDataSolid(0xf1c4);

  /// Regular File Powerpoint icon
  ///
  /// https://fontawesome.com/icons/file-powerpoint?style=regular
  /// display, document, keynote, presentation
  static const IconData filePowerpoint = IconDataRegular(0xf1c4);

  /// Solid File Prescription icon
  ///
  /// https://fontawesome.com/icons/file-prescription?style=solid
  /// document, drugs, medical, medicine, rx
  static const IconData filePrescription = IconDataSolid(0xf572);

  /// Solid File Shield icon
  ///
  /// https://fontawesome.com/icons/file-shield?style=solid
  /// antivirus, data, document, protect, safe, safety, secure
  static const IconData fileShield = IconDataSolid(0xe4f0);

  /// Solid File Signature icon
  ///
  /// https://fontawesome.com/icons/file-signature?style=solid
  /// John Hancock, contract, document, name
  static const IconData fileSignature = IconDataSolid(0xf573);

  /// Solid File Video icon
  ///
  /// https://fontawesome.com/icons/file-video?style=solid
  /// document, m4v, movie, mp4, play
  static const IconData solidFileVideo = IconDataSolid(0xf1c8);

  /// Regular File Video icon
  ///
  /// https://fontawesome.com/icons/file-video?style=regular
  /// document, m4v, movie, mp4, play
  static const IconData fileVideo = IconDataRegular(0xf1c8);

  /// Solid File Waveform icon
  ///
  /// https://fontawesome.com/icons/file-waveform?style=solid
  /// document, health, history, prescription, record
  static const IconData fileWaveform = IconDataSolid(0xf478);

  /// Alias file-medical-alt for icon [fileWaveform]
  @Deprecated('Use "fileWaveform" instead.')
  static const IconData fileMedicalAlt = fileWaveform;

  /// Solid File Word icon
  ///
  /// https://fontawesome.com/icons/file-word?style=solid
  /// document, edit, page, text, writing
  static const IconData solidFileWord = IconDataSolid(0xf1c2);

  /// Regular File Word icon
  ///
  /// https://fontawesome.com/icons/file-word?style=regular
  /// document, edit, page, text, writing
  static const IconData fileWord = IconDataRegular(0xf1c2);

  /// Solid File Zipper icon
  ///
  /// https://fontawesome.com/icons/file-zipper?style=solid
  /// .zip, bundle, compress, compression, download, zip
  static const IconData solidFileZipper = IconDataSolid(0xf1c6);

  /// Alias file-archive for icon [solidFileZipper]
  @Deprecated('Use "solidFileZipper" instead.')
  static const IconData solidFileArchive = solidFileZipper;

  /// Regular File Zipper icon
  ///
  /// https://fontawesome.com/icons/file-zipper?style=regular
  /// .zip, bundle, compress, compression, download, zip
  static const IconData fileZipper = IconDataRegular(0xf1c6);

  /// Alias file-archive for icon [fileZipper]
  @Deprecated('Use "fileZipper" instead.')
  static const IconData fileArchive = fileZipper;

  /// Solid Fill icon
  ///
  /// https://fontawesome.com/icons/fill?style=solid
  /// bucket, color, paint, paint bucket
  static const IconData fill = IconDataSolid(0xf575);

  /// Solid Fill Drip icon
  ///
  /// https://fontawesome.com/icons/fill-drip?style=solid
  /// bucket, color, drop, paint, paint bucket, spill
  static const IconData fillDrip = IconDataSolid(0xf576);

  /// Solid Film icon
  ///
  /// https://fontawesome.com/icons/film?style=solid
  /// cinema, film, film frames, frames, movie, strip, video
  static const IconData film = IconDataSolid(0xf008);

  /// Solid Filter icon
  ///
  /// https://fontawesome.com/icons/filter?style=solid
  /// funnel, options, separate, sort
  static const IconData filter = IconDataSolid(0xf0b0);

  /// Solid Filter Circle Dollar icon
  ///
  /// https://fontawesome.com/icons/filter-circle-dollar?style=solid
  /// filter, money, options, separate, sort
  static const IconData filterCircleDollar = IconDataSolid(0xf662);

  /// Alias funnel-dollar for icon [filterCircleDollar]
  @Deprecated('Use "filterCircleDollar" instead.')
  static const IconData funnelDollar = filterCircleDollar;

  /// Solid Filter Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/filter-circle-xmark?style=solid
  /// cancel, funnel, options, remove, separate, sort
  static const IconData filterCircleXmark = IconDataSolid(0xe17b);

  /// Solid Fingerprint icon
  ///
  /// https://fontawesome.com/icons/fingerprint?style=solid
  /// human, id, identification, lock, smudge, touch, unique, unlock
  static const IconData fingerprint = IconDataSolid(0xf577);

  /// Solid Fire icon
  ///
  /// https://fontawesome.com/icons/fire?style=solid
  /// burn, caliente, fire, flame, heat, hot, popular, tool
  static const IconData fire = IconDataSolid(0xf06d);

  /// Solid Fire Burner icon
  ///
  /// https://fontawesome.com/icons/fire-burner?style=solid
  /// cook, fire, flame, kitchen, stove
  static const IconData fireBurner = IconDataSolid(0xe4f1);

  /// Solid Fire Extinguisher icon
  ///
  /// https://fontawesome.com/icons/fire-extinguisher?style=solid
  /// burn, caliente, extinguish, fire, fire extinguisher, fire fighter, flame, heat, hot, quench, rescue
  static const IconData fireExtinguisher = IconDataSolid(0xf134);

  /// Solid Fire Flame Curved icon
  ///
  /// https://fontawesome.com/icons/fire-flame-curved?style=solid
  /// burn, caliente, flame, heat, hot, popular
  static const IconData fireFlameCurved = IconDataSolid(0xf7e4);

  /// Alias fire-alt for icon [fireFlameCurved]
  @Deprecated('Use "fireFlameCurved" instead.')
  static const IconData fireAlt = fireFlameCurved;

  /// Solid Fire Flame Simple icon
  ///
  /// https://fontawesome.com/icons/fire-flame-simple?style=solid
  /// caliente, energy, fire, flame, gas, heat, hot
  static const IconData fireFlameSimple = IconDataSolid(0xf46a);

  /// Alias burn for icon [fireFlameSimple]
  @Deprecated('Use "fireFlameSimple" instead.')
  static const IconData burn = fireFlameSimple;

  /// Brands Firefox icon
  ///
  /// https://fontawesome.com/icons/firefox?style=brands
  /// browser
  static const IconData firefox = IconDataBrands(0xf269);

  /// Brands Firefox Browser icon
  ///
  /// https://fontawesome.com/icons/firefox-browser?style=brands
  /// browser
  static const IconData firefoxBrowser = IconDataBrands(0xe007);

  /// Brands First Order icon
  ///
  /// https://fontawesome.com/icons/first-order?style=brands
  static const IconData firstOrder = IconDataBrands(0xf2b0);

  /// Brands Alternate First Order icon
  ///
  /// https://fontawesome.com/icons/first-order-alt?style=brands
  static const IconData firstOrderAlt = IconDataBrands(0xf50a);

  /// Brands firstdraft icon
  ///
  /// https://fontawesome.com/icons/firstdraft?style=brands
  static const IconData firstdraft = IconDataBrands(0xf3a1);

  /// Solid Fish icon
  ///
  /// https://fontawesome.com/icons/fish?style=solid
  /// Pisces, fauna, fish, gold, seafood, swimming, zodiac
  static const IconData fish = IconDataSolid(0xf578);

  /// Solid Fish Fins icon
  ///
  /// https://fontawesome.com/icons/fish-fins?style=solid
  /// fish, fishery, pisces, seafood
  static const IconData fishFins = IconDataSolid(0xe4f2);

  /// Solid Flag icon
  ///
  /// https://fontawesome.com/icons/flag?style=solid
  /// black flag, country, notice, notification, notify, pole, report, symbol, waving
  static const IconData solidFlag = IconDataSolid(0xf024);

  /// Regular Flag icon
  ///
  /// https://fontawesome.com/icons/flag?style=regular
  /// black flag, country, notice, notification, notify, pole, report, symbol, waving
  static const IconData flag = IconDataRegular(0xf024);

  /// Solid Flag Checkered icon
  ///
  /// https://fontawesome.com/icons/flag-checkered?style=solid
  /// checkered, chequered, chequered flag, finish, notice, notification, notify, pole, racing, report, start, symbol, win
  static const IconData flagCheckered = IconDataSolid(0xf11e);

  /// Solid Flag Usa icon
  ///
  /// https://fontawesome.com/icons/flag-usa?style=solid
  /// betsy ross, country, fla, flag: United States, old glory, stars, stripes, symbol
  static const IconData flagUsa = IconDataSolid(0xf74d);

  /// Solid Flask icon
  ///
  /// https://fontawesome.com/icons/flask?style=solid
  /// beaker, chemicals, experiment, experimental, labs, liquid, potion, science, vial
  static const IconData flask = IconDataSolid(0xf0c3);

  /// Solid Flask Vial icon
  ///
  /// https://fontawesome.com/icons/flask-vial?style=solid
  ///  beaker,  chemicals,  experiment,  experimental,  labs,  liquid,  science,  vial, ampule, chemistry, lab, laboratory, potion, test, test tube
  static const IconData flaskVial = IconDataSolid(0xe4f3);

  /// Brands Flickr icon
  ///
  /// https://fontawesome.com/icons/flickr?style=brands
  static const IconData flickr = IconDataBrands(0xf16e);

  /// Brands Flipboard icon
  ///
  /// https://fontawesome.com/icons/flipboard?style=brands
  static const IconData flipboard = IconDataBrands(0xf44d);

  /// Solid Floppy Disk icon
  ///
  /// https://fontawesome.com/icons/floppy-disk?style=solid
  /// Black Hard Shell Floppy Disk, computer, disk, download, floppy, floppy disk, floppy-o
  static const IconData solidFloppyDisk = IconDataSolid(0xf0c7);

  /// Alias save for icon [solidFloppyDisk]
  @Deprecated('Use "solidFloppyDisk" instead.')
  static const IconData solidSave = solidFloppyDisk;

  /// Regular Floppy Disk icon
  ///
  /// https://fontawesome.com/icons/floppy-disk?style=regular
  /// Black Hard Shell Floppy Disk, computer, disk, download, floppy, floppy disk, floppy-o
  static const IconData floppyDisk = IconDataRegular(0xf0c7);

  /// Alias save for icon [floppyDisk]
  @Deprecated('Use "floppyDisk" instead.')
  static const IconData save = floppyDisk;

  /// Solid Florin Sign icon
  ///
  /// https://fontawesome.com/icons/florin-sign?style=solid
  /// currency
  static const IconData florinSign = IconDataSolid(0xe184);

  /// Brands Fly icon
  ///
  /// https://fontawesome.com/icons/fly?style=brands
  static const IconData fly = IconDataBrands(0xf417);

  /// Solid Folder icon
  ///
  /// https://fontawesome.com/icons/folder?style=solid
  /// Black Folder, archive, directory, document, file, file folder, folder
  static const IconData solidFolder = IconDataSolid(0xf07b);

  /// Alias folder-blank for icon [solidFolder]
  @Deprecated('Use "solidFolder" instead.')
  static const IconData solidFolderBlank = solidFolder;

  /// Regular Folder icon
  ///
  /// https://fontawesome.com/icons/folder?style=regular
  /// Black Folder, archive, directory, document, file, file folder, folder
  static const IconData folder = IconDataRegular(0xf07b);

  /// Alias folder-blank for icon [folder]
  @Deprecated('Use "folder" instead.')
  static const IconData folderBlank = folder;

  /// Solid Folder Closed icon
  ///
  /// https://fontawesome.com/icons/folder-closed?style=solid
  /// file
  static const IconData solidFolderClosed = IconDataSolid(0xe185);

  /// Regular Folder Closed icon
  ///
  /// https://fontawesome.com/icons/folder-closed?style=regular
  /// file
  static const IconData folderClosed = IconDataRegular(0xe185);

  /// Solid Folder Minus icon
  ///
  /// https://fontawesome.com/icons/folder-minus?style=solid
  /// archive, delete, directory, document, file, negative, remove
  static const IconData folderMinus = IconDataSolid(0xf65d);

  /// Solid Folder Open icon
  ///
  /// https://fontawesome.com/icons/folder-open?style=solid
  /// Open Folder, archive, directory, document, empty, file, folder, new, open, open file folder
  static const IconData solidFolderOpen = IconDataSolid(0xf07c);

  /// Regular Folder Open icon
  ///
  /// https://fontawesome.com/icons/folder-open?style=regular
  /// Open Folder, archive, directory, document, empty, file, folder, new, open, open file folder
  static const IconData folderOpen = IconDataRegular(0xf07c);

  /// Solid Folder Plus icon
  ///
  /// https://fontawesome.com/icons/folder-plus?style=solid
  /// add, archive, create, directory, document, file, new, positive
  static const IconData folderPlus = IconDataSolid(0xf65e);

  /// Solid Folder Tree icon
  ///
  /// https://fontawesome.com/icons/folder-tree?style=solid
  /// archive, directory, document, file, search, structure
  static const IconData folderTree = IconDataSolid(0xf802);

  /// Solid Font icon
  ///
  /// https://fontawesome.com/icons/font?style=solid
  /// alphabet, glyph, text, type, typeface
  static const IconData font = IconDataSolid(0xf031);

  /// Solid Font Awesome icon
  ///
  /// https://fontawesome.com/icons/font-awesome?style=solid
  /// awesome, flag, font, icons, typeface
  static const IconData solidFontAwesome = IconDataSolid(0xf2b4);

  /// Alias font-awesome-flag for icon [solidFontAwesome]
  @Deprecated('Use "solidFontAwesome" instead.')
  static const IconData solidFontAwesomeFlag = solidFontAwesome;

  /// Alias font-awesome-logo-full for icon [solidFontAwesome]
  @Deprecated('Use "solidFontAwesome" instead.')
  static const IconData solidFontAwesomeLogoFull = solidFontAwesome;

  /// Regular Font Awesome icon
  ///
  /// https://fontawesome.com/icons/font-awesome?style=regular
  /// awesome, flag, font, icons, typeface
  static const IconData fontAwesome = IconDataRegular(0xf2b4);

  /// Alias font-awesome-flag for icon [fontAwesome]
  @Deprecated('Use "fontAwesome" instead.')
  static const IconData fontAwesomeFlag = fontAwesome;

  /// Alias font-awesome-logo-full for icon [fontAwesome]
  @Deprecated('Use "fontAwesome" instead.')
  static const IconData fontAwesomeLogoFull = fontAwesome;

  /// Brands Font Awesome icon
  ///
  /// https://fontawesome.com/icons/font-awesome?style=brands
  /// awesome, flag, font, icons, typeface
  static const IconData brandsFontAwesome = IconDataBrands(0xf2b4);

  /// Alias font-awesome-flag for icon [brandsFontAwesome]
  @Deprecated('Use "brandsFontAwesome" instead.')
  static const IconData brandsFontAwesomeFlag = brandsFontAwesome;

  /// Alias font-awesome-logo-full for icon [brandsFontAwesome]
  @Deprecated('Use "brandsFontAwesome" instead.')
  static const IconData brandsFontAwesomeLogoFull = brandsFontAwesome;

  /// Brands Fonticons icon
  ///
  /// https://fontawesome.com/icons/fonticons?style=brands
  static const IconData fonticons = IconDataBrands(0xf280);

  /// Brands Fonticons Fi icon
  ///
  /// https://fontawesome.com/icons/fonticons-fi?style=brands
  static const IconData fonticonsFi = IconDataBrands(0xf3a2);

  /// Solid Football icon
  ///
  /// https://fontawesome.com/icons/football?style=solid
  /// american, american football, ball, fall, football, nfl, pigskin, seasonal
  static const IconData football = IconDataSolid(0xf44e);

  /// Alias football-ball for icon [football]
  @Deprecated('Use "football" instead.')
  static const IconData footballBall = football;

  /// Brands Fort Awesome icon
  ///
  /// https://fontawesome.com/icons/fort-awesome?style=brands
  /// castle
  static const IconData fortAwesome = IconDataBrands(0xf286);

  /// Brands Alternate Fort Awesome icon
  ///
  /// https://fontawesome.com/icons/fort-awesome-alt?style=brands
  /// castle
  static const IconData fortAwesomeAlt = IconDataBrands(0xf3a3);

  /// Brands Forumbee icon
  ///
  /// https://fontawesome.com/icons/forumbee?style=brands
  static const IconData forumbee = IconDataBrands(0xf211);

  /// Solid Forward icon
  ///
  /// https://fontawesome.com/icons/forward?style=solid
  /// arrow, double, fast, fast-forward button, forward, next, skip
  static const IconData forward = IconDataSolid(0xf04e);

  /// Solid Forward Fast icon
  ///
  /// https://fontawesome.com/icons/forward-fast?style=solid
  /// arrow, end, last, next, next scene, next track, next track button, triangle
  static const IconData forwardFast = IconDataSolid(0xf050);

  /// Alias fast-forward for icon [forwardFast]
  @Deprecated('Use "forwardFast" instead.')
  static const IconData fastForward = forwardFast;

  /// Solid Forward Step icon
  ///
  /// https://fontawesome.com/icons/forward-step?style=solid
  /// end, last, next
  static const IconData forwardStep = IconDataSolid(0xf051);

  /// Alias step-forward for icon [forwardStep]
  @Deprecated('Use "forwardStep" instead.')
  static const IconData stepForward = forwardStep;

  /// Brands Foursquare icon
  ///
  /// https://fontawesome.com/icons/foursquare?style=brands
  static const IconData foursquare = IconDataBrands(0xf180);

  /// Solid Franc Sign icon
  ///
  /// https://fontawesome.com/icons/franc-sign?style=solid
  /// French Franc Sign, currency
  static const IconData francSign = IconDataSolid(0xe18f);

  /// Brands freeCodeCamp icon
  ///
  /// https://fontawesome.com/icons/free-code-camp?style=brands
  static const IconData freeCodeCamp = IconDataBrands(0xf2c5);

  /// Brands FreeBSD icon
  ///
  /// https://fontawesome.com/icons/freebsd?style=brands
  static const IconData freebsd = IconDataBrands(0xf3a4);

  /// Solid Frog icon
  ///
  /// https://fontawesome.com/icons/frog?style=solid
  /// amphibian, bullfrog, fauna, hop, kermit, kiss, prince, ribbit, toad, wart
  static const IconData frog = IconDataSolid(0xf52e);

  /// Brands Fulcrum icon
  ///
  /// https://fontawesome.com/icons/fulcrum?style=brands
  static const IconData fulcrum = IconDataBrands(0xf50b);

  /// Solid Futbol icon
  ///
  /// https://fontawesome.com/icons/futbol?style=solid
  /// ball, football, mls, soccer, soccer ball
  static const IconData solidFutbol = IconDataSolid(0xf1e3);

  /// Alias futbol-ball for icon [solidFutbol]
  @Deprecated('Use "solidFutbol" instead.')
  static const IconData solidFutbolBall = solidFutbol;

  /// Alias soccer-ball for icon [solidFutbol]
  @Deprecated('Use "solidFutbol" instead.')
  static const IconData solidSoccerBall = solidFutbol;

  /// Regular Futbol icon
  ///
  /// https://fontawesome.com/icons/futbol?style=regular
  /// ball, football, mls, soccer, soccer ball
  static const IconData futbol = IconDataRegular(0xf1e3);

  /// Alias futbol-ball for icon [futbol]
  @Deprecated('Use "futbol" instead.')
  static const IconData futbolBall = futbol;

  /// Alias soccer-ball for icon [futbol]
  @Deprecated('Use "futbol" instead.')
  static const IconData soccerBall = futbol;

  /// Solid G icon
  ///
  /// https://fontawesome.com/icons/g?style=solid
  /// Latin Capital Letter G, Latin Small Letter G, letter
  static const IconData g = IconDataSolid(0x47);

  /// Brands Galactic Republic icon
  ///
  /// https://fontawesome.com/icons/galactic-republic?style=brands
  /// politics, star wars
  static const IconData galacticRepublic = IconDataBrands(0xf50c);

  /// Brands Galactic Senate icon
  ///
  /// https://fontawesome.com/icons/galactic-senate?style=brands
  /// star wars
  static const IconData galacticSenate = IconDataBrands(0xf50d);

  /// Solid Gamepad icon
  ///
  /// https://fontawesome.com/icons/gamepad?style=solid
  /// arcade, controller, d-pad, joystick, video, video game
  static const IconData gamepad = IconDataSolid(0xf11b);

  /// Solid Gas Pump icon
  ///
  /// https://fontawesome.com/icons/gas-pump?style=solid
  /// car, diesel, fuel, fuel pump, fuelpump, gas, gasoline, petrol, pump, station
  static const IconData gasPump = IconDataSolid(0xf52f);

  /// Solid Gauge icon
  ///
  /// https://fontawesome.com/icons/gauge?style=solid
  /// dashboard, fast, odometer, speed, speedometer
  static const IconData gauge = IconDataSolid(0xf624);

  /// Alias dashboard for icon [gauge]
  @Deprecated('Use "gauge" instead.')
  static const IconData dashboard = gauge;

  /// Alias gauge-med for icon [gauge]
  @Deprecated('Use "gauge" instead.')
  static const IconData gaugeMed = gauge;

  /// Alias tachometer-alt-average for icon [gauge]
  @Deprecated('Use "gauge" instead.')
  static const IconData tachometerAltAverage = gauge;

  /// Solid Gauge High icon
  ///
  /// https://fontawesome.com/icons/gauge-high?style=solid
  /// dashboard, fast, odometer, speed, speedometer
  static const IconData gaugeHigh = IconDataSolid(0xf625);

  /// Alias tachometer-alt for icon [gaugeHigh]
  @Deprecated('Use "gaugeHigh" instead.')
  static const IconData tachometerAlt = gaugeHigh;

  /// Alias tachometer-alt-fast for icon [gaugeHigh]
  @Deprecated('Use "gaugeHigh" instead.')
  static const IconData tachometerAltFast = gaugeHigh;

  /// Solid Gauge Simple icon
  ///
  /// https://fontawesome.com/icons/gauge-simple?style=solid
  /// dashboard, fast, odometer, speed, speedometer
  static const IconData gaugeSimple = IconDataSolid(0xf629);

  /// Alias gauge-simple-med for icon [gaugeSimple]
  @Deprecated('Use "gaugeSimple" instead.')
  static const IconData gaugeSimpleMed = gaugeSimple;

  /// Alias tachometer-average for icon [gaugeSimple]
  @Deprecated('Use "gaugeSimple" instead.')
  static const IconData tachometerAverage = gaugeSimple;

  /// Solid Gauge Simple High icon
  ///
  /// https://fontawesome.com/icons/gauge-simple-high?style=solid
  /// dashboard, fast, odometer, speed, speedometer
  static const IconData gaugeSimpleHigh = IconDataSolid(0xf62a);

  /// Alias tachometer for icon [gaugeSimpleHigh]
  @Deprecated('Use "gaugeSimpleHigh" instead.')
  static const IconData tachometer = gaugeSimpleHigh;

  /// Alias tachometer-fast for icon [gaugeSimpleHigh]
  @Deprecated('Use "gaugeSimpleHigh" instead.')
  static const IconData tachometerFast = gaugeSimpleHigh;

  /// Solid Gavel icon
  ///
  /// https://fontawesome.com/icons/gavel?style=solid
  /// hammer, judge, law, lawyer, opinion
  static const IconData gavel = IconDataSolid(0xf0e3);

  /// Alias legal for icon [gavel]
  @Deprecated('Use "gavel" instead.')
  static const IconData legal = gavel;

  /// Solid Gear icon
  ///
  /// https://fontawesome.com/icons/gear?style=solid
  /// cog, cogwheel, gear, mechanical, settings, sprocket, tool, wheel
  static const IconData gear = IconDataSolid(0xf013);

  /// Alias cog for icon [gear]
  @Deprecated('Use "gear" instead.')
  static const IconData cog = gear;

  /// Solid Gears icon
  ///
  /// https://fontawesome.com/icons/gears?style=solid
  /// gears, mechanical, settings, sprocket, wheel
  static const IconData gears = IconDataSolid(0xf085);

  /// Alias cogs for icon [gears]
  @Deprecated('Use "gears" instead.')
  static const IconData cogs = gears;

  /// Solid Gem icon
  ///
  /// https://fontawesome.com/icons/gem?style=solid
  /// diamond, gem, gem stone, jewel, jewelry, sapphire, stone, treasure
  static const IconData solidGem = IconDataSolid(0xf3a5);

  /// Regular Gem icon
  ///
  /// https://fontawesome.com/icons/gem?style=regular
  /// diamond, gem, gem stone, jewel, jewelry, sapphire, stone, treasure
  static const IconData gem = IconDataRegular(0xf3a5);

  /// Solid Genderless icon
  ///
  /// https://fontawesome.com/icons/genderless?style=solid
  /// androgynous, asexual, gender, sexless
  static const IconData genderless = IconDataSolid(0xf22d);

  /// Brands Get Pocket icon
  ///
  /// https://fontawesome.com/icons/get-pocket?style=brands
  static const IconData getPocket = IconDataBrands(0xf265);

  /// Brands GG Currency icon
  ///
  /// https://fontawesome.com/icons/gg?style=brands
  static const IconData gg = IconDataBrands(0xf260);

  /// Brands GG Currency Circle icon
  ///
  /// https://fontawesome.com/icons/gg-circle?style=brands
  static const IconData ggCircle = IconDataBrands(0xf261);

  /// Solid Ghost icon
  ///
  /// https://fontawesome.com/icons/ghost?style=solid
  /// apparition, blinky, clyde, creature, face, fairy tale, fantasy, floating, ghost, halloween, holiday, inky, monster, pacman, pinky, spirit
  static const IconData ghost = IconDataSolid(0xf6e2);

  /// Solid Gift icon
  ///
  /// https://fontawesome.com/icons/gift?style=solid
  /// box, celebration, christmas, generosity, gift, giving, holiday, party, present, wrapped, wrapped gift, xmas
  static const IconData gift = IconDataSolid(0xf06b);

  /// Solid Gifts icon
  ///
  /// https://fontawesome.com/icons/gifts?style=solid
  /// christmas, generosity, giving, holiday, party, present, wrapped, xmas
  static const IconData gifts = IconDataSolid(0xf79c);

  /// Brands Git icon
  ///
  /// https://fontawesome.com/icons/git?style=brands
  static const IconData git = IconDataBrands(0xf1d3);

  /// Brands Git Alt icon
  ///
  /// https://fontawesome.com/icons/git-alt?style=brands
  static const IconData gitAlt = IconDataBrands(0xf841);

  /// Brands GitHub icon
  ///
  /// https://fontawesome.com/icons/github?style=brands
  /// octocat
  static const IconData github = IconDataBrands(0xf09b);

  /// Brands Alternate GitHub icon
  ///
  /// https://fontawesome.com/icons/github-alt?style=brands
  /// octocat
  static const IconData githubAlt = IconDataBrands(0xf113);

  /// Brands GitKraken icon
  ///
  /// https://fontawesome.com/icons/gitkraken?style=brands
  static const IconData gitkraken = IconDataBrands(0xf3a6);

  /// Brands GitLab icon
  ///
  /// https://fontawesome.com/icons/gitlab?style=brands
  /// Axosoft
  static const IconData gitlab = IconDataBrands(0xf296);

  /// Brands Gitter icon
  ///
  /// https://fontawesome.com/icons/gitter?style=brands
  static const IconData gitter = IconDataBrands(0xf426);

  /// Solid Glass Water icon
  ///
  /// https://fontawesome.com/icons/glass-water?style=solid
  /// potable, water
  static const IconData glassWater = IconDataSolid(0xe4f4);

  /// Solid Glass Water Droplet icon
  ///
  /// https://fontawesome.com/icons/glass-water-droplet?style=solid
  /// potable, water
  static const IconData glassWaterDroplet = IconDataSolid(0xe4f5);

  /// Solid Glasses icon
  ///
  /// https://fontawesome.com/icons/glasses?style=solid
  /// hipster, nerd, reading, sight, spectacles, vision
  static const IconData glasses = IconDataSolid(0xf530);

  /// Brands Glide icon
  ///
  /// https://fontawesome.com/icons/glide?style=brands
  static const IconData glide = IconDataBrands(0xf2a5);

  /// Brands Glide G icon
  ///
  /// https://fontawesome.com/icons/glide-g?style=brands
  static const IconData glideG = IconDataBrands(0xf2a6);

  /// Solid Globe icon
  ///
  /// https://fontawesome.com/icons/globe?style=solid
  /// all, coordinates, country, earth, global, globe, globe with meridians, gps, internet, language, localize, location, map, meridians, network, online, place, planet, translate, travel, world
  static const IconData globe = IconDataSolid(0xf0ac);

  /// Brands Gofore icon
  ///
  /// https://fontawesome.com/icons/gofore?style=brands
  static const IconData gofore = IconDataBrands(0xf3a7);

  /// Brands Go icon
  ///
  /// https://fontawesome.com/icons/golang?style=brands
  static const IconData golang = IconDataBrands(0xe40f);

  /// Solid Golf Ball Tee icon
  ///
  /// https://fontawesome.com/icons/golf-ball-tee?style=solid
  /// caddy, eagle, putt, tee
  static const IconData golfBallTee = IconDataSolid(0xf450);

  /// Alias golf-ball for icon [golfBallTee]
  @Deprecated('Use "golfBallTee" instead.')
  static const IconData golfBall = golfBallTee;

  /// Brands Goodreads icon
  ///
  /// https://fontawesome.com/icons/goodreads?style=brands
  static const IconData goodreads = IconDataBrands(0xf3a8);

  /// Brands Goodreads G icon
  ///
  /// https://fontawesome.com/icons/goodreads-g?style=brands
  static const IconData goodreadsG = IconDataBrands(0xf3a9);

  /// Brands Google Logo icon
  ///
  /// https://fontawesome.com/icons/google?style=brands
  static const IconData google = IconDataBrands(0xf1a0);

  /// Brands Google Drive icon
  ///
  /// https://fontawesome.com/icons/google-drive?style=brands
  static const IconData googleDrive = IconDataBrands(0xf3aa);

  /// Brands Google Pay icon
  ///
  /// https://fontawesome.com/icons/google-pay?style=brands
  static const IconData googlePay = IconDataBrands(0xe079);

  /// Brands Google Play icon
  ///
  /// https://fontawesome.com/icons/google-play?style=brands
  static const IconData googlePlay = IconDataBrands(0xf3ab);

  /// Brands Google Plus icon
  ///
  /// https://fontawesome.com/icons/google-plus?style=brands
  /// google-plus-circle, google-plus-official
  static const IconData googlePlus = IconDataBrands(0xf2b3);

  /// Brands Google Plus G icon
  ///
  /// https://fontawesome.com/icons/google-plus-g?style=brands
  /// google-plus, social network
  static const IconData googlePlusG = IconDataBrands(0xf0d5);

  /// Brands Google Wallet icon
  ///
  /// https://fontawesome.com/icons/google-wallet?style=brands
  static const IconData googleWallet = IconDataBrands(0xf1ee);

  /// Solid Gopuram icon
  ///
  /// https://fontawesome.com/icons/gopuram?style=solid
  /// building, entrance, hinduism, temple, tower
  static const IconData gopuram = IconDataSolid(0xf664);

  /// Solid Graduation Cap icon
  ///
  /// https://fontawesome.com/icons/graduation-cap?style=solid
  /// cap, celebration, ceremony, clothing, college, graduate, graduation, graduation cap, hat, learning, school, student
  static const IconData graduationCap = IconDataSolid(0xf19d);

  /// Alias mortar-board for icon [graduationCap]
  @Deprecated('Use "graduationCap" instead.')
  static const IconData mortarBoard = graduationCap;

  /// Brands Gratipay (Gittip) icon
  ///
  /// https://fontawesome.com/icons/gratipay?style=brands
  /// favorite, heart, like, love
  static const IconData gratipay = IconDataBrands(0xf184);

  /// Brands Grav icon
  ///
  /// https://fontawesome.com/icons/grav?style=brands
  static const IconData grav = IconDataBrands(0xf2d6);

  /// Solid Greater Than icon
  ///
  /// https://fontawesome.com/icons/greater-than?style=solid
  /// Greater-Than Sign, arithmetic, compare, math
  static const IconData greaterThan = IconDataSolid(0x3e);

  /// Solid Greater Than Equal icon
  ///
  /// https://fontawesome.com/icons/greater-than-equal?style=solid
  /// arithmetic, compare, math
  static const IconData greaterThanEqual = IconDataSolid(0xf532);

  /// Solid Grip icon
  ///
  /// https://fontawesome.com/icons/grip?style=solid
  /// affordance, drag, drop, grab, handle
  static const IconData grip = IconDataSolid(0xf58d);

  /// Alias grip-horizontal for icon [grip]
  @Deprecated('Use "grip" instead.')
  static const IconData gripHorizontal = grip;

  /// Solid Grip Lines icon
  ///
  /// https://fontawesome.com/icons/grip-lines?style=solid
  /// affordance, drag, drop, grab, handle
  static const IconData gripLines = IconDataSolid(0xf7a4);

  /// Solid Grip Lines Vertical icon
  ///
  /// https://fontawesome.com/icons/grip-lines-vertical?style=solid
  /// affordance, drag, drop, grab, handle
  static const IconData gripLinesVertical = IconDataSolid(0xf7a5);

  /// Solid Grip Vertical icon
  ///
  /// https://fontawesome.com/icons/grip-vertical?style=solid
  /// affordance, drag, drop, grab, handle
  static const IconData gripVertical = IconDataSolid(0xf58e);

  /// Brands Gripfire, Inc. icon
  ///
  /// https://fontawesome.com/icons/gripfire?style=brands
  static const IconData gripfire = IconDataBrands(0xf3ac);

  /// Solid Group Arrows Rotate icon
  ///
  /// https://fontawesome.com/icons/group-arrows-rotate?style=solid
  /// community, engagement, spin, sync
  static const IconData groupArrowsRotate = IconDataSolid(0xe4f6);

  /// Brands Grunt icon
  ///
  /// https://fontawesome.com/icons/grunt?style=brands
  static const IconData grunt = IconDataBrands(0xf3ad);

  /// Solid Guarani Sign icon
  ///
  /// https://fontawesome.com/icons/guarani-sign?style=solid
  /// Guarani Sign, currency
  static const IconData guaraniSign = IconDataSolid(0xe19a);

  /// Brands Guilded icon
  ///
  /// https://fontawesome.com/icons/guilded?style=brands
  static const IconData guilded = IconDataBrands(0xe07e);

  /// Solid Guitar icon
  ///
  /// https://fontawesome.com/icons/guitar?style=solid
  /// acoustic, instrument, music, rock, rock and roll, song, strings
  static const IconData guitar = IconDataSolid(0xf7a6);

  /// Brands Gulp icon
  ///
  /// https://fontawesome.com/icons/gulp?style=brands
  static const IconData gulp = IconDataBrands(0xf3ae);

  /// Solid Gun icon
  ///
  /// https://fontawesome.com/icons/gun?style=solid
  /// firearm, pistol, weapon
  static const IconData gun = IconDataSolid(0xe19b);

  /// Solid H icon
  ///
  /// https://fontawesome.com/icons/h?style=solid
  /// Latin Capital Letter H, Latin Small Letter H, letter
  static const IconData h = IconDataSolid(0x48);

  /// Brands Hacker News icon
  ///
  /// https://fontawesome.com/icons/hacker-news?style=brands
  static const IconData hackerNews = IconDataBrands(0xf1d4);

  /// Brands Hackerrank icon
  ///
  /// https://fontawesome.com/icons/hackerrank?style=brands
  static const IconData hackerrank = IconDataBrands(0xf5f7);

  /// Solid Hammer icon
  ///
  /// https://fontawesome.com/icons/hammer?style=solid
  /// admin, fix, hammer, recovery, repair, settings, tool
  static const IconData hammer = IconDataSolid(0xf6e3);

  /// Solid Hamsa icon
  ///
  /// https://fontawesome.com/icons/hamsa?style=solid
  /// amulet, christianity, islam, jewish, judaism, muslim, protection
  static const IconData hamsa = IconDataSolid(0xf665);

  /// Solid Hand icon
  ///
  /// https://fontawesome.com/icons/hand?style=solid
  /// Raised Hand, backhand, game, halt, palm, raised, raised back of hand, roshambo, stop
  static const IconData solidHand = IconDataSolid(0xf256);

  /// Alias hand-paper for icon [solidHand]
  @Deprecated('Use "solidHand" instead.')
  static const IconData solidHandPaper = solidHand;

  /// Regular Hand icon
  ///
  /// https://fontawesome.com/icons/hand?style=regular
  /// Raised Hand, backhand, game, halt, palm, raised, raised back of hand, roshambo, stop
  static const IconData hand = IconDataRegular(0xf256);

  /// Alias hand-paper for icon [hand]
  @Deprecated('Use "hand" instead.')
  static const IconData handPaper = hand;

  /// Solid Hand Back Fist icon
  ///
  /// https://fontawesome.com/icons/hand-back-fist?style=solid
  /// fist, game, roshambo
  static const IconData solidHandBackFist = IconDataSolid(0xf255);

  /// Alias hand-rock for icon [solidHandBackFist]
  @Deprecated('Use "solidHandBackFist" instead.')
  static const IconData solidHandRock = solidHandBackFist;

  /// Regular Hand Back Fist icon
  ///
  /// https://fontawesome.com/icons/hand-back-fist?style=regular
  /// fist, game, roshambo
  static const IconData handBackFist = IconDataRegular(0xf255);

  /// Alias hand-rock for icon [handBackFist]
  @Deprecated('Use "handBackFist" instead.')
  static const IconData handRock = handBackFist;

  /// Solid Hand Dots icon
  ///
  /// https://fontawesome.com/icons/hand-dots?style=solid
  /// allergy, freckles, hand, hives, palm, pox, skin, spots
  static const IconData handDots = IconDataSolid(0xf461);

  /// Alias allergies for icon [handDots]
  @Deprecated('Use "handDots" instead.')
  static const IconData allergies = handDots;

  /// Solid Hand Fist icon
  ///
  /// https://fontawesome.com/icons/hand-fist?style=solid
  /// Dungeons & Dragons, clenched, d&d, dnd, fantasy, fist, hand, ki, monk, punch, raised fist, resist, strength, unarmed combat
  static const IconData handFist = IconDataSolid(0xf6de);

  /// Alias fist-raised for icon [handFist]
  @Deprecated('Use "handFist" instead.')
  static const IconData fistRaised = handFist;

  /// Solid Hand Holding icon
  ///
  /// https://fontawesome.com/icons/hand-holding?style=solid
  /// carry, lift
  static const IconData handHolding = IconDataSolid(0xf4bd);

  /// Solid Hand Holding Dollar icon
  ///
  /// https://fontawesome.com/icons/hand-holding-dollar?style=solid
  /// $, carry, dollar sign, donation, giving, lift, money, price
  static const IconData handHoldingDollar = IconDataSolid(0xf4c0);

  /// Alias hand-holding-usd for icon [handHoldingDollar]
  @Deprecated('Use "handHoldingDollar" instead.')
  static const IconData handHoldingUsd = handHoldingDollar;

  /// Solid Hand Holding Droplet icon
  ///
  /// https://fontawesome.com/icons/hand-holding-droplet?style=solid
  /// carry, covid-19, drought, grow, lift, sanitation
  static const IconData handHoldingDroplet = IconDataSolid(0xf4c1);

  /// Alias hand-holding-water for icon [handHoldingDroplet]
  @Deprecated('Use "handHoldingDroplet" instead.')
  static const IconData handHoldingWater = handHoldingDroplet;

  /// Solid Hand Holding Hand icon
  ///
  /// https://fontawesome.com/icons/hand-holding-hand?style=solid
  /// care, give, help, hold, protect
  static const IconData handHoldingHand = IconDataSolid(0xe4f7);

  /// Solid Hand Holding Heart icon
  ///
  /// https://fontawesome.com/icons/hand-holding-heart?style=solid
  /// carry, charity, gift, lift, package
  static const IconData handHoldingHeart = IconDataSolid(0xf4be);

  /// Solid Hand Holding Medical icon
  ///
  /// https://fontawesome.com/icons/hand-holding-medical?style=solid
  /// care, covid-19, donate, help
  static const IconData handHoldingMedical = IconDataSolid(0xe05c);

  /// Solid Hand Lizard icon
  ///
  /// https://fontawesome.com/icons/hand-lizard?style=solid
  /// game, roshambo
  static const IconData solidHandLizard = IconDataSolid(0xf258);

  /// Regular Hand Lizard icon
  ///
  /// https://fontawesome.com/icons/hand-lizard?style=regular
  /// game, roshambo
  static const IconData handLizard = IconDataRegular(0xf258);

  /// Solid Hand Middle Finger icon
  ///
  /// https://fontawesome.com/icons/hand-middle-finger?style=solid
  /// finger, flip the bird, gesture, hand, hate, middle finger, rude
  static const IconData handMiddleFinger = IconDataSolid(0xf806);

  /// Solid Hand Peace icon
  ///
  /// https://fontawesome.com/icons/hand-peace?style=solid
  /// hand, rest, truce, v, victory, victory hand
  static const IconData solidHandPeace = IconDataSolid(0xf25b);

  /// Regular Hand Peace icon
  ///
  /// https://fontawesome.com/icons/hand-peace?style=regular
  /// hand, rest, truce, v, victory, victory hand
  static const IconData handPeace = IconDataRegular(0xf25b);

  /// Solid Hand Point Down icon
  ///
  /// https://fontawesome.com/icons/hand-point-down?style=solid
  /// finger, hand-o-down, point
  static const IconData solidHandPointDown = IconDataSolid(0xf0a7);

  /// Regular Hand Point Down icon
  ///
  /// https://fontawesome.com/icons/hand-point-down?style=regular
  /// finger, hand-o-down, point
  static const IconData handPointDown = IconDataRegular(0xf0a7);

  /// Solid Hand Point Left icon
  ///
  /// https://fontawesome.com/icons/hand-point-left?style=solid
  /// back, finger, hand-o-left, left, point, previous
  static const IconData solidHandPointLeft = IconDataSolid(0xf0a5);

  /// Regular Hand Point Left icon
  ///
  /// https://fontawesome.com/icons/hand-point-left?style=regular
  /// back, finger, hand-o-left, left, point, previous
  static const IconData handPointLeft = IconDataRegular(0xf0a5);

  /// Solid Hand Point Right icon
  ///
  /// https://fontawesome.com/icons/hand-point-right?style=solid
  /// finger, forward, hand-o-right, next, point, right
  static const IconData solidHandPointRight = IconDataSolid(0xf0a4);

  /// Regular Hand Point Right icon
  ///
  /// https://fontawesome.com/icons/hand-point-right?style=regular
  /// finger, forward, hand-o-right, next, point, right
  static const IconData handPointRight = IconDataRegular(0xf0a4);

  /// Solid Hand Point Up icon
  ///
  /// https://fontawesome.com/icons/hand-point-up?style=solid
  /// finger, hand, hand-o-up, index, index pointing up, point, up
  static const IconData solidHandPointUp = IconDataSolid(0xf0a6);

  /// Regular Hand Point Up icon
  ///
  /// https://fontawesome.com/icons/hand-point-up?style=regular
  /// finger, hand, hand-o-up, index, index pointing up, point, up
  static const IconData handPointUp = IconDataRegular(0xf0a6);

  /// Solid Hand Pointer icon
  ///
  /// https://fontawesome.com/icons/hand-pointer?style=solid
  /// arrow, cursor, select
  static const IconData solidHandPointer = IconDataSolid(0xf25a);

  /// Regular Hand Pointer icon
  ///
  /// https://fontawesome.com/icons/hand-pointer?style=regular
  /// arrow, cursor, select
  static const IconData handPointer = IconDataRegular(0xf25a);

  /// Solid Hand Scissors icon
  ///
  /// https://fontawesome.com/icons/hand-scissors?style=solid
  /// cut, game, roshambo
  static const IconData solidHandScissors = IconDataSolid(0xf257);

  /// Regular Hand Scissors icon
  ///
  /// https://fontawesome.com/icons/hand-scissors?style=regular
  /// cut, game, roshambo
  static const IconData handScissors = IconDataRegular(0xf257);

  /// Solid Hand Sparkles icon
  ///
  /// https://fontawesome.com/icons/hand-sparkles?style=solid
  /// clean, covid-19, hygiene, magic, palm, soap, wash
  static const IconData handSparkles = IconDataSolid(0xe05d);

  /// Solid Hand Spock icon
  ///
  /// https://fontawesome.com/icons/hand-spock?style=solid
  /// finger, hand, live long, palm, prosper, salute, spock, star trek, vulcan, vulcan salute
  static const IconData solidHandSpock = IconDataSolid(0xf259);

  /// Regular Hand Spock icon
  ///
  /// https://fontawesome.com/icons/hand-spock?style=regular
  /// finger, hand, live long, palm, prosper, salute, spock, star trek, vulcan, vulcan salute
  static const IconData handSpock = IconDataRegular(0xf259);

  /// Solid Handcuffs icon
  ///
  /// https://fontawesome.com/icons/handcuffs?style=solid
  /// arrest, criminal, handcuffs, jail, lock, police, wrist
  static const IconData handcuffs = IconDataSolid(0xe4f8);

  /// Solid Hands icon
  ///
  /// https://fontawesome.com/icons/hands?style=solid
  /// Translate, asl, deaf, hands
  static const IconData hands = IconDataSolid(0xf2a7);

  /// Alias sign-language for icon [hands]
  @Deprecated('Use "hands" instead.')
  static const IconData signLanguage = hands;

  /// Alias signing for icon [hands]
  @Deprecated('Use "hands" instead.')
  static const IconData signing = hands;

  /// Solid Hands Asl Interpreting icon
  ///
  /// https://fontawesome.com/icons/hands-asl-interpreting?style=solid
  /// asl, deaf, finger, hand, interpret, speak
  static const IconData handsAslInterpreting = IconDataSolid(0xf2a3);

  /// Alias american-sign-language-interpreting for icon [handsAslInterpreting]
  @Deprecated('Use "handsAslInterpreting" instead.')
  static const IconData americanSignLanguageInterpreting = handsAslInterpreting;

  /// Alias asl-interpreting for icon [handsAslInterpreting]
  @Deprecated('Use "handsAslInterpreting" instead.')
  static const IconData aslInterpreting = handsAslInterpreting;

  /// Alias hands-american-sign-language-interpreting for icon [handsAslInterpreting]
  @Deprecated('Use "handsAslInterpreting" instead.')
  static const IconData handsAmericanSignLanguageInterpreting = handsAslInterpreting;

  /// Solid Hands Bound icon
  ///
  /// https://fontawesome.com/icons/hands-bound?style=solid
  /// abduction, bound, handcuff, wrist
  static const IconData handsBound = IconDataSolid(0xe4f9);

  /// Solid Hands Bubbles icon
  ///
  /// https://fontawesome.com/icons/hands-bubbles?style=solid
  /// covid-19, hygiene, soap, wash
  static const IconData handsBubbles = IconDataSolid(0xe05e);

  /// Alias hands-wash for icon [handsBubbles]
  @Deprecated('Use "handsBubbles" instead.')
  static const IconData handsWash = handsBubbles;

  /// Solid Hands Clapping icon
  ///
  /// https://fontawesome.com/icons/hands-clapping?style=solid
  /// applause, clap, clapping hands, hand
  static const IconData handsClapping = IconDataSolid(0xe1a8);

  /// Solid Hands Holding icon
  ///
  /// https://fontawesome.com/icons/hands-holding?style=solid
  /// carry, hold, lift
  static const IconData handsHolding = IconDataSolid(0xf4c2);

  /// Solid Hands Holding Child icon
  ///
  /// https://fontawesome.com/icons/hands-holding-child?style=solid
  /// care, give, help, hold, protect
  static const IconData handsHoldingChild = IconDataSolid(0xe4fa);

  /// Solid Hands Holding Circle icon
  ///
  /// https://fontawesome.com/icons/hands-holding-circle?style=solid
  /// circle, gift, protection
  static const IconData handsHoldingCircle = IconDataSolid(0xe4fb);

  /// Solid Hands Praying icon
  ///
  /// https://fontawesome.com/icons/hands-praying?style=solid
  /// kneel, preach, religion, worship
  static const IconData handsPraying = IconDataSolid(0xf684);

  /// Alias praying-hands for icon [handsPraying]
  @Deprecated('Use "handsPraying" instead.')
  static const IconData prayingHands = handsPraying;

  /// Solid Handshake icon
  ///
  /// https://fontawesome.com/icons/handshake?style=solid
  /// agreement, greeting, meeting, partnership
  static const IconData solidHandshake = IconDataSolid(0xf2b5);

  /// Regular Handshake icon
  ///
  /// https://fontawesome.com/icons/handshake?style=regular
  /// agreement, greeting, meeting, partnership
  static const IconData handshake = IconDataRegular(0xf2b5);

  /// Solid Handshake Angle icon
  ///
  /// https://fontawesome.com/icons/handshake-angle?style=solid
  /// aid, assistance, handshake, partnership, volunteering
  static const IconData handshakeAngle = IconDataSolid(0xf4c4);

  /// Alias hands-helping for icon [handshakeAngle]
  @Deprecated('Use "handshakeAngle" instead.')
  static const IconData handsHelping = handshakeAngle;

  /// Solid Handshake Simple icon
  ///
  /// https://fontawesome.com/icons/handshake-simple?style=solid
  /// agreement, greeting, hand, handshake, meeting, partnership, shake
  static const IconData handshakeSimple = IconDataSolid(0xf4c6);

  /// Alias handshake-alt for icon [handshakeSimple]
  @Deprecated('Use "handshakeSimple" instead.')
  static const IconData handshakeAlt = handshakeSimple;

  /// Solid Handshake Simple Slash icon
  ///
  /// https://fontawesome.com/icons/handshake-simple-slash?style=solid
  /// broken, covid-19, social distance
  static const IconData handshakeSimpleSlash = IconDataSolid(0xe05f);

  /// Alias handshake-alt-slash for icon [handshakeSimpleSlash]
  @Deprecated('Use "handshakeSimpleSlash" instead.')
  static const IconData handshakeAltSlash = handshakeSimpleSlash;

  /// Solid Handshake Slash icon
  ///
  /// https://fontawesome.com/icons/handshake-slash?style=solid
  /// broken, covid-19, social distance
  static const IconData handshakeSlash = IconDataSolid(0xe060);

  /// Solid Hanukiah icon
  ///
  /// https://fontawesome.com/icons/hanukiah?style=solid
  /// candelabrum, candle, candlestick, hanukkah, jewish, judaism, light, menorah, religion
  static const IconData hanukiah = IconDataSolid(0xf6e6);

  /// Solid Hard Drive icon
  ///
  /// https://fontawesome.com/icons/hard-drive?style=solid
  /// Hard Disk, cpu, hard drive, harddrive, machine, save, storage
  static const IconData solidHardDrive = IconDataSolid(0xf0a0);

  /// Alias hdd for icon [solidHardDrive]
  @Deprecated('Use "solidHardDrive" instead.')
  static const IconData solidHdd = solidHardDrive;

  /// Regular Hard Drive icon
  ///
  /// https://fontawesome.com/icons/hard-drive?style=regular
  /// Hard Disk, cpu, hard drive, harddrive, machine, save, storage
  static const IconData hardDrive = IconDataRegular(0xf0a0);

  /// Alias hdd for icon [hardDrive]
  @Deprecated('Use "hardDrive" instead.')
  static const IconData hdd = hardDrive;

  /// Brands Hashnode icon
  ///
  /// https://fontawesome.com/icons/hashnode?style=brands
  static const IconData hashnode = IconDataBrands(0xe499);

  /// Solid Hashtag icon
  ///
  /// https://fontawesome.com/icons/hashtag?style=solid
  /// Number Sign, Twitter, instagram, pound, social media, tag
  static const IconData hashtag = IconDataSolid(0x23);

  /// Solid Hat Cowboy icon
  ///
  /// https://fontawesome.com/icons/hat-cowboy?style=solid
  /// buckaroo, horse, jackeroo, john b., old west, pardner, ranch, rancher, rodeo, western, wrangler
  static const IconData hatCowboy = IconDataSolid(0xf8c0);

  /// Solid Hat Cowboy Side icon
  ///
  /// https://fontawesome.com/icons/hat-cowboy-side?style=solid
  /// buckaroo, horse, jackeroo, john b., old west, pardner, ranch, rancher, rodeo, western, wrangler
  static const IconData hatCowboySide = IconDataSolid(0xf8c1);

  /// Solid Hat Wizard icon
  ///
  /// https://fontawesome.com/icons/hat-wizard?style=solid
  /// Dungeons & Dragons, accessory, buckle, clothing, d&d, dnd, fantasy, halloween, head, holiday, mage, magic, pointy, witch
  static const IconData hatWizard = IconDataSolid(0xf6e8);

  /// Solid Head Side Cough icon
  ///
  /// https://fontawesome.com/icons/head-side-cough?style=solid
  /// cough, covid-19, germs, lungs, respiratory, sick
  static const IconData headSideCough = IconDataSolid(0xe061);

  /// Solid Head Side Cough Slash icon
  ///
  /// https://fontawesome.com/icons/head-side-cough-slash?style=solid
  /// cough, covid-19, germs, lungs, respiratory, sick
  static const IconData headSideCoughSlash = IconDataSolid(0xe062);

  /// Solid Head Side Mask icon
  ///
  /// https://fontawesome.com/icons/head-side-mask?style=solid
  /// breath, coronavirus, covid-19, filter, flu, infection, pandemic, respirator, virus
  static const IconData headSideMask = IconDataSolid(0xe063);

  /// Solid Head Side Virus icon
  ///
  /// https://fontawesome.com/icons/head-side-virus?style=solid
  /// cold, coronavirus, covid-19, flu, infection, pandemic, sick
  static const IconData headSideVirus = IconDataSolid(0xe064);

  /// Solid Heading icon
  ///
  /// https://fontawesome.com/icons/heading?style=solid
  /// format, header, text, title
  static const IconData heading = IconDataSolid(0xf1dc);

  /// Alias header for icon [heading]
  @Deprecated('Use "heading" instead.')
  static const IconData header = heading;

  /// Solid Headphones icon
  ///
  /// https://fontawesome.com/icons/headphones?style=solid
  /// audio, earbud, headphone, listen, music, sound, speaker
  static const IconData headphones = IconDataSolid(0xf025);

  /// Solid Headphones Simple icon
  ///
  /// https://fontawesome.com/icons/headphones-simple?style=solid
  /// audio, listen, music, sound, speaker
  static const IconData headphonesSimple = IconDataSolid(0xf58f);

  /// Alias headphones-alt for icon [headphonesSimple]
  @Deprecated('Use "headphonesSimple" instead.')
  static const IconData headphonesAlt = headphonesSimple;

  /// Solid Headset icon
  ///
  /// https://fontawesome.com/icons/headset?style=solid
  /// audio, gamer, gaming, listen, live chat, microphone, shot caller, sound, support, telemarketer
  static const IconData headset = IconDataSolid(0xf590);

  /// Solid Heart icon
  ///
  /// https://fontawesome.com/icons/heart?style=solid
  /// black, black heart, blue, blue heart, brown, brown heart, card, evil, favorite, game, green, green heart, heart, heart suit, like, love, orange, orange heart, purple, purple heart, red heart, relationship, valentine, white, white heart, wicked, yellow, yellow heart
  static const IconData solidHeart = IconDataSolid(0xf004);

  /// Regular Heart icon
  ///
  /// https://fontawesome.com/icons/heart?style=regular
  /// black, black heart, blue, blue heart, brown, brown heart, card, evil, favorite, game, green, green heart, heart, heart suit, like, love, orange, orange heart, purple, purple heart, red heart, relationship, valentine, white, white heart, wicked, yellow, yellow heart
  static const IconData heart = IconDataRegular(0xf004);

  /// Solid Heart Circle Bolt icon
  ///
  /// https://fontawesome.com/icons/heart-circle-bolt?style=solid
  /// cardiogram, ekg, electric, heart, love, pacemaker
  static const IconData heartCircleBolt = IconDataSolid(0xe4fc);

  /// Solid Heart Circle Check icon
  ///
  /// https://fontawesome.com/icons/heart-circle-check?style=solid
  /// favorite, heart, love, not affected, ok, okay
  static const IconData heartCircleCheck = IconDataSolid(0xe4fd);

  /// Solid Heart Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/heart-circle-exclamation?style=solid
  /// favorite, heart, love
  static const IconData heartCircleExclamation = IconDataSolid(0xe4fe);

  /// Solid Heart Circle Minus icon
  ///
  /// https://fontawesome.com/icons/heart-circle-minus?style=solid
  /// favorite, heart, love
  static const IconData heartCircleMinus = IconDataSolid(0xe4ff);

  /// Solid Heart Circle Plus icon
  ///
  /// https://fontawesome.com/icons/heart-circle-plus?style=solid
  /// favorite, heart, love
  static const IconData heartCirclePlus = IconDataSolid(0xe500);

  /// Solid Heart Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/heart-circle-xmark?style=solid
  /// favorite, heart, love
  static const IconData heartCircleXmark = IconDataSolid(0xe501);

  /// Solid Heart Crack icon
  ///
  /// https://fontawesome.com/icons/heart-crack?style=solid
  /// break, breakup, broken, broken heart, crushed, dislike, dumped, grief, love, lovesick, relationship, sad
  static const IconData heartCrack = IconDataSolid(0xf7a9);

  /// Alias heart-broken for icon [heartCrack]
  @Deprecated('Use "heartCrack" instead.')
  static const IconData heartBroken = heartCrack;

  /// Solid Heart Pulse icon
  ///
  /// https://fontawesome.com/icons/heart-pulse?style=solid
  /// ekg, electrocardiogram, health, lifeline, vital signs
  static const IconData heartPulse = IconDataSolid(0xf21e);

  /// Alias heartbeat for icon [heartPulse]
  @Deprecated('Use "heartPulse" instead.')
  static const IconData heartbeat = heartPulse;

  /// Solid Helicopter icon
  ///
  /// https://fontawesome.com/icons/helicopter?style=solid
  /// airwolf, apache, chopper, flight, fly, helicopter, travel, vehicle
  static const IconData helicopter = IconDataSolid(0xf533);

  /// Solid Helicopter Symbol icon
  ///
  /// https://fontawesome.com/icons/helicopter-symbol?style=solid
  /// chopper, helicopter, landing pad, whirlybird
  static const IconData helicopterSymbol = IconDataSolid(0xe502);

  /// Solid Helmet Safety icon
  ///
  /// https://fontawesome.com/icons/helmet-safety?style=solid
  /// construction, hardhat, helmet, safety
  static const IconData helmetSafety = IconDataSolid(0xf807);

  /// Alias hard-hat for icon [helmetSafety]
  @Deprecated('Use "helmetSafety" instead.')
  static const IconData hardHat = helmetSafety;

  /// Alias hat-hard for icon [helmetSafety]
  @Deprecated('Use "helmetSafety" instead.')
  static const IconData hatHard = helmetSafety;

  /// Solid Helmet Un icon
  ///
  /// https://fontawesome.com/icons/helmet-un?style=solid
  /// helmet, united nations
  static const IconData helmetUn = IconDataSolid(0xe503);

  /// Solid Highlighter icon
  ///
  /// https://fontawesome.com/icons/highlighter?style=solid
  /// edit, marker, sharpie, update, write
  static const IconData highlighter = IconDataSolid(0xf591);

  /// Solid Hill Avalanche icon
  ///
  /// https://fontawesome.com/icons/hill-avalanche?style=solid
  /// mudslide, snow, winter
  static const IconData hillAvalanche = IconDataSolid(0xe507);

  /// Solid Hill Rockslide icon
  ///
  /// https://fontawesome.com/icons/hill-rockslide?style=solid
  /// mudslide
  static const IconData hillRockslide = IconDataSolid(0xe508);

  /// Solid Hippo icon
  ///
  /// https://fontawesome.com/icons/hippo?style=solid
  /// animal, fauna, hippo, hippopotamus, hungry, mammal
  static const IconData hippo = IconDataSolid(0xf6ed);

  /// Brands Hips icon
  ///
  /// https://fontawesome.com/icons/hips?style=brands
  static const IconData hips = IconDataBrands(0xf452);

  /// Brands HireAHelper icon
  ///
  /// https://fontawesome.com/icons/hire-a-helper?style=brands
  static const IconData hireAHelper = IconDataBrands(0xf3b0);

  /// Brands Hive Blockchain Network icon
  ///
  /// https://fontawesome.com/icons/hive?style=brands
  static const IconData hive = IconDataBrands(0xe07f);

  /// Solid Hockey Puck icon
  ///
  /// https://fontawesome.com/icons/hockey-puck?style=solid
  /// ice, nhl, sport
  static const IconData hockeyPuck = IconDataSolid(0xf453);

  /// Solid Holly Berry icon
  ///
  /// https://fontawesome.com/icons/holly-berry?style=solid
  /// catwoman, christmas, decoration, flora, halle, holiday, ororo munroe, plant, storm, xmas
  static const IconData hollyBerry = IconDataSolid(0xf7aa);

  /// Brands Hooli icon
  ///
  /// https://fontawesome.com/icons/hooli?style=brands
  static const IconData hooli = IconDataBrands(0xf427);

  /// Brands Hornbill icon
  ///
  /// https://fontawesome.com/icons/hornbill?style=brands
  static const IconData hornbill = IconDataBrands(0xf592);

  /// Solid Horse icon
  ///
  /// https://fontawesome.com/icons/horse?style=solid
  /// equestrian, equus, fauna, horse, mammmal, mare, neigh, pony, racehorse, racing
  static const IconData horse = IconDataSolid(0xf6f0);

  /// Solid Horse Head icon
  ///
  /// https://fontawesome.com/icons/horse-head?style=solid
  /// equus, fauna, mammmal, mare, neigh, pony
  static const IconData horseHead = IconDataSolid(0xf7ab);

  /// Solid Hospital icon
  ///
  /// https://fontawesome.com/icons/hospital?style=solid
  /// building, covid-19, doctor, emergency room, hospital, medical center, medicine
  static const IconData solidHospital = IconDataSolid(0xf0f8);

  /// Alias hospital-alt for icon [solidHospital]
  @Deprecated('Use "solidHospital" instead.')
  static const IconData solidHospitalAlt = solidHospital;

  /// Alias hospital-wide for icon [solidHospital]
  @Deprecated('Use "solidHospital" instead.')
  static const IconData solidHospitalWide = solidHospital;

  /// Regular Hospital icon
  ///
  /// https://fontawesome.com/icons/hospital?style=regular
  /// building, covid-19, doctor, emergency room, hospital, medical center, medicine
  static const IconData hospital = IconDataRegular(0xf0f8);

  /// Alias hospital-alt for icon [hospital]
  @Deprecated('Use "hospital" instead.')
  static const IconData hospitalAlt = hospital;

  /// Alias hospital-wide for icon [hospital]
  @Deprecated('Use "hospital" instead.')
  static const IconData hospitalWide = hospital;

  /// Solid Hospital User icon
  ///
  /// https://fontawesome.com/icons/hospital-user?style=solid
  /// covid-19, doctor, network, patient, primary care
  static const IconData hospitalUser = IconDataSolid(0xf80d);

  /// Solid Hot Tub Person icon
  ///
  /// https://fontawesome.com/icons/hot-tub-person?style=solid
  /// jacuzzi, spa
  static const IconData hotTubPerson = IconDataSolid(0xf593);

  /// Alias hot-tub for icon [hotTubPerson]
  @Deprecated('Use "hotTubPerson" instead.')
  static const IconData hotTub = hotTubPerson;

  /// Solid Hotdog icon
  ///
  /// https://fontawesome.com/icons/hotdog?style=solid
  /// bun, chili, frankfurt, frankfurter, hot dog, hotdog, kosher, polish, sandwich, sausage, vienna, weiner
  static const IconData hotdog = IconDataSolid(0xf80f);

  /// Solid Hotel icon
  ///
  /// https://fontawesome.com/icons/hotel?style=solid
  /// building, hotel, inn, lodging, motel, resort, travel
  static const IconData hotel = IconDataSolid(0xf594);

  /// Brands Hotjar icon
  ///
  /// https://fontawesome.com/icons/hotjar?style=brands
  static const IconData hotjar = IconDataBrands(0xf3b1);

  /// Solid Hourglass icon
  ///
  /// https://fontawesome.com/icons/hourglass?style=solid
  /// hour, hourglass, hourglass not done, minute, sand, stopwatch, time, timer
  static const IconData solidHourglass = IconDataSolid(0xf254);

  /// Alias hourglass-empty for icon [solidHourglass]
  @Deprecated('Use "solidHourglass" instead.')
  static const IconData solidHourglassEmpty = solidHourglass;

  /// Regular Hourglass icon
  ///
  /// https://fontawesome.com/icons/hourglass?style=regular
  /// hour, hourglass, hourglass not done, minute, sand, stopwatch, time, timer
  static const IconData hourglass = IconDataRegular(0xf254);

  /// Alias hourglass-empty for icon [hourglass]
  @Deprecated('Use "hourglass" instead.')
  static const IconData hourglassEmpty = hourglass;

  /// Solid Hourglass End icon
  ///
  /// https://fontawesome.com/icons/hourglass-end?style=solid
  /// hour, hourglass done, minute, sand, stopwatch, time, timer
  static const IconData hourglassEnd = IconDataSolid(0xf253);

  /// Alias hourglass-3 for icon [hourglassEnd]
  @Deprecated('Use "hourglassEnd" instead.')
  static const IconData hourglass3 = hourglassEnd;

  /// Solid Hourglass Half icon
  ///
  /// https://fontawesome.com/icons/hourglass-half?style=solid
  /// hour, minute, sand, stopwatch, time
  static const IconData solidHourglassHalf = IconDataSolid(0xf252);

  /// Alias hourglass-2 for icon [solidHourglassHalf]
  @Deprecated('Use "solidHourglassHalf" instead.')
  static const IconData solidHourglass2 = solidHourglassHalf;

  /// Regular Hourglass Half icon
  ///
  /// https://fontawesome.com/icons/hourglass-half?style=regular
  /// hour, minute, sand, stopwatch, time
  static const IconData hourglassHalf = IconDataRegular(0xf252);

  /// Alias hourglass-2 for icon [hourglassHalf]
  @Deprecated('Use "hourglassHalf" instead.')
  static const IconData hourglass2 = hourglassHalf;

  /// Solid Hourglass Start icon
  ///
  /// https://fontawesome.com/icons/hourglass-start?style=solid
  /// hour, minute, sand, stopwatch, time
  static const IconData hourglassStart = IconDataSolid(0xf251);

  /// Alias hourglass-1 for icon [hourglassStart]
  @Deprecated('Use "hourglassStart" instead.')
  static const IconData hourglass1 = hourglassStart;

  /// Solid House icon
  ///
  /// https://fontawesome.com/icons/house?style=solid
  /// abode, building, home, house, main, residence
  static const IconData house = IconDataSolid(0xf015);

  /// Alias home for icon [house]
  @Deprecated('Use "house" instead.')
  static const IconData home = house;

  /// Alias home-alt for icon [house]
  @Deprecated('Use "house" instead.')
  static const IconData homeAlt = house;

  /// Alias home-lg-alt for icon [house]
  @Deprecated('Use "house" instead.')
  static const IconData homeLgAlt = house;

  /// Solid House Chimney icon
  ///
  /// https://fontawesome.com/icons/house-chimney?style=solid
  /// abode, building, chimney, house, main, residence, smokestack
  static const IconData houseChimney = IconDataSolid(0xe3af);

  /// Alias home-lg for icon [houseChimney]
  @Deprecated('Use "houseChimney" instead.')
  static const IconData homeLg = houseChimney;

  /// Solid House Chimney Crack icon
  ///
  /// https://fontawesome.com/icons/house-chimney-crack?style=solid
  /// building, devastation, disaster, earthquake, home, insurance
  static const IconData houseChimneyCrack = IconDataSolid(0xf6f1);

  /// Alias house-damage for icon [houseChimneyCrack]
  @Deprecated('Use "houseChimneyCrack" instead.')
  static const IconData houseDamage = houseChimneyCrack;

  /// Solid House Chimney Medical icon
  ///
  /// https://fontawesome.com/icons/house-chimney-medical?style=solid
  /// covid-19, doctor, general practitioner, hospital, infirmary, medicine, office, outpatient
  static const IconData houseChimneyMedical = IconDataSolid(0xf7f2);

  /// Alias clinic-medical for icon [houseChimneyMedical]
  @Deprecated('Use "houseChimneyMedical" instead.')
  static const IconData clinicMedical = houseChimneyMedical;

  /// Solid House Chimney User icon
  ///
  /// https://fontawesome.com/icons/house-chimney-user?style=solid
  /// covid-19, home, isolation, quarantine
  static const IconData houseChimneyUser = IconDataSolid(0xe065);

  /// Solid House Chimney Window icon
  ///
  /// https://fontawesome.com/icons/house-chimney-window?style=solid
  /// abode, building, family, home, residence
  static const IconData houseChimneyWindow = IconDataSolid(0xe00d);

  /// Solid House Circle Check icon
  ///
  /// https://fontawesome.com/icons/house-circle-check?style=solid
  /// abode, home, house, not affected, ok, okay
  static const IconData houseCircleCheck = IconDataSolid(0xe509);

  /// Solid House Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/house-circle-exclamation?style=solid
  /// abode, affected, home, house
  static const IconData houseCircleExclamation = IconDataSolid(0xe50a);

  /// Solid House Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/house-circle-xmark?style=solid
  /// abode, destroy, home, house
  static const IconData houseCircleXmark = IconDataSolid(0xe50b);

  /// Solid House Crack icon
  ///
  /// https://fontawesome.com/icons/house-crack?style=solid
  /// building, devastation, disaster, earthquake, home, insurance
  static const IconData houseCrack = IconDataSolid(0xe3b1);

  /// Solid House Fire icon
  ///
  /// https://fontawesome.com/icons/house-fire?style=solid
  /// burn, emergency, home
  static const IconData houseFire = IconDataSolid(0xe50c);

  /// Solid House Flag icon
  ///
  /// https://fontawesome.com/icons/house-flag?style=solid
  /// camp, home
  static const IconData houseFlag = IconDataSolid(0xe50d);

  /// Solid House Flood Water icon
  ///
  /// https://fontawesome.com/icons/house-flood-water?style=solid
  /// damage, flood, water
  static const IconData houseFloodWater = IconDataSolid(0xe50e);

  /// Solid House Flood Water Circle Arrow Right icon
  ///
  /// https://fontawesome.com/icons/house-flood-water-circle-arrow-right?style=solid
  /// damage, flood, water
  static const IconData houseFloodWaterCircleArrowRight = IconDataSolid(0xe50f);

  /// Solid House Laptop icon
  ///
  /// https://fontawesome.com/icons/house-laptop?style=solid
  /// computer, covid-19, device, office, remote, work from home
  static const IconData houseLaptop = IconDataSolid(0xe066);

  /// Alias laptop-house for icon [houseLaptop]
  @Deprecated('Use "houseLaptop" instead.')
  static const IconData laptopHouse = houseLaptop;

  /// Solid House Lock icon
  ///
  /// https://fontawesome.com/icons/house-lock?style=solid
  /// closed, home, house, lockdown, quarantine
  static const IconData houseLock = IconDataSolid(0xe510);

  /// Solid House Medical icon
  ///
  /// https://fontawesome.com/icons/house-medical?style=solid
  /// covid-19, doctor, facility, general practitioner, health, hospital, infirmary, medicine, office, outpatient
  static const IconData houseMedical = IconDataSolid(0xe3b2);

  /// Solid House Medical Circle Check icon
  ///
  /// https://fontawesome.com/icons/house-medical-circle-check?style=solid
  /// clinic, hospital, not affected, ok, okay
  static const IconData houseMedicalCircleCheck = IconDataSolid(0xe511);

  /// Solid House Medical Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/house-medical-circle-exclamation?style=solid
  /// affected, clinic, hospital
  static const IconData houseMedicalCircleExclamation = IconDataSolid(0xe512);

  /// Solid House Medical Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/house-medical-circle-xmark?style=solid
  /// clinic, destroy, hospital
  static const IconData houseMedicalCircleXmark = IconDataSolid(0xe513);

  /// Solid House Medical Flag icon
  ///
  /// https://fontawesome.com/icons/house-medical-flag?style=solid
  /// clinic, hospital, mash
  static const IconData houseMedicalFlag = IconDataSolid(0xe514);

  /// Solid House Signal icon
  ///
  /// https://fontawesome.com/icons/house-signal?style=solid
  /// abode, building, connect, family, home, residence, smart home, wifi
  static const IconData houseSignal = IconDataSolid(0xe012);

  /// Solid House Tsunami icon
  ///
  /// https://fontawesome.com/icons/house-tsunami?style=solid
  /// damage, flood, tidal wave, wave
  static const IconData houseTsunami = IconDataSolid(0xe515);

  /// Solid House User icon
  ///
  /// https://fontawesome.com/icons/house-user?style=solid
  /// house
  static const IconData houseUser = IconDataSolid(0xe1b0);

  /// Alias home-user for icon [houseUser]
  @Deprecated('Use "houseUser" instead.')
  static const IconData homeUser = houseUser;

  /// Brands Houzz icon
  ///
  /// https://fontawesome.com/icons/houzz?style=brands
  static const IconData houzz = IconDataBrands(0xf27c);

  /// Solid Hryvnia Sign icon
  ///
  /// https://fontawesome.com/icons/hryvnia-sign?style=solid
  /// Hryvnia Sign, currency
  static const IconData hryvniaSign = IconDataSolid(0xf6f2);

  /// Alias hryvnia for icon [hryvniaSign]
  @Deprecated('Use "hryvniaSign" instead.')
  static const IconData hryvnia = hryvniaSign;

  /// Brands HTML 5 Logo icon
  ///
  /// https://fontawesome.com/icons/html5?style=brands
  static const IconData html5 = IconDataBrands(0xf13b);

  /// Brands HubSpot icon
  ///
  /// https://fontawesome.com/icons/hubspot?style=brands
  static const IconData hubspot = IconDataBrands(0xf3b2);

  /// Solid Hurricane icon
  ///
  /// https://fontawesome.com/icons/hurricane?style=solid
  /// coriolis effect, eye, storm, tropical cyclone, typhoon
  static const IconData hurricane = IconDataSolid(0xf751);

  /// Solid I icon
  ///
  /// https://fontawesome.com/icons/i?style=solid
  /// Latin Capital Letter I, Latin Small Letter I, letter
  static const IconData i = IconDataSolid(0x49);

  /// Solid I Cursor icon
  ///
  /// https://fontawesome.com/icons/i-cursor?style=solid
  /// editing, i-beam, type, writing
  static const IconData iCursor = IconDataSolid(0xf246);

  /// Solid Ice Cream icon
  ///
  /// https://fontawesome.com/icons/ice-cream?style=solid
  /// chocolate, cone, cream, dessert, frozen, ice, ice cream, scoop, sorbet, sweet, vanilla, yogurt
  static const IconData iceCream = IconDataSolid(0xf810);

  /// Solid Icicles icon
  ///
  /// https://fontawesome.com/icons/icicles?style=solid
  /// cold, frozen, hanging, ice, seasonal, sharp
  static const IconData icicles = IconDataSolid(0xf7ad);

  /// Solid Icons icon
  ///
  /// https://fontawesome.com/icons/icons?style=solid
  /// bolt, emoji, heart, image, music, photo, symbols
  static const IconData icons = IconDataSolid(0xf86d);

  /// Alias heart-music-camera-bolt for icon [icons]
  @Deprecated('Use "icons" instead.')
  static const IconData heartMusicCameraBolt = icons;

  /// Solid Id Badge icon
  ///
  /// https://fontawesome.com/icons/id-badge?style=solid
  /// address, contact, identification, license, profile
  static const IconData solidIdBadge = IconDataSolid(0xf2c1);

  /// Regular Id Badge icon
  ///
  /// https://fontawesome.com/icons/id-badge?style=regular
  /// address, contact, identification, license, profile
  static const IconData idBadge = IconDataRegular(0xf2c1);

  /// Solid Id Card icon
  ///
  /// https://fontawesome.com/icons/id-card?style=solid
  /// contact, demographics, document, identification, issued, profile, registration
  static const IconData solidIdCard = IconDataSolid(0xf2c2);

  /// Alias drivers-license for icon [solidIdCard]
  @Deprecated('Use "solidIdCard" instead.')
  static const IconData solidDriversLicense = solidIdCard;

  /// Regular Id Card icon
  ///
  /// https://fontawesome.com/icons/id-card?style=regular
  /// contact, demographics, document, identification, issued, profile, registration
  static const IconData idCard = IconDataRegular(0xf2c2);

  /// Alias drivers-license for icon [idCard]
  @Deprecated('Use "idCard" instead.')
  static const IconData driversLicense = idCard;

  /// Solid Id Card Clip icon
  ///
  /// https://fontawesome.com/icons/id-card-clip?style=solid
  /// contact, demographics, document, identification, issued, profile
  static const IconData idCardClip = IconDataSolid(0xf47f);

  /// Alias id-card-alt for icon [idCardClip]
  @Deprecated('Use "idCardClip" instead.')
  static const IconData idCardAlt = idCardClip;

  /// Brands iDeal icon
  ///
  /// https://fontawesome.com/icons/ideal?style=brands
  static const IconData ideal = IconDataBrands(0xe013);

  /// Solid Igloo icon
  ///
  /// https://fontawesome.com/icons/igloo?style=solid
  /// dome, dwelling, eskimo, home, house, ice, snow
  static const IconData igloo = IconDataSolid(0xf7ae);

  /// Solid Image icon
  ///
  /// https://fontawesome.com/icons/image?style=solid
  /// album, landscape, photo, picture
  static const IconData solidImage = IconDataSolid(0xf03e);

  /// Regular Image icon
  ///
  /// https://fontawesome.com/icons/image?style=regular
  /// album, landscape, photo, picture
  static const IconData image = IconDataRegular(0xf03e);

  /// Solid Image Portrait icon
  ///
  /// https://fontawesome.com/icons/image-portrait?style=solid
  /// id, image, photo, picture, selfie
  static const IconData imagePortrait = IconDataSolid(0xf3e0);

  /// Alias portrait for icon [imagePortrait]
  @Deprecated('Use "imagePortrait" instead.')
  static const IconData portrait = imagePortrait;

  /// Solid Images icon
  ///
  /// https://fontawesome.com/icons/images?style=solid
  /// album, landscape, photo, picture
  static const IconData solidImages = IconDataSolid(0xf302);

  /// Regular Images icon
  ///
  /// https://fontawesome.com/icons/images?style=regular
  /// album, landscape, photo, picture
  static const IconData images = IconDataRegular(0xf302);

  /// Brands IMDB icon
  ///
  /// https://fontawesome.com/icons/imdb?style=brands
  static const IconData imdb = IconDataBrands(0xf2d8);

  /// Solid Inbox icon
  ///
  /// https://fontawesome.com/icons/inbox?style=solid
  /// archive, desk, email, mail, message
  static const IconData inbox = IconDataSolid(0xf01c);

  /// Solid Indent icon
  ///
  /// https://fontawesome.com/icons/indent?style=solid
  /// align, justify, paragraph, tab
  static const IconData indent = IconDataSolid(0xf03c);

  /// Solid Indian Rupee Sign icon
  ///
  /// https://fontawesome.com/icons/indian-rupee-sign?style=solid
  /// Indian Rupee Sign, currency
  static const IconData indianRupeeSign = IconDataSolid(0xe1bc);

  /// Alias indian-rupee for icon [indianRupeeSign]
  @Deprecated('Use "indianRupeeSign" instead.')
  static const IconData indianRupee = indianRupeeSign;

  /// Alias inr for icon [indianRupeeSign]
  @Deprecated('Use "indianRupeeSign" instead.')
  static const IconData inr = indianRupeeSign;

  /// Solid Industry icon
  ///
  /// https://fontawesome.com/icons/industry?style=solid
  /// building, factory, industrial, manufacturing, mill, warehouse
  static const IconData industry = IconDataSolid(0xf275);

  /// Solid Infinity icon
  ///
  /// https://fontawesome.com/icons/infinity?style=solid
  /// Infinity, eternity, forever, infinity, math, unbounded, universal
  static const IconData infinity = IconDataSolid(0xf534);

  /// Solid Info icon
  ///
  /// https://fontawesome.com/icons/info?style=solid
  /// details, help, information, more, support
  static const IconData info = IconDataSolid(0xf129);

  /// Brands Instagram icon
  ///
  /// https://fontawesome.com/icons/instagram?style=brands
  static const IconData instagram = IconDataBrands(0xf16d);

  /// Brands InstaLOD icon
  ///
  /// https://fontawesome.com/icons/instalod?style=brands
  static const IconData instalod = IconDataBrands(0xe081);

  /// Brands Intercom icon
  ///
  /// https://fontawesome.com/icons/intercom?style=brands
  /// app, customer, messenger
  static const IconData intercom = IconDataBrands(0xf7af);

  /// Brands Internet-explorer icon
  ///
  /// https://fontawesome.com/icons/internet-explorer?style=brands
  /// browser, ie
  static const IconData internetExplorer = IconDataBrands(0xf26b);

  /// Brands InVision icon
  ///
  /// https://fontawesome.com/icons/invision?style=brands
  /// app, design, interface
  static const IconData invision = IconDataBrands(0xf7b0);

  /// Brands ioxhost icon
  ///
  /// https://fontawesome.com/icons/ioxhost?style=brands
  static const IconData ioxhost = IconDataBrands(0xf208);

  /// Solid Italic icon
  ///
  /// https://fontawesome.com/icons/italic?style=solid
  /// edit, emphasis, font, format, text, type
  static const IconData italic = IconDataSolid(0xf033);

  /// Brands itch.io icon
  ///
  /// https://fontawesome.com/icons/itch-io?style=brands
  static const IconData itchIo = IconDataBrands(0xf83a);

  /// Brands iTunes icon
  ///
  /// https://fontawesome.com/icons/itunes?style=brands
  static const IconData itunes = IconDataBrands(0xf3b4);

  /// Brands Itunes Note icon
  ///
  /// https://fontawesome.com/icons/itunes-note?style=brands
  static const IconData itunesNote = IconDataBrands(0xf3b5);

  /// Solid J icon
  ///
  /// https://fontawesome.com/icons/j?style=solid
  /// Latin Capital Letter J, Latin Small Letter J, letter
  static const IconData j = IconDataSolid(0x4a);

  /// Solid Jar icon
  ///
  /// https://fontawesome.com/icons/jar?style=solid
  /// jam, jelly, storage
  static const IconData jar = IconDataSolid(0xe516);

  /// Solid Jar Wheat icon
  ///
  /// https://fontawesome.com/icons/jar-wheat?style=solid
  /// flour, storage
  static const IconData jarWheat = IconDataSolid(0xe517);

  /// Brands Java icon
  ///
  /// https://fontawesome.com/icons/java?style=brands
  static const IconData java = IconDataBrands(0xf4e4);

  /// Solid Jedi icon
  ///
  /// https://fontawesome.com/icons/jedi?style=solid
  /// crest, force, sith, skywalker, star wars, yoda
  static const IconData jedi = IconDataSolid(0xf669);

  /// Brands Jedi Order icon
  ///
  /// https://fontawesome.com/icons/jedi-order?style=brands
  /// star wars
  static const IconData jediOrder = IconDataBrands(0xf50e);

  /// Brands Jenkis icon
  ///
  /// https://fontawesome.com/icons/jenkins?style=brands
  static const IconData jenkins = IconDataBrands(0xf3b6);

  /// Solid Jet Fighter icon
  ///
  /// https://fontawesome.com/icons/jet-fighter?style=solid
  /// airforce, airplane, airport, fast, fly, goose, marines, maverick, military, plane, quick, top gun, transportation, travel
  static const IconData jetFighter = IconDataSolid(0xf0fb);

  /// Alias fighter-jet for icon [jetFighter]
  @Deprecated('Use "jetFighter" instead.')
  static const IconData fighterJet = jetFighter;

  /// Solid Jet Fighter Up icon
  ///
  /// https://fontawesome.com/icons/jet-fighter-up?style=solid
  /// airforce, airplane, airport, fast, fly, goose, marines, maverick, military, plane, quick, top gun, transportation, travel
  static const IconData jetFighterUp = IconDataSolid(0xe518);

  /// Brands Jira icon
  ///
  /// https://fontawesome.com/icons/jira?style=brands
  /// atlassian
  static const IconData jira = IconDataBrands(0xf7b1);

  /// Brands Joget icon
  ///
  /// https://fontawesome.com/icons/joget?style=brands
  static const IconData joget = IconDataBrands(0xf3b7);

  /// Solid Joint icon
  ///
  /// https://fontawesome.com/icons/joint?style=solid
  /// blunt, cannabis, doobie, drugs, marijuana, roach, smoke, smoking, spliff
  static const IconData joint = IconDataSolid(0xf595);

  /// Brands Joomla Logo icon
  ///
  /// https://fontawesome.com/icons/joomla?style=brands
  static const IconData joomla = IconDataBrands(0xf1aa);

  /// Brands JavaScript (JS) icon
  ///
  /// https://fontawesome.com/icons/js?style=brands
  static const IconData js = IconDataBrands(0xf3b8);

  /// Brands jsFiddle icon
  ///
  /// https://fontawesome.com/icons/jsfiddle?style=brands
  static const IconData jsfiddle = IconDataBrands(0xf1cc);

  /// Solid Jug Detergent icon
  ///
  /// https://fontawesome.com/icons/jug-detergent?style=solid
  /// detergent, laundry, soap, wash
  static const IconData jugDetergent = IconDataSolid(0xe519);

  /// Solid K icon
  ///
  /// https://fontawesome.com/icons/k?style=solid
  /// Latin Capital Letter K, Latin Small Letter K, letter
  static const IconData k = IconDataSolid(0x4b);

  /// Solid Kaaba icon
  ///
  /// https://fontawesome.com/icons/kaaba?style=solid
  /// Muslim, building, cube, islam, kaaba, muslim, religion
  static const IconData kaaba = IconDataSolid(0xf66b);

  /// Brands Kaggle icon
  ///
  /// https://fontawesome.com/icons/kaggle?style=brands
  static const IconData kaggle = IconDataBrands(0xf5fa);

  /// Solid Key icon
  ///
  /// https://fontawesome.com/icons/key?style=solid
  /// key, lock, password, private, secret, unlock
  static const IconData key = IconDataSolid(0xf084);

  /// Brands Keybase icon
  ///
  /// https://fontawesome.com/icons/keybase?style=brands
  static const IconData keybase = IconDataBrands(0xf4f5);

  /// Solid Keyboard icon
  ///
  /// https://fontawesome.com/icons/keyboard?style=solid
  /// accessory, computer, edit, input, keyboard, text, type, write
  static const IconData solidKeyboard = IconDataSolid(0xf11c);

  /// Regular Keyboard icon
  ///
  /// https://fontawesome.com/icons/keyboard?style=regular
  /// accessory, computer, edit, input, keyboard, text, type, write
  static const IconData keyboard = IconDataRegular(0xf11c);

  /// Brands KeyCDN icon
  ///
  /// https://fontawesome.com/icons/keycdn?style=brands
  static const IconData keycdn = IconDataBrands(0xf3ba);

  /// Solid Khanda icon
  ///
  /// https://fontawesome.com/icons/khanda?style=solid
  /// Adi Shakti, chakkar, sikh, sikhism, sword
  static const IconData khanda = IconDataSolid(0xf66d);

  /// Brands Kickstarter icon
  ///
  /// https://fontawesome.com/icons/kickstarter?style=brands
  static const IconData kickstarter = IconDataBrands(0xf3bb);

  /// Brands Kickstarter K icon
  ///
  /// https://fontawesome.com/icons/kickstarter-k?style=brands
  static const IconData kickstarterK = IconDataBrands(0xf3bc);

  /// Solid Kip Sign icon
  ///
  /// https://fontawesome.com/icons/kip-sign?style=solid
  /// Kip Sign, currency
  static const IconData kipSign = IconDataSolid(0xe1c4);

  /// Solid Kit Medical icon
  ///
  /// https://fontawesome.com/icons/kit-medical?style=solid
  /// emergency, emt, health, medical, rescue
  static const IconData kitMedical = IconDataSolid(0xf479);

  /// Alias first-aid for icon [kitMedical]
  @Deprecated('Use "kitMedical" instead.')
  static const IconData firstAid = kitMedical;

  /// Solid Kitchen Set icon
  ///
  /// https://fontawesome.com/icons/kitchen-set?style=solid
  /// chef, cook, cup, kitchen, pan, pot, skillet
  static const IconData kitchenSet = IconDataSolid(0xe51a);

  /// Solid Kiwi Bird icon
  ///
  /// https://fontawesome.com/icons/kiwi-bird?style=solid
  /// bird, fauna, new zealand
  static const IconData kiwiBird = IconDataSolid(0xf535);

  /// Brands KORVUE icon
  ///
  /// https://fontawesome.com/icons/korvue?style=brands
  static const IconData korvue = IconDataBrands(0xf42f);

  /// Solid L icon
  ///
  /// https://fontawesome.com/icons/l?style=solid
  /// Latin Capital Letter L, Latin Small Letter L, letter
  static const IconData l = IconDataSolid(0x4c);

  /// Solid Land Mine On icon
  ///
  /// https://fontawesome.com/icons/land-mine-on?style=solid
  /// bomb, danger, explosion, war
  static const IconData landMineOn = IconDataSolid(0xe51b);

  /// Solid Landmark icon
  ///
  /// https://fontawesome.com/icons/landmark?style=solid
  /// building, classical, historic, memorable, monument, museum, politics
  static const IconData landmark = IconDataSolid(0xf66f);

  /// Solid Landmark Dome icon
  ///
  /// https://fontawesome.com/icons/landmark-dome?style=solid
  /// building, historic, memorable, monument, politics
  static const IconData landmarkDome = IconDataSolid(0xf752);

  /// Alias landmark-alt for icon [landmarkDome]
  @Deprecated('Use "landmarkDome" instead.')
  static const IconData landmarkAlt = landmarkDome;

  /// Solid Landmark Flag icon
  ///
  /// https://fontawesome.com/icons/landmark-flag?style=solid
  /// capitol, flag, landmark, memorial
  static const IconData landmarkFlag = IconDataSolid(0xe51c);

  /// Solid Language icon
  ///
  /// https://fontawesome.com/icons/language?style=solid
  /// dialect, idiom, localize, speech, translate, vernacular
  static const IconData language = IconDataSolid(0xf1ab);

  /// Solid Laptop icon
  ///
  /// https://fontawesome.com/icons/laptop?style=solid
  /// computer, cpu, dell, demo, device, laptop, mac, macbook, machine, pc, personal
  static const IconData laptop = IconDataSolid(0xf109);

  /// Solid Laptop Code icon
  ///
  /// https://fontawesome.com/icons/laptop-code?style=solid
  /// computer, cpu, dell, demo, develop, device, mac, macbook, machine, pc
  static const IconData laptopCode = IconDataSolid(0xf5fc);

  /// Solid Laptop File icon
  ///
  /// https://fontawesome.com/icons/laptop-file?style=solid
  /// computer, education, laptop, learning, remote work
  static const IconData laptopFile = IconDataSolid(0xe51d);

  /// Solid Laptop Medical icon
  ///
  /// https://fontawesome.com/icons/laptop-medical?style=solid
  /// computer, device, ehr, electronic health records, history
  static const IconData laptopMedical = IconDataSolid(0xf812);

  /// Brands Laravel icon
  ///
  /// https://fontawesome.com/icons/laravel?style=brands
  static const IconData laravel = IconDataBrands(0xf3bd);

  /// Solid Lari Sign icon
  ///
  /// https://fontawesome.com/icons/lari-sign?style=solid
  /// Lari Sign, currency
  static const IconData lariSign = IconDataSolid(0xe1c8);

  /// Brands last.fm icon
  ///
  /// https://fontawesome.com/icons/lastfm?style=brands
  static const IconData lastfm = IconDataBrands(0xf202);

  /// Solid Layer Group icon
  ///
  /// https://fontawesome.com/icons/layer-group?style=solid
  /// arrange, develop, layers, map, stack
  static const IconData layerGroup = IconDataSolid(0xf5fd);

  /// Solid Leaf icon
  ///
  /// https://fontawesome.com/icons/leaf?style=solid
  /// eco, flora, nature, plant, vegan
  static const IconData leaf = IconDataSolid(0xf06c);

  /// Brands Leanpub icon
  ///
  /// https://fontawesome.com/icons/leanpub?style=brands
  static const IconData leanpub = IconDataBrands(0xf212);

  /// Solid Left Long icon
  ///
  /// https://fontawesome.com/icons/left-long?style=solid
  /// back, long-arrow-left, previous
  static const IconData leftLong = IconDataSolid(0xf30a);

  /// Alias long-arrow-alt-left for icon [leftLong]
  @Deprecated('Use "leftLong" instead.')
  static const IconData longArrowAltLeft = leftLong;

  /// Solid Left Right icon
  ///
  /// https://fontawesome.com/icons/left-right?style=solid
  /// arrow, arrows-h, expand, horizontal, landscape, left-right arrow, resize, wide
  static const IconData leftRight = IconDataSolid(0xf337);

  /// Alias arrows-alt-h for icon [leftRight]
  @Deprecated('Use "leftRight" instead.')
  static const IconData arrowsAltH = leftRight;

  /// Solid Lemon icon
  ///
  /// https://fontawesome.com/icons/lemon?style=solid
  /// citrus, fruit, lemon, lemonade, lime, tart
  static const IconData solidLemon = IconDataSolid(0xf094);

  /// Regular Lemon icon
  ///
  /// https://fontawesome.com/icons/lemon?style=regular
  /// citrus, fruit, lemon, lemonade, lime, tart
  static const IconData lemon = IconDataRegular(0xf094);

  /// Brands Less icon
  ///
  /// https://fontawesome.com/icons/less?style=brands
  static const IconData less = IconDataBrands(0xf41d);

  /// Solid Less Than icon
  ///
  /// https://fontawesome.com/icons/less-than?style=solid
  /// Less-Than Sign, arithmetic, compare, math
  static const IconData lessThan = IconDataSolid(0x3c);

  /// Solid Less Than Equal icon
  ///
  /// https://fontawesome.com/icons/less-than-equal?style=solid
  /// arithmetic, compare, math
  static const IconData lessThanEqual = IconDataSolid(0xf537);

  /// Solid Life Ring icon
  ///
  /// https://fontawesome.com/icons/life-ring?style=solid
  /// coast guard, help, overboard, save, support
  static const IconData solidLifeRing = IconDataSolid(0xf1cd);

  /// Regular Life Ring icon
  ///
  /// https://fontawesome.com/icons/life-ring?style=regular
  /// coast guard, help, overboard, save, support
  static const IconData lifeRing = IconDataRegular(0xf1cd);

  /// Solid Lightbulb icon
  ///
  /// https://fontawesome.com/icons/lightbulb?style=solid
  ///   comic,   electric,   idea,   innovation,   inspiration,   light,   light bulb,  bulb, bulb, comic, electric, energy, idea, inspiration, mechanical
  static const IconData solidLightbulb = IconDataSolid(0xf0eb);

  /// Regular Lightbulb icon
  ///
  /// https://fontawesome.com/icons/lightbulb?style=regular
  ///   comic,   electric,   idea,   innovation,   inspiration,   light,   light bulb,  bulb, bulb, comic, electric, energy, idea, inspiration, mechanical
  static const IconData lightbulb = IconDataRegular(0xf0eb);

  /// Brands Line icon
  ///
  /// https://fontawesome.com/icons/line?style=brands
  static const IconData line = IconDataBrands(0xf3c0);

  /// Solid Lines Leaning icon
  ///
  /// https://fontawesome.com/icons/lines-leaning?style=solid
  /// canted, domino, falling, resilience, resilient, tipped
  static const IconData linesLeaning = IconDataSolid(0xe51e);

  /// Solid Link icon
  ///
  /// https://fontawesome.com/icons/link?style=solid
  /// attach, attachment, chain, connect, lin, link
  static const IconData link = IconDataSolid(0xf0c1);

  /// Alias chain for icon [link]
  @Deprecated('Use "link" instead.')
  static const IconData chain = link;

  /// Solid Link Slash icon
  ///
  /// https://fontawesome.com/icons/link-slash?style=solid
  /// attachment, chain, chain-broken, remove
  static const IconData linkSlash = IconDataSolid(0xf127);

  /// Alias chain-broken for icon [linkSlash]
  @Deprecated('Use "linkSlash" instead.')
  static const IconData chainBroken = linkSlash;

  /// Alias chain-slash for icon [linkSlash]
  @Deprecated('Use "linkSlash" instead.')
  static const IconData chainSlash = linkSlash;

  /// Alias unlink for icon [linkSlash]
  @Deprecated('Use "linkSlash" instead.')
  static const IconData unlink = linkSlash;

  /// Brands LinkedIn icon
  ///
  /// https://fontawesome.com/icons/linkedin?style=brands
  /// linkedin-square
  static const IconData linkedin = IconDataBrands(0xf08c);

  /// Brands LinkedIn In icon
  ///
  /// https://fontawesome.com/icons/linkedin-in?style=brands
  /// linkedin
  static const IconData linkedinIn = IconDataBrands(0xf0e1);

  /// Brands Linode icon
  ///
  /// https://fontawesome.com/icons/linode?style=brands
  static const IconData linode = IconDataBrands(0xf2b8);

  /// Brands Linux icon
  ///
  /// https://fontawesome.com/icons/linux?style=brands
  /// tux
  static const IconData linux = IconDataBrands(0xf17c);

  /// Solid Lira Sign icon
  ///
  /// https://fontawesome.com/icons/lira-sign?style=solid
  /// Lira Sign, currency
  static const IconData liraSign = IconDataSolid(0xf195);

  /// Solid List icon
  ///
  /// https://fontawesome.com/icons/list?style=solid
  /// checklist, completed, done, finished, ol, todo, ul
  static const IconData list = IconDataSolid(0xf03a);

  /// Alias list-squares for icon [list]
  @Deprecated('Use "list" instead.')
  static const IconData listSquares = list;

  /// Solid List Check icon
  ///
  /// https://fontawesome.com/icons/list-check?style=solid
  /// checklist, downloading, downloads, loading, progress, project management, settings, to do
  static const IconData listCheck = IconDataSolid(0xf0ae);

  /// Alias tasks for icon [listCheck]
  @Deprecated('Use "listCheck" instead.')
  static const IconData tasks = listCheck;

  /// Solid List Ol icon
  ///
  /// https://fontawesome.com/icons/list-ol?style=solid
  /// checklist, completed, done, finished, numbers, ol, todo, ul
  static const IconData listOl = IconDataSolid(0xf0cb);

  /// Alias list-1-2 for icon [listOl]
  @Deprecated('Use "listOl" instead.')
  static const IconData list12 = listOl;

  /// Alias list-numeric for icon [listOl]
  @Deprecated('Use "listOl" instead.')
  static const IconData listNumeric = listOl;

  /// Solid List Ul icon
  ///
  /// https://fontawesome.com/icons/list-ul?style=solid
  /// checklist, completed, done, finished, ol, todo, ul
  static const IconData listUl = IconDataSolid(0xf0ca);

  /// Alias list-dots for icon [listUl]
  @Deprecated('Use "listUl" instead.')
  static const IconData listDots = listUl;

  /// Solid Litecoin Sign icon
  ///
  /// https://fontawesome.com/icons/litecoin-sign?style=solid
  /// currency
  static const IconData litecoinSign = IconDataSolid(0xe1d3);

  /// Solid Location Arrow icon
  ///
  /// https://fontawesome.com/icons/location-arrow?style=solid
  /// address, compass, coordinate, direction, gps, map, navigation, place
  static const IconData locationArrow = IconDataSolid(0xf124);

  /// Solid Location Crosshairs icon
  ///
  /// https://fontawesome.com/icons/location-crosshairs?style=solid
  /// address, coordinate, direction, gps, location, map, navigation, place, where
  static const IconData locationCrosshairs = IconDataSolid(0xf601);

  /// Alias location for icon [locationCrosshairs]
  @Deprecated('Use "locationCrosshairs" instead.')
  static const IconData location = locationCrosshairs;

  /// Solid Location Dot icon
  ///
  /// https://fontawesome.com/icons/location-dot?style=solid
  /// address, coordinates, destination, gps, localize, location, map, navigation, paper, pin, place, point of interest, position, route, travel
  static const IconData locationDot = IconDataSolid(0xf3c5);

  /// Alias map-marker-alt for icon [locationDot]
  @Deprecated('Use "locationDot" instead.')
  static const IconData mapMarkerAlt = locationDot;

  /// Solid Location Pin icon
  ///
  /// https://fontawesome.com/icons/location-pin?style=solid
  /// address, coordinates, destination, gps, localize, location, map, navigation, paper, pin, place, point of interest, position, route, travel
  static const IconData locationPin = IconDataSolid(0xf041);

  /// Alias map-marker for icon [locationPin]
  @Deprecated('Use "locationPin" instead.')
  static const IconData mapMarker = locationPin;

  /// Solid Location Pin Lock icon
  ///
  /// https://fontawesome.com/icons/location-pin-lock?style=solid
  /// closed, lockdown, map, quarantine
  static const IconData locationPinLock = IconDataSolid(0xe51f);

  /// Solid Lock icon
  ///
  /// https://fontawesome.com/icons/lock?style=solid
  /// admin, closed, lock, locked, open, password, private, protect, security
  static const IconData lock = IconDataSolid(0xf023);

  /// Solid Lock Open icon
  ///
  /// https://fontawesome.com/icons/lock-open?style=solid
  /// admin, lock, open, password, private, protect, security, unlock
  static const IconData lockOpen = IconDataSolid(0xf3c1);

  /// Solid Locust icon
  ///
  /// https://fontawesome.com/icons/locust?style=solid
  /// horde, infestation, locust, plague, swarm
  static const IconData locust = IconDataSolid(0xe520);

  /// Solid Lungs icon
  ///
  /// https://fontawesome.com/icons/lungs?style=solid
  /// air, breath, covid-19, exhalation, inhalation, lungs, organ, respiration, respiratory
  static const IconData lungs = IconDataSolid(0xf604);

  /// Solid Lungs Virus icon
  ///
  /// https://fontawesome.com/icons/lungs-virus?style=solid
  /// breath, coronavirus, covid-19, flu, infection, pandemic, respiratory, sick
  static const IconData lungsVirus = IconDataSolid(0xe067);

  /// Brands lyft icon
  ///
  /// https://fontawesome.com/icons/lyft?style=brands
  static const IconData lyft = IconDataBrands(0xf3c3);

  /// Solid M icon
  ///
  /// https://fontawesome.com/icons/m?style=solid
  /// Latin Capital Letter M, Latin Small Letter M, letter
  static const IconData m = IconDataSolid(0x4d);

  /// Brands Magento icon
  ///
  /// https://fontawesome.com/icons/magento?style=brands
  static const IconData magento = IconDataBrands(0xf3c4);

  /// Solid Magnet icon
  ///
  /// https://fontawesome.com/icons/magnet?style=solid
  /// Attract, attraction, horseshoe, lodestone, magnet, magnetic, tool
  static const IconData magnet = IconDataSolid(0xf076);

  /// Solid Magnifying Glass icon
  ///
  /// https://fontawesome.com/icons/magnifying-glass?style=solid
  /// bigger, enlarge, find, glass, magnify, magnifying, magnifying glass tilted left, preview, search, tool, zoom
  static const IconData magnifyingGlass = IconDataSolid(0xf002);

  /// Alias search for icon [magnifyingGlass]
  @Deprecated('Use "magnifyingGlass" instead.')
  static const IconData search = magnifyingGlass;

  /// Solid Magnifying Glass Arrow Right icon
  ///
  /// https://fontawesome.com/icons/magnifying-glass-arrow-right?style=solid
  /// find, next, search
  static const IconData magnifyingGlassArrowRight = IconDataSolid(0xe521);

  /// Solid Magnifying Glass Chart icon
  ///
  /// https://fontawesome.com/icons/magnifying-glass-chart?style=solid
  ///  data,  graph,  intelligence, analysis, chart, market
  static const IconData magnifyingGlassChart = IconDataSolid(0xe522);

  /// Solid Magnifying Glass Dollar icon
  ///
  /// https://fontawesome.com/icons/magnifying-glass-dollar?style=solid
  /// bigger, enlarge, find, magnify, money, preview, zoom
  static const IconData magnifyingGlassDollar = IconDataSolid(0xf688);

  /// Alias search-dollar for icon [magnifyingGlassDollar]
  @Deprecated('Use "magnifyingGlassDollar" instead.')
  static const IconData searchDollar = magnifyingGlassDollar;

  /// Solid Magnifying Glass Location icon
  ///
  /// https://fontawesome.com/icons/magnifying-glass-location?style=solid
  /// bigger, enlarge, find, magnify, preview, zoom
  static const IconData magnifyingGlassLocation = IconDataSolid(0xf689);

  /// Alias search-location for icon [magnifyingGlassLocation]
  @Deprecated('Use "magnifyingGlassLocation" instead.')
  static const IconData searchLocation = magnifyingGlassLocation;

  /// Solid Magnifying Glass Minus icon
  ///
  /// https://fontawesome.com/icons/magnifying-glass-minus?style=solid
  /// minify, negative, smaller, zoom, zoom out
  static const IconData magnifyingGlassMinus = IconDataSolid(0xf010);

  /// Alias search-minus for icon [magnifyingGlassMinus]
  @Deprecated('Use "magnifyingGlassMinus" instead.')
  static const IconData searchMinus = magnifyingGlassMinus;

  /// Solid Magnifying Glass Plus icon
  ///
  /// https://fontawesome.com/icons/magnifying-glass-plus?style=solid
  /// bigger, enlarge, magnify, positive, zoom, zoom in
  static const IconData magnifyingGlassPlus = IconDataSolid(0xf00e);

  /// Alias search-plus for icon [magnifyingGlassPlus]
  @Deprecated('Use "magnifyingGlassPlus" instead.')
  static const IconData searchPlus = magnifyingGlassPlus;

  /// Brands Mailchimp icon
  ///
  /// https://fontawesome.com/icons/mailchimp?style=brands
  static const IconData mailchimp = IconDataBrands(0xf59e);

  /// Solid Manat Sign icon
  ///
  /// https://fontawesome.com/icons/manat-sign?style=solid
  /// Manat Sign, currency
  static const IconData manatSign = IconDataSolid(0xe1d5);

  /// Brands Mandalorian icon
  ///
  /// https://fontawesome.com/icons/mandalorian?style=brands
  static const IconData mandalorian = IconDataBrands(0xf50f);

  /// Solid Map icon
  ///
  /// https://fontawesome.com/icons/map?style=solid
  /// address, coordinates, destination, gps, localize, location, map, navigation, paper, pin, place, point of interest, position, route, travel, world, world map
  static const IconData solidMap = IconDataSolid(0xf279);

  /// Regular Map icon
  ///
  /// https://fontawesome.com/icons/map?style=regular
  /// address, coordinates, destination, gps, localize, location, map, navigation, paper, pin, place, point of interest, position, route, travel, world, world map
  static const IconData map = IconDataRegular(0xf279);

  /// Solid Map Location icon
  ///
  /// https://fontawesome.com/icons/map-location?style=solid
  /// address, coordinates, destination, gps, localize, location, map, navigation, paper, pin, place, point of interest, position, route, travel
  static const IconData mapLocation = IconDataSolid(0xf59f);

  /// Alias map-marked for icon [mapLocation]
  @Deprecated('Use "mapLocation" instead.')
  static const IconData mapMarked = mapLocation;

  /// Solid Map Location Dot icon
  ///
  /// https://fontawesome.com/icons/map-location-dot?style=solid
  /// address, coordinates, destination, gps, localize, location, map, navigation, paper, pin, place, point of interest, position, route, travel
  static const IconData mapLocationDot = IconDataSolid(0xf5a0);

  /// Alias map-marked-alt for icon [mapLocationDot]
  @Deprecated('Use "mapLocationDot" instead.')
  static const IconData mapMarkedAlt = mapLocationDot;

  /// Solid Map Pin icon
  ///
  /// https://fontawesome.com/icons/map-pin?style=solid
  /// address, agree, coordinates, destination, gps, localize, location, map, marker, navigation, pin, place, position, pushpin, round pushpin, travel
  static const IconData mapPin = IconDataSolid(0xf276);

  /// Brands Markdown icon
  ///
  /// https://fontawesome.com/icons/markdown?style=brands
  static const IconData markdown = IconDataBrands(0xf60f);

  /// Solid Marker icon
  ///
  /// https://fontawesome.com/icons/marker?style=solid
  /// design, edit, sharpie, update, write
  static const IconData marker = IconDataSolid(0xf5a1);

  /// Solid Mars icon
  ///
  /// https://fontawesome.com/icons/mars?style=solid
  /// gender, male, male sign, man
  static const IconData mars = IconDataSolid(0xf222);

  /// Solid Mars And Venus icon
  ///
  /// https://fontawesome.com/icons/mars-and-venus?style=solid
  /// Male and Female Sign, female, gender, intersex, male, transgender
  static const IconData marsAndVenus = IconDataSolid(0xf224);

  /// Solid Mars And Venus Burst icon
  ///
  /// https://fontawesome.com/icons/mars-and-venus-burst?style=solid
  /// gender, violence
  static const IconData marsAndVenusBurst = IconDataSolid(0xe523);

  /// Solid Mars Double icon
  ///
  /// https://fontawesome.com/icons/mars-double?style=solid
  /// Doubled Male Sign, gay, gender, male, men
  static const IconData marsDouble = IconDataSolid(0xf227);

  /// Solid Mars Stroke icon
  ///
  /// https://fontawesome.com/icons/mars-stroke?style=solid
  /// Male with Stroke Sign, gender, transgender
  static const IconData marsStroke = IconDataSolid(0xf229);

  /// Solid Mars Stroke Right icon
  ///
  /// https://fontawesome.com/icons/mars-stroke-right?style=solid
  /// Horizontal Male with Stroke Sign, gender
  static const IconData marsStrokeRight = IconDataSolid(0xf22b);

  /// Alias mars-stroke-h for icon [marsStrokeRight]
  @Deprecated('Use "marsStrokeRight" instead.')
  static const IconData marsStrokeH = marsStrokeRight;

  /// Solid Mars Stroke Up icon
  ///
  /// https://fontawesome.com/icons/mars-stroke-up?style=solid
  /// Vertical Male with Stroke Sign, gender
  static const IconData marsStrokeUp = IconDataSolid(0xf22a);

  /// Alias mars-stroke-v for icon [marsStrokeUp]
  @Deprecated('Use "marsStrokeUp" instead.')
  static const IconData marsStrokeV = marsStrokeUp;

  /// Solid Martini Glass icon
  ///
  /// https://fontawesome.com/icons/martini-glass?style=solid
  /// alcohol, bar, beverage, cocktail, cocktail glass, drink, glass, liquor
  static const IconData martiniGlass = IconDataSolid(0xf57b);

  /// Alias glass-martini-alt for icon [martiniGlass]
  @Deprecated('Use "martiniGlass" instead.')
  static const IconData glassMartiniAlt = martiniGlass;

  /// Solid Martini Glass Citrus icon
  ///
  /// https://fontawesome.com/icons/martini-glass-citrus?style=solid
  /// alcohol, beverage, drink, gin, glass, margarita, martini, vodka
  static const IconData martiniGlassCitrus = IconDataSolid(0xf561);

  /// Alias cocktail for icon [martiniGlassCitrus]
  @Deprecated('Use "martiniGlassCitrus" instead.')
  static const IconData cocktail = martiniGlassCitrus;

  /// Solid Martini Glass Empty icon
  ///
  /// https://fontawesome.com/icons/martini-glass-empty?style=solid
  /// alcohol, bar, beverage, drink, liquor
  static const IconData martiniGlassEmpty = IconDataSolid(0xf000);

  /// Alias glass-martini for icon [martiniGlassEmpty]
  @Deprecated('Use "martiniGlassEmpty" instead.')
  static const IconData glassMartini = martiniGlassEmpty;

  /// Solid Mask icon
  ///
  /// https://fontawesome.com/icons/mask?style=solid
  /// carnivale, costume, disguise, halloween, secret, super hero
  static const IconData mask = IconDataSolid(0xf6fa);

  /// Solid Mask Face icon
  ///
  /// https://fontawesome.com/icons/mask-face?style=solid
  /// breath, coronavirus, covid-19, filter, flu, infection, pandemic, respirator, virus
  static const IconData maskFace = IconDataSolid(0xe1d7);

  /// Solid Mask Ventilator icon
  ///
  /// https://fontawesome.com/icons/mask-ventilator?style=solid
  /// breath, gas, mask, oxygen, respirator, ventilator
  static const IconData maskVentilator = IconDataSolid(0xe524);

  /// Solid Masks Theater icon
  ///
  /// https://fontawesome.com/icons/masks-theater?style=solid
  /// art, comedy, mask, perform, performing, performing arts, theater, theatre, tragedy
  static const IconData masksTheater = IconDataSolid(0xf630);

  /// Alias theater-masks for icon [masksTheater]
  @Deprecated('Use "masksTheater" instead.')
  static const IconData theaterMasks = masksTheater;

  /// Brands Mastodon icon
  ///
  /// https://fontawesome.com/icons/mastodon?style=brands
  static const IconData mastodon = IconDataBrands(0xf4f6);

  /// Solid Mattress Pillow icon
  ///
  /// https://fontawesome.com/icons/mattress-pillow?style=solid
  /// air mattress, mattress, pillow, rest, sleep
  static const IconData mattressPillow = IconDataSolid(0xe525);

  /// Brands MaxCDN icon
  ///
  /// https://fontawesome.com/icons/maxcdn?style=brands
  static const IconData maxcdn = IconDataBrands(0xf136);

  /// Solid Maximize icon
  ///
  /// https://fontawesome.com/icons/maximize?style=solid
  /// bigger, enlarge, fullscreen, move, resize
  static const IconData maximize = IconDataSolid(0xf31e);

  /// Alias expand-arrows-alt for icon [maximize]
  @Deprecated('Use "maximize" instead.')
  static const IconData expandArrowsAlt = maximize;

  /// Brands Material Design for Bootstrap icon
  ///
  /// https://fontawesome.com/icons/mdb?style=brands
  static const IconData mdb = IconDataBrands(0xf8ca);

  /// Solid Medal icon
  ///
  /// https://fontawesome.com/icons/medal?style=solid
  /// award, medal, ribbon, sports medal, star, trophy
  static const IconData medal = IconDataSolid(0xf5a2);

  /// Brands MedApps icon
  ///
  /// https://fontawesome.com/icons/medapps?style=brands
  static const IconData medapps = IconDataBrands(0xf3c6);

  /// Brands Medium icon
  ///
  /// https://fontawesome.com/icons/medium?style=brands
  static const IconData medium = IconDataBrands(0xf23a);

  /// Alias medium-m for icon [medium]
  @Deprecated('Use "medium" instead.')
  static const IconData mediumM = medium;

  /// Brands MRT icon
  ///
  /// https://fontawesome.com/icons/medrt?style=brands
  static const IconData medrt = IconDataBrands(0xf3c8);

  /// Brands Meetup icon
  ///
  /// https://fontawesome.com/icons/meetup?style=brands
  static const IconData meetup = IconDataBrands(0xf2e0);

  /// Brands Megaport icon
  ///
  /// https://fontawesome.com/icons/megaport?style=brands
  static const IconData megaport = IconDataBrands(0xf5a3);

  /// Solid Memory icon
  ///
  /// https://fontawesome.com/icons/memory?style=solid
  /// DIMM, RAM, hardware, storage, technology
  static const IconData memory = IconDataSolid(0xf538);

  /// Brands Mendeley icon
  ///
  /// https://fontawesome.com/icons/mendeley?style=brands
  static const IconData mendeley = IconDataBrands(0xf7b3);

  /// Solid Menorah icon
  ///
  /// https://fontawesome.com/icons/menorah?style=solid
  /// candle, hanukkah, jewish, judaism, light
  static const IconData menorah = IconDataSolid(0xf676);

  /// Solid Mercury icon
  ///
  /// https://fontawesome.com/icons/mercury?style=solid
  /// Mercury, gender, hybrid, transgender
  static const IconData mercury = IconDataSolid(0xf223);

  /// Solid Message icon
  ///
  /// https://fontawesome.com/icons/message?style=solid
  /// bubble, chat, commenting, conversation, feedback, message, note, notification, sms, speech, texting
  static const IconData solidMessage = IconDataSolid(0xf27a);

  /// Alias comment-alt for icon [solidMessage]
  @Deprecated('Use "solidMessage" instead.')
  static const IconData solidCommentAlt = solidMessage;

  /// Regular Message icon
  ///
  /// https://fontawesome.com/icons/message?style=regular
  /// bubble, chat, commenting, conversation, feedback, message, note, notification, sms, speech, texting
  static const IconData message = IconDataRegular(0xf27a);

  /// Alias comment-alt for icon [message]
  @Deprecated('Use "message" instead.')
  static const IconData commentAlt = message;

  /// Brands Meta icon
  ///
  /// https://fontawesome.com/icons/meta?style=brands
  static const IconData meta = IconDataBrands(0xe49b);

  /// Solid Meteor icon
  ///
  /// https://fontawesome.com/icons/meteor?style=solid
  /// armageddon, asteroid, comet, shooting star, space
  static const IconData meteor = IconDataSolid(0xf753);

  /// Brands Micro.blog icon
  ///
  /// https://fontawesome.com/icons/microblog?style=brands
  static const IconData microblog = IconDataBrands(0xe01a);

  /// Solid Microchip icon
  ///
  /// https://fontawesome.com/icons/microchip?style=solid
  /// cpu, hardware, processor, technology
  static const IconData microchip = IconDataSolid(0xf2db);

  /// Solid Microphone icon
  ///
  /// https://fontawesome.com/icons/microphone?style=solid
  /// address, audio, information, podcast, public, record, sing, sound, voice
  static const IconData microphone = IconDataSolid(0xf130);

  /// Solid Microphone Lines icon
  ///
  /// https://fontawesome.com/icons/microphone-lines?style=solid
  /// audio, mic, microphone, music, podcast, record, sing, sound, studio, studio microphone, voice
  static const IconData microphoneLines = IconDataSolid(0xf3c9);

  /// Alias microphone-alt for icon [microphoneLines]
  @Deprecated('Use "microphoneLines" instead.')
  static const IconData microphoneAlt = microphoneLines;

  /// Solid Microphone Lines Slash icon
  ///
  /// https://fontawesome.com/icons/microphone-lines-slash?style=solid
  /// audio, disable, mute, podcast, record, sing, sound, voice
  static const IconData microphoneLinesSlash = IconDataSolid(0xf539);

  /// Alias microphone-alt-slash for icon [microphoneLinesSlash]
  @Deprecated('Use "microphoneLinesSlash" instead.')
  static const IconData microphoneAltSlash = microphoneLinesSlash;

  /// Solid Microphone Slash icon
  ///
  /// https://fontawesome.com/icons/microphone-slash?style=solid
  /// audio, disable, mute, podcast, record, sing, sound, voice
  static const IconData microphoneSlash = IconDataSolid(0xf131);

  /// Solid Microscope icon
  ///
  /// https://fontawesome.com/icons/microscope?style=solid
  /// covid-19, electron, lens, microscope, optics, science, shrink, testing, tool
  static const IconData microscope = IconDataSolid(0xf610);

  /// Brands Microsoft icon
  ///
  /// https://fontawesome.com/icons/microsoft?style=brands
  static const IconData microsoft = IconDataBrands(0xf3ca);

  /// Solid Mill Sign icon
  ///
  /// https://fontawesome.com/icons/mill-sign?style=solid
  /// Mill Sign, currency
  static const IconData millSign = IconDataSolid(0xe1ed);

  /// Solid Minimize icon
  ///
  /// https://fontawesome.com/icons/minimize?style=solid
  /// collapse, fullscreen, minimize, move, resize, shrink, smaller
  static const IconData minimize = IconDataSolid(0xf78c);

  /// Alias compress-arrows-alt for icon [minimize]
  @Deprecated('Use "minimize" instead.')
  static const IconData compressArrowsAlt = minimize;

  /// Solid Minus icon
  ///
  /// https://fontawesome.com/icons/minus?style=solid
  /// En Dash, Minus Sign, collapse, delete, hide, math, minify, minus, negative, remove, sign, trash, −
  static const IconData minus = IconDataSolid(0xf068);

  /// Alias subtract for icon [minus]
  @Deprecated('Use "minus" instead.')
  static const IconData subtract = minus;

  /// Solid Mitten icon
  ///
  /// https://fontawesome.com/icons/mitten?style=solid
  /// clothing, cold, glove, hands, knitted, seasonal, warmth
  static const IconData mitten = IconDataSolid(0xf7b5);

  /// Brands Mix icon
  ///
  /// https://fontawesome.com/icons/mix?style=brands
  static const IconData mix = IconDataBrands(0xf3cb);

  /// Brands Mixcloud icon
  ///
  /// https://fontawesome.com/icons/mixcloud?style=brands
  static const IconData mixcloud = IconDataBrands(0xf289);

  /// Brands Mixer icon
  ///
  /// https://fontawesome.com/icons/mixer?style=brands
  static const IconData mixer = IconDataBrands(0xe056);

  /// Brands Mizuni icon
  ///
  /// https://fontawesome.com/icons/mizuni?style=brands
  static const IconData mizuni = IconDataBrands(0xf3cc);

  /// Solid Mobile icon
  ///
  /// https://fontawesome.com/icons/mobile?style=solid
  /// android, call, cell, cell phone, device, mobile, mobile phone, number, phone, screen, telephone, text
  static const IconData mobile = IconDataSolid(0xf3ce);

  /// Alias mobile-android for icon [mobile]
  @Deprecated('Use "mobile" instead.')
  static const IconData mobileAndroid = mobile;

  /// Alias mobile-phone for icon [mobile]
  @Deprecated('Use "mobile" instead.')
  static const IconData mobilePhone = mobile;

  /// Solid Mobile Button icon
  ///
  /// https://fontawesome.com/icons/mobile-button?style=solid
  /// apple, call, cell phone, device, iphone, number, screen, telephone
  static const IconData mobileButton = IconDataSolid(0xf10b);

  /// Solid Mobile Retro icon
  ///
  /// https://fontawesome.com/icons/mobile-retro?style=solid
  /// cellphone, cellular, phone
  static const IconData mobileRetro = IconDataSolid(0xe527);

  /// Solid Mobile Screen icon
  ///
  /// https://fontawesome.com/icons/mobile-screen?style=solid
  /// android, call, cell phone, device, number, screen, telephone, text
  static const IconData mobileScreen = IconDataSolid(0xf3cf);

  /// Alias mobile-android-alt for icon [mobileScreen]
  @Deprecated('Use "mobileScreen" instead.')
  static const IconData mobileAndroidAlt = mobileScreen;

  /// Solid Mobile Screen Button icon
  ///
  /// https://fontawesome.com/icons/mobile-screen-button?style=solid
  /// apple, call, cell phone, device, iphone, number, screen, telephone
  static const IconData mobileScreenButton = IconDataSolid(0xf3cd);

  /// Alias mobile-alt for icon [mobileScreenButton]
  @Deprecated('Use "mobileScreenButton" instead.')
  static const IconData mobileAlt = mobileScreenButton;

  /// Brands MODX icon
  ///
  /// https://fontawesome.com/icons/modx?style=brands
  static const IconData modx = IconDataBrands(0xf285);

  /// Brands Monero icon
  ///
  /// https://fontawesome.com/icons/monero?style=brands
  static const IconData monero = IconDataBrands(0xf3d0);

  /// Solid Money Bill icon
  ///
  /// https://fontawesome.com/icons/money-bill?style=solid
  /// buy, cash, checkout, money, payment, price, purchase
  static const IconData moneyBill = IconDataSolid(0xf0d6);

  /// Solid Money Bill 1 icon
  ///
  /// https://fontawesome.com/icons/money-bill-1?style=solid
  /// buy, cash, checkout, money, payment, price, purchase
  static const IconData solidMoneyBill1 = IconDataSolid(0xf3d1);

  /// Alias money-bill-alt for icon [solidMoneyBill1]
  @Deprecated('Use "solidMoneyBill1" instead.')
  static const IconData solidMoneyBillAlt = solidMoneyBill1;

  /// Regular Money Bill 1 icon
  ///
  /// https://fontawesome.com/icons/money-bill-1?style=regular
  /// buy, cash, checkout, money, payment, price, purchase
  static const IconData moneyBill1 = IconDataRegular(0xf3d1);

  /// Alias money-bill-alt for icon [moneyBill1]
  @Deprecated('Use "moneyBill1" instead.')
  static const IconData moneyBillAlt = moneyBill1;

  /// Solid Money Bill 1 Wave icon
  ///
  /// https://fontawesome.com/icons/money-bill-1-wave?style=solid
  /// buy, cash, checkout, money, payment, price, purchase
  static const IconData moneyBill1Wave = IconDataSolid(0xf53b);

  /// Alias money-bill-wave-alt for icon [moneyBill1Wave]
  @Deprecated('Use "moneyBill1Wave" instead.')
  static const IconData moneyBillWaveAlt = moneyBill1Wave;

  /// Solid Money Bill Transfer icon
  ///
  /// https://fontawesome.com/icons/money-bill-transfer?style=solid
  /// bank, conversion, deposit, money, transfer, withdrawal
  static const IconData moneyBillTransfer = IconDataSolid(0xe528);

  /// Solid Money Bill Trend Up icon
  ///
  /// https://fontawesome.com/icons/money-bill-trend-up?style=solid
  /// bank, bonds, inflation, market, stocks, trade
  static const IconData moneyBillTrendUp = IconDataSolid(0xe529);

  /// Solid Money Bill Wave icon
  ///
  /// https://fontawesome.com/icons/money-bill-wave?style=solid
  /// buy, cash, checkout, money, payment, price, purchase
  static const IconData moneyBillWave = IconDataSolid(0xf53a);

  /// Solid Money Bill Wheat icon
  ///
  /// https://fontawesome.com/icons/money-bill-wheat?style=solid
  /// agribusiness, agriculture, farming, food, livelihood, subsidy
  static const IconData moneyBillWheat = IconDataSolid(0xe52a);

  /// Solid Money Bills icon
  ///
  /// https://fontawesome.com/icons/money-bills?style=solid
  /// atm, cash, money, moolah
  static const IconData moneyBills = IconDataSolid(0xe1f3);

  /// Solid Money Check icon
  ///
  /// https://fontawesome.com/icons/money-check?style=solid
  /// bank check, buy, checkout, cheque, money, payment, price, purchase
  static const IconData moneyCheck = IconDataSolid(0xf53c);

  /// Solid Money Check Dollar icon
  ///
  /// https://fontawesome.com/icons/money-check-dollar?style=solid
  /// bank check, buy, checkout, cheque, money, payment, price, purchase
  static const IconData moneyCheckDollar = IconDataSolid(0xf53d);

  /// Alias money-check-alt for icon [moneyCheckDollar]
  @Deprecated('Use "moneyCheckDollar" instead.')
  static const IconData moneyCheckAlt = moneyCheckDollar;

  /// Solid Monument icon
  ///
  /// https://fontawesome.com/icons/monument?style=solid
  /// building, historic, landmark, memorable
  static const IconData monument = IconDataSolid(0xf5a6);

  /// Solid Moon icon
  ///
  /// https://fontawesome.com/icons/moon?style=solid
  /// Power Sleep Symbol, contrast, crescent, crescent moon, dark, lunar, moon, night
  static const IconData solidMoon = IconDataSolid(0xf186);

  /// Regular Moon icon
  ///
  /// https://fontawesome.com/icons/moon?style=regular
  /// Power Sleep Symbol, contrast, crescent, crescent moon, dark, lunar, moon, night
  static const IconData moon = IconDataRegular(0xf186);

  /// Solid Mortar Pestle icon
  ///
  /// https://fontawesome.com/icons/mortar-pestle?style=solid
  /// crush, culinary, grind, medical, mix, pharmacy, prescription, spices
  static const IconData mortarPestle = IconDataSolid(0xf5a7);

  /// Solid Mosque icon
  ///
  /// https://fontawesome.com/icons/mosque?style=solid
  /// Muslim, building, islam, landmark, mosque, muslim, religion
  static const IconData mosque = IconDataSolid(0xf678);

  /// Solid Mosquito icon
  ///
  /// https://fontawesome.com/icons/mosquito?style=solid
  /// bite, bug, mosquito, west nile
  static const IconData mosquito = IconDataSolid(0xe52b);

  /// Solid Mosquito Net icon
  ///
  /// https://fontawesome.com/icons/mosquito-net?style=solid
  /// bite, malaria, mosquito, net
  static const IconData mosquitoNet = IconDataSolid(0xe52c);

  /// Solid Motorcycle icon
  ///
  /// https://fontawesome.com/icons/motorcycle?style=solid
  /// bike, machine, motorcycle, racing, transportation, vehicle
  static const IconData motorcycle = IconDataSolid(0xf21c);

  /// Solid Mound icon
  ///
  /// https://fontawesome.com/icons/mound?style=solid
  /// barrier, hill, pitcher, speedbump
  static const IconData mound = IconDataSolid(0xe52d);

  /// Solid Mountain icon
  ///
  /// https://fontawesome.com/icons/mountain?style=solid
  /// cold, glacier, hiking, hill, landscape, mountain, snow, snow-capped mountain, travel, view
  static const IconData mountain = IconDataSolid(0xf6fc);

  /// Solid Mountain City icon
  ///
  /// https://fontawesome.com/icons/mountain-city?style=solid
  /// location, rural, urban
  static const IconData mountainCity = IconDataSolid(0xe52e);

  /// Solid Mountain Sun icon
  ///
  /// https://fontawesome.com/icons/mountain-sun?style=solid
  /// country, hiking, landscape, rural, travel, view
  static const IconData mountainSun = IconDataSolid(0xe52f);

  /// Solid Mug Hot icon
  ///
  /// https://fontawesome.com/icons/mug-hot?style=solid
  /// beverage, caliente, cocoa, coffee, cup, drink, holiday, hot, hot beverage, hot chocolate, steam, steaming, tea, warmth
  static const IconData mugHot = IconDataSolid(0xf7b6);

  /// Solid Mug Saucer icon
  ///
  /// https://fontawesome.com/icons/mug-saucer?style=solid
  /// beverage, breakfast, cafe, drink, fall, morning, mug, seasonal, tea
  static const IconData mugSaucer = IconDataSolid(0xf0f4);

  /// Alias coffee for icon [mugSaucer]
  @Deprecated('Use "mugSaucer" instead.')
  static const IconData coffee = mugSaucer;

  /// Solid Music icon
  ///
  /// https://fontawesome.com/icons/music?style=solid
  /// lyrics, melody, music, musical note, note, sing, sound
  static const IconData music = IconDataSolid(0xf001);

  /// Solid N icon
  ///
  /// https://fontawesome.com/icons/n?style=solid
  /// Latin Capital Letter N, Latin Small Letter N, letter, nay, no
  static const IconData n = IconDataSolid(0x4e);

  /// Solid Naira Sign icon
  ///
  /// https://fontawesome.com/icons/naira-sign?style=solid
  /// Naira Sign, currency
  static const IconData nairaSign = IconDataSolid(0xe1f6);

  /// Brands Napster icon
  ///
  /// https://fontawesome.com/icons/napster?style=brands
  static const IconData napster = IconDataBrands(0xf3d2);

  /// Brands Neos icon
  ///
  /// https://fontawesome.com/icons/neos?style=brands
  static const IconData neos = IconDataBrands(0xf612);

  /// Solid Network Wired icon
  ///
  /// https://fontawesome.com/icons/network-wired?style=solid
  /// computer, connect, ethernet, internet, intranet
  static const IconData networkWired = IconDataSolid(0xf6ff);

  /// Solid Neuter icon
  ///
  /// https://fontawesome.com/icons/neuter?style=solid
  /// Neuter, gender
  static const IconData neuter = IconDataSolid(0xf22c);

  /// Solid Newspaper icon
  ///
  /// https://fontawesome.com/icons/newspaper?style=solid
  /// article, editorial, headline, journal, journalism, news, newspaper, paper, press
  static const IconData solidNewspaper = IconDataSolid(0xf1ea);

  /// Regular Newspaper icon
  ///
  /// https://fontawesome.com/icons/newspaper?style=regular
  /// article, editorial, headline, journal, journalism, news, newspaper, paper, press
  static const IconData newspaper = IconDataRegular(0xf1ea);

  /// Brands NFC Directional icon
  ///
  /// https://fontawesome.com/icons/nfc-directional?style=brands
  /// connect, data, near field communication, nfc, scan, signal, transfer, wireless
  static const IconData nfcDirectional = IconDataBrands(0xe530);

  /// Brands Nfc Symbol icon
  ///
  /// https://fontawesome.com/icons/nfc-symbol?style=brands
  /// connect, data, near field communication, nfc, scan, signal, transfer, wireless
  static const IconData nfcSymbol = IconDataBrands(0xe531);

  /// Brands Nimblr icon
  ///
  /// https://fontawesome.com/icons/nimblr?style=brands
  static const IconData nimblr = IconDataBrands(0xf5a8);

  /// Brands Node.js icon
  ///
  /// https://fontawesome.com/icons/node?style=brands
  static const IconData node = IconDataBrands(0xf419);

  /// Brands Node.js JS icon
  ///
  /// https://fontawesome.com/icons/node-js?style=brands
  static const IconData nodeJs = IconDataBrands(0xf3d3);

  /// Solid Not Equal icon
  ///
  /// https://fontawesome.com/icons/not-equal?style=solid
  /// arithmetic, compare, math
  static const IconData notEqual = IconDataSolid(0xf53e);

  /// Solid Notdef icon
  ///
  /// https://fontawesome.com/icons/notdef?style=solid
  /// close, missing
  static const IconData notdef = IconDataSolid(0xe1fe);

  /// Solid Note Sticky icon
  ///
  /// https://fontawesome.com/icons/note-sticky?style=solid
  /// message, note, paper, reminder, sticker
  static const IconData solidNoteSticky = IconDataSolid(0xf249);

  /// Alias sticky-note for icon [solidNoteSticky]
  @Deprecated('Use "solidNoteSticky" instead.')
  static const IconData solidStickyNote = solidNoteSticky;

  /// Regular Note Sticky icon
  ///
  /// https://fontawesome.com/icons/note-sticky?style=regular
  /// message, note, paper, reminder, sticker
  static const IconData noteSticky = IconDataRegular(0xf249);

  /// Alias sticky-note for icon [noteSticky]
  @Deprecated('Use "noteSticky" instead.')
  static const IconData stickyNote = noteSticky;

  /// Solid Notes Medical icon
  ///
  /// https://fontawesome.com/icons/notes-medical?style=solid
  /// clipboard, doctor, ehr, health, history, records
  static const IconData notesMedical = IconDataSolid(0xf481);

  /// Brands npm icon
  ///
  /// https://fontawesome.com/icons/npm?style=brands
  static const IconData npm = IconDataBrands(0xf3d4);

  /// Brands NS8 icon
  ///
  /// https://fontawesome.com/icons/ns8?style=brands
  static const IconData ns8 = IconDataBrands(0xf3d5);

  /// Brands Nutritionix icon
  ///
  /// https://fontawesome.com/icons/nutritionix?style=brands
  static const IconData nutritionix = IconDataBrands(0xf3d6);

  /// Solid O icon
  ///
  /// https://fontawesome.com/icons/o?style=solid
  /// Latin Capital Letter O, Latin Small Letter O, letter
  static const IconData o = IconDataSolid(0x4f);

  /// Solid Object Group icon
  ///
  /// https://fontawesome.com/icons/object-group?style=solid
  /// combine, copy, design, merge, select
  static const IconData solidObjectGroup = IconDataSolid(0xf247);

  /// Regular Object Group icon
  ///
  /// https://fontawesome.com/icons/object-group?style=regular
  /// combine, copy, design, merge, select
  static const IconData objectGroup = IconDataRegular(0xf247);

  /// Solid Object Ungroup icon
  ///
  /// https://fontawesome.com/icons/object-ungroup?style=solid
  /// copy, design, merge, select, separate
  static const IconData solidObjectUngroup = IconDataSolid(0xf248);

  /// Regular Object Ungroup icon
  ///
  /// https://fontawesome.com/icons/object-ungroup?style=regular
  /// copy, design, merge, select, separate
  static const IconData objectUngroup = IconDataRegular(0xf248);

  /// Brands Octopus Deploy icon
  ///
  /// https://fontawesome.com/icons/octopus-deploy?style=brands
  static const IconData octopusDeploy = IconDataBrands(0xe082);

  /// Brands Odnoklassniki icon
  ///
  /// https://fontawesome.com/icons/odnoklassniki?style=brands
  static const IconData odnoklassniki = IconDataBrands(0xf263);

  /// Brands Odysee icon
  ///
  /// https://fontawesome.com/icons/odysee?style=brands
  static const IconData odysee = IconDataBrands(0xe5c6);

  /// Solid Oil Can icon
  ///
  /// https://fontawesome.com/icons/oil-can?style=solid
  /// auto, crude, gasoline, grease, lubricate, petroleum
  static const IconData oilCan = IconDataSolid(0xf613);

  /// Solid Oil Well icon
  ///
  /// https://fontawesome.com/icons/oil-well?style=solid
  /// drill, oil, rig
  static const IconData oilWell = IconDataSolid(0xe532);

  /// Brands Old Republic icon
  ///
  /// https://fontawesome.com/icons/old-republic?style=brands
  /// politics, star wars
  static const IconData oldRepublic = IconDataBrands(0xf510);

  /// Solid Om icon
  ///
  /// https://fontawesome.com/icons/om?style=solid
  /// Hindu, buddhism, hinduism, jainism, mantra, om, religion
  static const IconData om = IconDataSolid(0xf679);

  /// Brands OpenCart icon
  ///
  /// https://fontawesome.com/icons/opencart?style=brands
  static const IconData opencart = IconDataBrands(0xf23d);

  /// Brands OpenID icon
  ///
  /// https://fontawesome.com/icons/openid?style=brands
  static const IconData openid = IconDataBrands(0xf19b);

  /// Brands Opera icon
  ///
  /// https://fontawesome.com/icons/opera?style=brands
  static const IconData opera = IconDataBrands(0xf26a);

  /// Brands Optin Monster icon
  ///
  /// https://fontawesome.com/icons/optin-monster?style=brands
  static const IconData optinMonster = IconDataBrands(0xf23c);

  /// Brands ORCID icon
  ///
  /// https://fontawesome.com/icons/orcid?style=brands
  static const IconData orcid = IconDataBrands(0xf8d2);

  /// Brands Open Source Initiative icon
  ///
  /// https://fontawesome.com/icons/osi?style=brands
  static const IconData osi = IconDataBrands(0xf41a);

  /// Solid Otter icon
  ///
  /// https://fontawesome.com/icons/otter?style=solid
  /// animal, badger, fauna, fishing, fur, mammal, marten, otter, playful
  static const IconData otter = IconDataSolid(0xf700);

  /// Solid Outdent icon
  ///
  /// https://fontawesome.com/icons/outdent?style=solid
  /// align, justify, paragraph, tab
  static const IconData outdent = IconDataSolid(0xf03b);

  /// Alias dedent for icon [outdent]
  @Deprecated('Use "outdent" instead.')
  static const IconData dedent = outdent;

  /// Solid P icon
  ///
  /// https://fontawesome.com/icons/p?style=solid
  /// Latin Capital Letter P, Latin Small Letter P, letter
  static const IconData p = IconDataSolid(0x50);

  /// Brands Padlet icon
  ///
  /// https://fontawesome.com/icons/padlet?style=brands
  static const IconData padlet = IconDataBrands(0xe4a0);

  /// Brands page4 Corporation icon
  ///
  /// https://fontawesome.com/icons/page4?style=brands
  static const IconData page4 = IconDataBrands(0xf3d7);

  /// Brands Pagelines icon
  ///
  /// https://fontawesome.com/icons/pagelines?style=brands
  /// eco, flora, leaf, leaves, nature, plant, tree
  static const IconData pagelines = IconDataBrands(0xf18c);

  /// Solid Pager icon
  ///
  /// https://fontawesome.com/icons/pager?style=solid
  /// beeper, cell phone, communication, page, pager
  static const IconData pager = IconDataSolid(0xf815);

  /// Solid Paint Roller icon
  ///
  /// https://fontawesome.com/icons/paint-roller?style=solid
  /// acrylic, art, brush, color, fill, paint, pigment, watercolor
  static const IconData paintRoller = IconDataSolid(0xf5aa);

  /// Solid Paintbrush icon
  ///
  /// https://fontawesome.com/icons/paintbrush?style=solid
  /// acrylic, art, brush, color, fill, paint, paintbrush, painting, pigment, watercolor
  static const IconData paintbrush = IconDataSolid(0xf1fc);

  /// Alias paint-brush for icon [paintbrush]
  @Deprecated('Use "paintbrush" instead.')
  static const IconData paintBrush = paintbrush;

  /// Solid Palette icon
  ///
  /// https://fontawesome.com/icons/palette?style=solid
  /// acrylic, art, artist palette, brush, color, fill, museum, paint, painting, palette, pigment, watercolor
  static const IconData palette = IconDataSolid(0xf53f);

  /// Brands Palfed icon
  ///
  /// https://fontawesome.com/icons/palfed?style=brands
  static const IconData palfed = IconDataBrands(0xf3d8);

  /// Solid Pallet icon
  ///
  /// https://fontawesome.com/icons/pallet?style=solid
  /// archive, box, inventory, shipping, warehouse
  static const IconData pallet = IconDataSolid(0xf482);

  /// Solid Panorama icon
  ///
  /// https://fontawesome.com/icons/panorama?style=solid
  /// image, landscape, photo, wide
  static const IconData panorama = IconDataSolid(0xe209);

  /// Solid Paper Plane icon
  ///
  /// https://fontawesome.com/icons/paper-plane?style=solid
  /// air, float, fold, mail, paper, send
  static const IconData solidPaperPlane = IconDataSolid(0xf1d8);

  /// Regular Paper Plane icon
  ///
  /// https://fontawesome.com/icons/paper-plane?style=regular
  /// air, float, fold, mail, paper, send
  static const IconData paperPlane = IconDataRegular(0xf1d8);

  /// Solid Paperclip icon
  ///
  /// https://fontawesome.com/icons/paperclip?style=solid
  /// attach, attachment, connect, link, papercli, paperclip
  static const IconData paperclip = IconDataSolid(0xf0c6);

  /// Solid Parachute Box icon
  ///
  /// https://fontawesome.com/icons/parachute-box?style=solid
  /// aid, assistance, goods, relief, rescue, supplies
  static const IconData parachuteBox = IconDataSolid(0xf4cd);

  /// Solid Paragraph icon
  ///
  /// https://fontawesome.com/icons/paragraph?style=solid
  /// Pilcrow Sign, edit, format, text, writing
  static const IconData paragraph = IconDataSolid(0xf1dd);

  /// Solid Passport icon
  ///
  /// https://fontawesome.com/icons/passport?style=solid
  /// document, id, identification, issued, travel
  static const IconData passport = IconDataSolid(0xf5ab);

  /// Solid Paste icon
  ///
  /// https://fontawesome.com/icons/paste?style=solid
  /// clipboard, copy, document, paper
  static const IconData solidPaste = IconDataSolid(0xf0ea);

  /// Alias file-clipboard for icon [solidPaste]
  @Deprecated('Use "solidPaste" instead.')
  static const IconData solidFileClipboard = solidPaste;

  /// Regular Paste icon
  ///
  /// https://fontawesome.com/icons/paste?style=regular
  /// clipboard, copy, document, paper
  static const IconData paste = IconDataRegular(0xf0ea);

  /// Alias file-clipboard for icon [paste]
  @Deprecated('Use "paste" instead.')
  static const IconData fileClipboard = paste;

  /// Brands Patreon icon
  ///
  /// https://fontawesome.com/icons/patreon?style=brands
  static const IconData patreon = IconDataBrands(0xf3d9);

  /// Solid Pause icon
  ///
  /// https://fontawesome.com/icons/pause?style=solid
  /// bar, double, hold, pause, pause button, vertical, wait
  static const IconData pause = IconDataSolid(0xf04c);

  /// Solid Paw icon
  ///
  /// https://fontawesome.com/icons/paw?style=solid
  /// animal, cat, dog, pet, print
  static const IconData paw = IconDataSolid(0xf1b0);

  /// Brands Paypal icon
  ///
  /// https://fontawesome.com/icons/paypal?style=brands
  static const IconData paypal = IconDataBrands(0xf1ed);

  /// Solid Peace icon
  ///
  /// https://fontawesome.com/icons/peace?style=solid
  /// peace, peace symbol, serenity, tranquility, truce, war
  static const IconData peace = IconDataSolid(0xf67c);

  /// Solid Pen icon
  ///
  /// https://fontawesome.com/icons/pen?style=solid
  /// ballpoint, design, edit, pen, update, write
  static const IconData pen = IconDataSolid(0xf304);

  /// Solid Pen Clip icon
  ///
  /// https://fontawesome.com/icons/pen-clip?style=solid
  /// design, edit, update, write
  static const IconData penClip = IconDataSolid(0xf305);

  /// Alias pen-alt for icon [penClip]
  @Deprecated('Use "penClip" instead.')
  static const IconData penAlt = penClip;

  /// Solid Pen Fancy icon
  ///
  /// https://fontawesome.com/icons/pen-fancy?style=solid
  /// black nib, design, edit, fountain, fountain pen, nib, pen, update, write
  static const IconData penFancy = IconDataSolid(0xf5ac);

  /// Solid Pen Nib icon
  ///
  /// https://fontawesome.com/icons/pen-nib?style=solid
  /// design, edit, fountain pen, update, write
  static const IconData penNib = IconDataSolid(0xf5ad);

  /// Solid Pen Ruler icon
  ///
  /// https://fontawesome.com/icons/pen-ruler?style=solid
  /// design, draft, draw, pencil
  static const IconData penRuler = IconDataSolid(0xf5ae);

  /// Alias pencil-ruler for icon [penRuler]
  @Deprecated('Use "penRuler" instead.')
  static const IconData pencilRuler = penRuler;

  /// Solid Pen To Square icon
  ///
  /// https://fontawesome.com/icons/pen-to-square?style=solid
  /// edit, pen, pencil, update, write
  static const IconData solidPenToSquare = IconDataSolid(0xf044);

  /// Alias edit for icon [solidPenToSquare]
  @Deprecated('Use "solidPenToSquare" instead.')
  static const IconData solidEdit = solidPenToSquare;

  /// Regular Pen To Square icon
  ///
  /// https://fontawesome.com/icons/pen-to-square?style=regular
  /// edit, pen, pencil, update, write
  static const IconData penToSquare = IconDataRegular(0xf044);

  /// Alias edit for icon [penToSquare]
  @Deprecated('Use "penToSquare" instead.')
  static const IconData edit = penToSquare;

  /// Solid Pencil icon
  ///
  /// https://fontawesome.com/icons/pencil?style=solid
  /// Lower Left Pencil, design, draw, edit, lead, pencil, update, write
  static const IconData pencil = IconDataSolid(0xf303);

  /// Alias pencil-alt for icon [pencil]
  @Deprecated('Use "pencil" instead.')
  static const IconData pencilAlt = pencil;

  /// Solid People Arrows icon
  ///
  /// https://fontawesome.com/icons/people-arrows?style=solid
  /// distance, isolation, separate, social distancing, users-people
  static const IconData peopleArrows = IconDataSolid(0xe068);

  /// Alias people-arrows-left-right for icon [peopleArrows]
  @Deprecated('Use "peopleArrows" instead.')
  static const IconData peopleArrowsLeftRight = peopleArrows;

  /// Solid People Carry Box icon
  ///
  /// https://fontawesome.com/icons/people-carry-box?style=solid
  /// users-people
  static const IconData peopleCarryBox = IconDataSolid(0xf4ce);

  /// Alias people-carry for icon [peopleCarryBox]
  @Deprecated('Use "peopleCarryBox" instead.')
  static const IconData peopleCarry = peopleCarryBox;

  /// Solid People Group icon
  ///
  /// https://fontawesome.com/icons/people-group?style=solid
  /// family, group, team
  static const IconData peopleGroup = IconDataSolid(0xe533);

  /// Solid People Line icon
  ///
  /// https://fontawesome.com/icons/people-line?style=solid
  /// group, need
  static const IconData peopleLine = IconDataSolid(0xe534);

  /// Solid People Pulling icon
  ///
  /// https://fontawesome.com/icons/people-pulling?style=solid
  /// forced return, yanking
  static const IconData peoplePulling = IconDataSolid(0xe535);

  /// Solid People Robbery icon
  ///
  /// https://fontawesome.com/icons/people-robbery?style=solid
  /// criminal, hands up, looting, robbery, steal
  static const IconData peopleRobbery = IconDataSolid(0xe536);

  /// Solid People Roof icon
  ///
  /// https://fontawesome.com/icons/people-roof?style=solid
  /// family, group, manage, people, safe, shelter
  static const IconData peopleRoof = IconDataSolid(0xe537);

  /// Solid Pepper Hot icon
  ///
  /// https://fontawesome.com/icons/pepper-hot?style=solid
  /// buffalo wings, capsicum, chili, chilli, habanero, hot, hot pepper, jalapeno, mexican, pepper, spicy, tabasco, vegetable
  static const IconData pepperHot = IconDataSolid(0xf816);

  /// Brands PerByte icon
  ///
  /// https://fontawesome.com/icons/perbyte?style=brands
  static const IconData perbyte = IconDataBrands(0xe083);

  /// Solid Percent icon
  ///
  /// https://fontawesome.com/icons/percent?style=solid
  /// Percent Sign, discount, fraction, proportion, rate, ratio
  static const IconData percent = IconDataSolid(0x25);

  /// Alias percentage for icon [percent]
  @Deprecated('Use "percent" instead.')
  static const IconData percentage = percent;

  /// Brands Periscope icon
  ///
  /// https://fontawesome.com/icons/periscope?style=brands
  static const IconData periscope = IconDataBrands(0xf3da);

  /// Solid Person icon
  ///
  /// https://fontawesome.com/icons/person?style=solid
  /// man, person standing, stand, standing, woman
  static const IconData person = IconDataSolid(0xf183);

  /// Alias male for icon [person]
  @Deprecated('Use "person" instead.')
  static const IconData male = person;

  /// Solid Person Arrow Down To Line icon
  ///
  /// https://fontawesome.com/icons/person-arrow-down-to-line?style=solid
  /// ground, indigenous, native
  static const IconData personArrowDownToLine = IconDataSolid(0xe538);

  /// Solid Person Arrow Up From Line icon
  ///
  /// https://fontawesome.com/icons/person-arrow-up-from-line?style=solid
  /// population, rise
  static const IconData personArrowUpFromLine = IconDataSolid(0xe539);

  /// Solid Person Biking icon
  ///
  /// https://fontawesome.com/icons/person-biking?style=solid
  /// bicycle, bike, biking, cyclist, pedal, person biking, summer, wheel
  static const IconData personBiking = IconDataSolid(0xf84a);

  /// Alias biking for icon [personBiking]
  @Deprecated('Use "personBiking" instead.')
  static const IconData biking = personBiking;

  /// Solid Person Booth icon
  ///
  /// https://fontawesome.com/icons/person-booth?style=solid
  /// changing room, curtain, vote, voting
  static const IconData personBooth = IconDataSolid(0xf756);

  /// Solid Person Breastfeeding icon
  ///
  /// https://fontawesome.com/icons/person-breastfeeding?style=solid
  /// baby, child, infant, mother, nutrition, sustenance
  static const IconData personBreastfeeding = IconDataSolid(0xe53a);

  /// Solid Person Burst icon
  ///
  /// https://fontawesome.com/icons/person-burst?style=solid
  /// abuse, accident, crash, explode, violence
  static const IconData personBurst = IconDataSolid(0xe53b);

  /// Solid Person Cane icon
  ///
  /// https://fontawesome.com/icons/person-cane?style=solid
  /// aging, cane, elderly, old, staff
  static const IconData personCane = IconDataSolid(0xe53c);

  /// Solid Person Chalkboard icon
  ///
  /// https://fontawesome.com/icons/person-chalkboard?style=solid
  /// blackboard, instructor, keynote, lesson, presentation, teacher
  static const IconData personChalkboard = IconDataSolid(0xe53d);

  /// Solid Person Circle Check icon
  ///
  /// https://fontawesome.com/icons/person-circle-check?style=solid
  /// approved, not affected, ok, okay
  static const IconData personCircleCheck = IconDataSolid(0xe53e);

  /// Solid Person Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/person-circle-exclamation?style=solid
  /// affected, alert, lost, missing
  static const IconData personCircleExclamation = IconDataSolid(0xe53f);

  /// Solid Person Circle Minus icon
  ///
  /// https://fontawesome.com/icons/person-circle-minus?style=solid
  /// delete, remove
  static const IconData personCircleMinus = IconDataSolid(0xe540);

  /// Solid Person Circle Plus icon
  ///
  /// https://fontawesome.com/icons/person-circle-plus?style=solid
  /// add, found
  static const IconData personCirclePlus = IconDataSolid(0xe541);

  /// Solid Person Circle Question icon
  ///
  /// https://fontawesome.com/icons/person-circle-question?style=solid
  /// lost, missing
  static const IconData personCircleQuestion = IconDataSolid(0xe542);

  /// Solid Person Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/person-circle-xmark?style=solid
  /// dead, removed
  static const IconData personCircleXmark = IconDataSolid(0xe543);

  /// Solid Person Digging icon
  ///
  /// https://fontawesome.com/icons/person-digging?style=solid
  /// bury, construction, debris, dig, men at work
  static const IconData personDigging = IconDataSolid(0xf85e);

  /// Alias digging for icon [personDigging]
  @Deprecated('Use "personDigging" instead.')
  static const IconData digging = personDigging;

  /// Solid Person Dots From Line icon
  ///
  /// https://fontawesome.com/icons/person-dots-from-line?style=solid
  /// allergy, diagnosis
  static const IconData personDotsFromLine = IconDataSolid(0xf470);

  /// Alias diagnoses for icon [personDotsFromLine]
  @Deprecated('Use "personDotsFromLine" instead.')
  static const IconData diagnoses = personDotsFromLine;

  /// Solid Person Dress icon
  ///
  /// https://fontawesome.com/icons/person-dress?style=solid
  /// man, skirt, woman
  static const IconData personDress = IconDataSolid(0xf182);

  /// Alias female for icon [personDress]
  @Deprecated('Use "personDress" instead.')
  static const IconData female = personDress;

  /// Solid Person Dress Burst icon
  ///
  /// https://fontawesome.com/icons/person-dress-burst?style=solid
  /// abuse, accident, crash, explode, violence
  static const IconData personDressBurst = IconDataSolid(0xe544);

  /// Solid Person Drowning icon
  ///
  /// https://fontawesome.com/icons/person-drowning?style=solid
  /// drown, emergency, swim
  static const IconData personDrowning = IconDataSolid(0xe545);

  /// Solid Person Falling icon
  ///
  /// https://fontawesome.com/icons/person-falling?style=solid
  /// accident, fall, trip
  static const IconData personFalling = IconDataSolid(0xe546);

  /// Solid Person Falling Burst icon
  ///
  /// https://fontawesome.com/icons/person-falling-burst?style=solid
  /// accident, crash, death, fall, homicide, murder
  static const IconData personFallingBurst = IconDataSolid(0xe547);

  /// Solid Person Half Dress icon
  ///
  /// https://fontawesome.com/icons/person-half-dress?style=solid
  /// gender, man, restroom, transgender, woman
  static const IconData personHalfDress = IconDataSolid(0xe548);

  /// Solid Person Harassing icon
  ///
  /// https://fontawesome.com/icons/person-harassing?style=solid
  /// abuse, scream, shame, shout, yell
  static const IconData personHarassing = IconDataSolid(0xe549);

  /// Solid Person Hiking icon
  ///
  /// https://fontawesome.com/icons/person-hiking?style=solid
  /// autumn, fall, hike, mountain, outdoors, summer, walk
  static const IconData personHiking = IconDataSolid(0xf6ec);

  /// Alias hiking for icon [personHiking]
  @Deprecated('Use "personHiking" instead.')
  static const IconData hiking = personHiking;

  /// Solid Person Military Pointing icon
  ///
  /// https://fontawesome.com/icons/person-military-pointing?style=solid
  /// army, customs, guard
  static const IconData personMilitaryPointing = IconDataSolid(0xe54a);

  /// Solid Person Military Rifle icon
  ///
  /// https://fontawesome.com/icons/person-military-rifle?style=solid
  /// armed forces, army, military, rifle, war
  static const IconData personMilitaryRifle = IconDataSolid(0xe54b);

  /// Solid Person Military To Person icon
  ///
  /// https://fontawesome.com/icons/person-military-to-person?style=solid
  /// civilian, coordination, military
  static const IconData personMilitaryToPerson = IconDataSolid(0xe54c);

  /// Solid Person Praying icon
  ///
  /// https://fontawesome.com/icons/person-praying?style=solid
  /// kneel, place of worship, religion, thank, worship
  static const IconData personPraying = IconDataSolid(0xf683);

  /// Alias pray for icon [personPraying]
  @Deprecated('Use "personPraying" instead.')
  static const IconData pray = personPraying;

  /// Solid Person Pregnant icon
  ///
  /// https://fontawesome.com/icons/person-pregnant?style=solid
  /// baby, birth, child, pregnant, pregnant woman, woman
  static const IconData personPregnant = IconDataSolid(0xe31e);

  /// Solid Person Rays icon
  ///
  /// https://fontawesome.com/icons/person-rays?style=solid
  /// affected, focus, shine
  static const IconData personRays = IconDataSolid(0xe54d);

  /// Solid Person Rifle icon
  ///
  /// https://fontawesome.com/icons/person-rifle?style=solid
  /// army, combatant, gun, military, rifle, war
  static const IconData personRifle = IconDataSolid(0xe54e);

  /// Solid Person Running icon
  ///
  /// https://fontawesome.com/icons/person-running?style=solid
  /// exit, flee, marathon, person running, race, running
  static const IconData personRunning = IconDataSolid(0xf70c);

  /// Alias running for icon [personRunning]
  @Deprecated('Use "personRunning" instead.')
  static const IconData running = personRunning;

  /// Solid Person Shelter icon
  ///
  /// https://fontawesome.com/icons/person-shelter?style=solid
  /// house, inside, roof, safe, safety, shelter
  static const IconData personShelter = IconDataSolid(0xe54f);

  /// Solid Person Skating icon
  ///
  /// https://fontawesome.com/icons/person-skating?style=solid
  /// figure skating, ice, olympics, rink, skate, winter
  static const IconData personSkating = IconDataSolid(0xf7c5);

  /// Alias skating for icon [personSkating]
  @Deprecated('Use "personSkating" instead.')
  static const IconData skating = personSkating;

  /// Solid Person Skiing icon
  ///
  /// https://fontawesome.com/icons/person-skiing?style=solid
  /// downhill, olympics, ski, skier, snow, winter
  static const IconData personSkiing = IconDataSolid(0xf7c9);

  /// Alias skiing for icon [personSkiing]
  @Deprecated('Use "personSkiing" instead.')
  static const IconData skiing = personSkiing;

  /// Solid Person Skiing Nordic icon
  ///
  /// https://fontawesome.com/icons/person-skiing-nordic?style=solid
  /// cross country, olympics, winter
  static const IconData personSkiingNordic = IconDataSolid(0xf7ca);

  /// Alias skiing-nordic for icon [personSkiingNordic]
  @Deprecated('Use "personSkiingNordic" instead.')
  static const IconData skiingNordic = personSkiingNordic;

  /// Solid Person Snowboarding icon
  ///
  /// https://fontawesome.com/icons/person-snowboarding?style=solid
  /// olympics, ski, snow, snowboard, snowboarder, winter
  static const IconData personSnowboarding = IconDataSolid(0xf7ce);

  /// Alias snowboarding for icon [personSnowboarding]
  @Deprecated('Use "personSnowboarding" instead.')
  static const IconData snowboarding = personSnowboarding;

  /// Solid Person Swimming icon
  ///
  /// https://fontawesome.com/icons/person-swimming?style=solid
  /// ocean, person swimming, pool, sea, swim, water
  static const IconData personSwimming = IconDataSolid(0xf5c4);

  /// Alias swimmer for icon [personSwimming]
  @Deprecated('Use "personSwimming" instead.')
  static const IconData swimmer = personSwimming;

  /// Solid Person Through Window icon
  ///
  /// https://fontawesome.com/icons/person-through-window?style=solid
  /// door, exit, forced entry, leave, robbery, steal, window
  static const IconData personThroughWindow = IconDataSolid(0xe5a9);

  /// Solid Person Walking icon
  ///
  /// https://fontawesome.com/icons/person-walking?style=solid
  /// crosswalk, exercise, hike, move, person walking, walk, walking
  static const IconData personWalking = IconDataSolid(0xf554);

  /// Alias walking for icon [personWalking]
  @Deprecated('Use "personWalking" instead.')
  static const IconData walking = personWalking;

  /// Solid Person Walking Arrow Loop Left icon
  ///
  /// https://fontawesome.com/icons/person-walking-arrow-loop-left?style=solid
  /// population return, return
  static const IconData personWalkingArrowLoopLeft = IconDataSolid(0xe551);

  /// Solid Person Walking Arrow Right icon
  ///
  /// https://fontawesome.com/icons/person-walking-arrow-right?style=solid
  /// exit, internally displaced, leave, refugee
  static const IconData personWalkingArrowRight = IconDataSolid(0xe552);

  /// Solid Person Walking Dashed Line Arrow Right icon
  ///
  /// https://fontawesome.com/icons/person-walking-dashed-line-arrow-right?style=solid
  /// exit, refugee
  static const IconData personWalkingDashedLineArrowRight = IconDataSolid(0xe553);

  /// Solid Person Walking Luggage icon
  ///
  /// https://fontawesome.com/icons/person-walking-luggage?style=solid
  /// bag, baggage, briefcase, carry-on, deployment, rolling
  static const IconData personWalkingLuggage = IconDataSolid(0xe554);

  /// Solid Person Walking With Cane icon
  ///
  /// https://fontawesome.com/icons/person-walking-with-cane?style=solid
  /// blind, cane
  static const IconData personWalkingWithCane = IconDataSolid(0xf29d);

  /// Alias blind for icon [personWalkingWithCane]
  @Deprecated('Use "personWalkingWithCane" instead.')
  static const IconData blind = personWalkingWithCane;

  /// Solid Peseta Sign icon
  ///
  /// https://fontawesome.com/icons/peseta-sign?style=solid
  /// Peseta Sign, currency
  static const IconData pesetaSign = IconDataSolid(0xe221);

  /// Solid Peso Sign icon
  ///
  /// https://fontawesome.com/icons/peso-sign?style=solid
  /// Peso Sign, currency
  static const IconData pesoSign = IconDataSolid(0xe222);

  /// Brands Phabricator icon
  ///
  /// https://fontawesome.com/icons/phabricator?style=brands
  static const IconData phabricator = IconDataBrands(0xf3db);

  /// Brands Phoenix Framework icon
  ///
  /// https://fontawesome.com/icons/phoenix-framework?style=brands
  static const IconData phoenixFramework = IconDataBrands(0xf3dc);

  /// Brands Phoenix Squadron icon
  ///
  /// https://fontawesome.com/icons/phoenix-squadron?style=brands
  static const IconData phoenixSquadron = IconDataBrands(0xf511);

  /// Solid Phone icon
  ///
  /// https://fontawesome.com/icons/phone?style=solid
  /// Left Hand Telephone Receiver, call, earphone, number, phone, receiver, support, telephone, telephone receiver, voice
  static const IconData phone = IconDataSolid(0xf095);

  /// Solid Phone Flip icon
  ///
  /// https://fontawesome.com/icons/phone-flip?style=solid
  /// Right Hand Telephone Receiver, call, earphone, number, support, telephone, voice
  static const IconData phoneFlip = IconDataSolid(0xf879);

  /// Alias phone-alt for icon [phoneFlip]
  @Deprecated('Use "phoneFlip" instead.')
  static const IconData phoneAlt = phoneFlip;

  /// Solid Phone Slash icon
  ///
  /// https://fontawesome.com/icons/phone-slash?style=solid
  /// call, cancel, earphone, mute, number, support, telephone, voice
  static const IconData phoneSlash = IconDataSolid(0xf3dd);

  /// Solid Phone Volume icon
  ///
  /// https://fontawesome.com/icons/phone-volume?style=solid
  /// call, earphone, number, sound, support, telephone, voice, volume-control-phone
  static const IconData phoneVolume = IconDataSolid(0xf2a0);

  /// Alias volume-control-phone for icon [phoneVolume]
  @Deprecated('Use "phoneVolume" instead.')
  static const IconData volumeControlPhone = phoneVolume;

  /// Solid Photo Film icon
  ///
  /// https://fontawesome.com/icons/photo-film?style=solid
  /// av, film, image, library, media
  static const IconData photoFilm = IconDataSolid(0xf87c);

  /// Alias photo-video for icon [photoFilm]
  @Deprecated('Use "photoFilm" instead.')
  static const IconData photoVideo = photoFilm;

  /// Brands PHP icon
  ///
  /// https://fontawesome.com/icons/php?style=brands
  static const IconData php = IconDataBrands(0xf457);

  /// Brands Pied Piper Logo icon
  ///
  /// https://fontawesome.com/icons/pied-piper?style=brands
  static const IconData piedPiper = IconDataBrands(0xf2ae);

  /// Brands Alternate Pied Piper Logo (Old) icon
  ///
  /// https://fontawesome.com/icons/pied-piper-alt?style=brands
  static const IconData piedPiperAlt = IconDataBrands(0xf1a8);

  /// Brands Pied Piper Hat (Old) icon
  ///
  /// https://fontawesome.com/icons/pied-piper-hat?style=brands
  /// clothing
  static const IconData piedPiperHat = IconDataBrands(0xf4e5);

  /// Brands Pied Piper PP Logo (Old) icon
  ///
  /// https://fontawesome.com/icons/pied-piper-pp?style=brands
  static const IconData piedPiperPp = IconDataBrands(0xf1a7);

  /// Solid Piggy Bank icon
  ///
  /// https://fontawesome.com/icons/piggy-bank?style=solid
  /// bank, save, savings
  static const IconData piggyBank = IconDataSolid(0xf4d3);

  /// Solid Pills icon
  ///
  /// https://fontawesome.com/icons/pills?style=solid
  /// drugs, medicine, prescription, tablets
  static const IconData pills = IconDataSolid(0xf484);

  /// Brands Pinterest icon
  ///
  /// https://fontawesome.com/icons/pinterest?style=brands
  static const IconData pinterest = IconDataBrands(0xf0d2);

  /// Brands Pinterest P icon
  ///
  /// https://fontawesome.com/icons/pinterest-p?style=brands
  static const IconData pinterestP = IconDataBrands(0xf231);

  /// Brands Pix icon
  ///
  /// https://fontawesome.com/icons/pix?style=brands
  static const IconData pix = IconDataBrands(0xe43a);

  /// Solid Pizza Slice icon
  ///
  /// https://fontawesome.com/icons/pizza-slice?style=solid
  /// cheese, chicago, italian, mozzarella, new york, pepperoni, pie, slice, teenage mutant ninja turtles, tomato
  static const IconData pizzaSlice = IconDataSolid(0xf818);

  /// Solid Place Of Worship icon
  ///
  /// https://fontawesome.com/icons/place-of-worship?style=solid
  /// building, church, holy, mosque, synagogue
  static const IconData placeOfWorship = IconDataSolid(0xf67f);

  /// Solid Plane icon
  ///
  /// https://fontawesome.com/icons/plane?style=solid
  /// airplane, airport, destination, fly, location, mode, travel, trip
  static const IconData plane = IconDataSolid(0xf072);

  /// Solid Plane Arrival icon
  ///
  /// https://fontawesome.com/icons/plane-arrival?style=solid
  /// aeroplane, airplane, airplane arrival, airport, arrivals, arriving, destination, fly, land, landing, location, mode, travel, trip
  static const IconData planeArrival = IconDataSolid(0xf5af);

  /// Solid Plane Circle Check icon
  ///
  /// https://fontawesome.com/icons/plane-circle-check?style=solid
  /// airplane, airport, flight, fly, not affected, ok, okay, travel
  static const IconData planeCircleCheck = IconDataSolid(0xe555);

  /// Solid Plane Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/plane-circle-exclamation?style=solid
  /// affected, airplane, airport, flight, fly, travel
  static const IconData planeCircleExclamation = IconDataSolid(0xe556);

  /// Solid Plane Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/plane-circle-xmark?style=solid
  /// airplane, airport, destroy, flight, fly, travel
  static const IconData planeCircleXmark = IconDataSolid(0xe557);

  /// Solid Plane Departure icon
  ///
  /// https://fontawesome.com/icons/plane-departure?style=solid
  /// aeroplane, airplane, airplane departure, airport, check-in, departing, departure, departures, destination, fly, location, mode, take off, taking off, travel, trip
  static const IconData planeDeparture = IconDataSolid(0xf5b0);

  /// Solid Plane Lock icon
  ///
  /// https://fontawesome.com/icons/plane-lock?style=solid
  /// airplane, airport, closed, flight, fly, lockdown, quarantine, travel
  static const IconData planeLock = IconDataSolid(0xe558);

  /// Solid Plane Slash icon
  ///
  /// https://fontawesome.com/icons/plane-slash?style=solid
  /// airplane mode, airport, canceled, covid-19, delayed, grounded, travel
  static const IconData planeSlash = IconDataSolid(0xe069);

  /// Solid Plane Up icon
  ///
  /// https://fontawesome.com/icons/plane-up?style=solid
  /// airplane, airport, internet, signal, sky, wifi, wireless
  static const IconData planeUp = IconDataSolid(0xe22d);

  /// Solid Plant Wilt icon
  ///
  /// https://fontawesome.com/icons/plant-wilt?style=solid
  /// drought, planting, vegetation, wilt
  static const IconData plantWilt = IconDataSolid(0xe5aa);

  /// Solid Plate Wheat icon
  ///
  /// https://fontawesome.com/icons/plate-wheat?style=solid
  /// bowl, hunger, rations, wheat
  static const IconData plateWheat = IconDataSolid(0xe55a);

  /// Solid Play icon
  ///
  /// https://fontawesome.com/icons/play?style=solid
  /// arrow, audio, music, play, play button, playing, right, sound, start, triangle, video
  static const IconData play = IconDataSolid(0xf04b);

  /// Brands PlayStation icon
  ///
  /// https://fontawesome.com/icons/playstation?style=brands
  static const IconData playstation = IconDataBrands(0xf3df);

  /// Solid Plug icon
  ///
  /// https://fontawesome.com/icons/plug?style=solid
  /// connect, electric, electric plug, electricity, online, plug, power
  static const IconData plug = IconDataSolid(0xf1e6);

  /// Solid Plug Circle Bolt icon
  ///
  /// https://fontawesome.com/icons/plug-circle-bolt?style=solid
  /// electric, electricity, plug, power
  static const IconData plugCircleBolt = IconDataSolid(0xe55b);

  /// Solid Plug Circle Check icon
  ///
  /// https://fontawesome.com/icons/plug-circle-check?style=solid
  /// electric, electricity, not affected, ok, okay, plug, power
  static const IconData plugCircleCheck = IconDataSolid(0xe55c);

  /// Solid Plug Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/plug-circle-exclamation?style=solid
  /// affected, electric, electricity, plug, power
  static const IconData plugCircleExclamation = IconDataSolid(0xe55d);

  /// Solid Plug Circle Minus icon
  ///
  /// https://fontawesome.com/icons/plug-circle-minus?style=solid
  /// electric, electricity, plug, power
  static const IconData plugCircleMinus = IconDataSolid(0xe55e);

  /// Solid Plug Circle Plus icon
  ///
  /// https://fontawesome.com/icons/plug-circle-plus?style=solid
  /// electric, electricity, plug, power
  static const IconData plugCirclePlus = IconDataSolid(0xe55f);

  /// Solid Plug Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/plug-circle-xmark?style=solid
  /// destroy, electric, electricity, outage, plug, power
  static const IconData plugCircleXmark = IconDataSolid(0xe560);

  /// Solid Plus icon
  ///
  /// https://fontawesome.com/icons/plus?style=solid
  /// +, Plus Sign, add, create, expand, math, new, plus, positive, shape, sign
  static const IconData plus = IconDataSolid(0x2b);

  /// Alias add for icon [plus]
  @Deprecated('Use "plus" instead.')
  static const IconData add = plus;

  /// Solid Plus Minus icon
  ///
  /// https://fontawesome.com/icons/plus-minus?style=solid
  /// Plus-Minus Sign, add, math, subtract
  static const IconData plusMinus = IconDataSolid(0xe43c);

  /// Solid Podcast icon
  ///
  /// https://fontawesome.com/icons/podcast?style=solid
  /// audio, broadcast, music, sound
  static const IconData podcast = IconDataSolid(0xf2ce);

  /// Solid Poo icon
  ///
  /// https://fontawesome.com/icons/poo?style=solid
  /// crap, dung, face, monster, pile of poo, poo, poop, shit, smile, turd
  static const IconData poo = IconDataSolid(0xf2fe);

  /// Solid Poo Storm icon
  ///
  /// https://fontawesome.com/icons/poo-storm?style=solid
  /// bolt, cloud, euphemism, lightning, mess, poop, shit, turd
  static const IconData pooStorm = IconDataSolid(0xf75a);

  /// Alias poo-bolt for icon [pooStorm]
  @Deprecated('Use "pooStorm" instead.')
  static const IconData pooBolt = pooStorm;

  /// Solid Poop icon
  ///
  /// https://fontawesome.com/icons/poop?style=solid
  /// crap, poop, shit, smile, turd
  static const IconData poop = IconDataSolid(0xf619);

  /// Solid Power Off icon
  ///
  /// https://fontawesome.com/icons/power-off?style=solid
  /// Power Symbol, cancel, computer, on, reboot, restart
  static const IconData powerOff = IconDataSolid(0xf011);

  /// Solid Prescription icon
  ///
  /// https://fontawesome.com/icons/prescription?style=solid
  /// drugs, medical, medicine, pharmacy, rx
  static const IconData prescription = IconDataSolid(0xf5b1);

  /// Solid Prescription Bottle icon
  ///
  /// https://fontawesome.com/icons/prescription-bottle?style=solid
  /// drugs, medical, medicine, pharmacy, rx
  static const IconData prescriptionBottle = IconDataSolid(0xf485);

  /// Solid Prescription Bottle Medical icon
  ///
  /// https://fontawesome.com/icons/prescription-bottle-medical?style=solid
  /// drugs, medical, medicine, pharmacy, rx
  static const IconData prescriptionBottleMedical = IconDataSolid(0xf486);

  /// Alias prescription-bottle-alt for icon [prescriptionBottleMedical]
  @Deprecated('Use "prescriptionBottleMedical" instead.')
  static const IconData prescriptionBottleAlt = prescriptionBottleMedical;

  /// Solid Print icon
  ///
  /// https://fontawesome.com/icons/print?style=solid
  /// Print Screen Symbol, Printer Icon, business, computer, copy, document, office, paper, printer
  static const IconData print = IconDataSolid(0xf02f);

  /// Brands Product Hunt icon
  ///
  /// https://fontawesome.com/icons/product-hunt?style=brands
  static const IconData productHunt = IconDataBrands(0xf288);

  /// Solid Pump Medical icon
  ///
  /// https://fontawesome.com/icons/pump-medical?style=solid
  /// anti-bacterial, clean, covid-19, disinfect, hygiene, medical grade, sanitizer, soap
  static const IconData pumpMedical = IconDataSolid(0xe06a);

  /// Solid Pump Soap icon
  ///
  /// https://fontawesome.com/icons/pump-soap?style=solid
  /// anti-bacterial, clean, covid-19, disinfect, hygiene, sanitizer, soap
  static const IconData pumpSoap = IconDataSolid(0xe06b);

  /// Brands Pushed icon
  ///
  /// https://fontawesome.com/icons/pushed?style=brands
  static const IconData pushed = IconDataBrands(0xf3e1);

  /// Solid Puzzle Piece icon
  ///
  /// https://fontawesome.com/icons/puzzle-piece?style=solid
  /// add-on, addon, clue, game, interlocking, jigsaw, piece, puzzle, puzzle piece, section
  static const IconData puzzlePiece = IconDataSolid(0xf12e);

  /// Brands Python icon
  ///
  /// https://fontawesome.com/icons/python?style=brands
  static const IconData python = IconDataBrands(0xf3e2);

  /// Solid Q icon
  ///
  /// https://fontawesome.com/icons/q?style=solid
  /// Latin Capital Letter Q, Latin Small Letter Q, letter
  static const IconData q = IconDataSolid(0x51);

  /// Brands QQ icon
  ///
  /// https://fontawesome.com/icons/qq?style=brands
  static const IconData qq = IconDataBrands(0xf1d6);

  /// Solid Qrcode icon
  ///
  /// https://fontawesome.com/icons/qrcode?style=solid
  /// barcode, info, information, scan
  static const IconData qrcode = IconDataSolid(0xf029);

  /// Solid Question icon
  ///
  /// https://fontawesome.com/icons/question?style=solid
  /// ?, Question Mark, help, information, mark, outlined, punctuation, question, red question mark, support, unknown, white question mark
  static const IconData question = IconDataSolid(0x3f);

  /// Brands QuinScape icon
  ///
  /// https://fontawesome.com/icons/quinscape?style=brands
  static const IconData quinscape = IconDataBrands(0xf459);

  /// Brands Quora icon
  ///
  /// https://fontawesome.com/icons/quora?style=brands
  static const IconData quora = IconDataBrands(0xf2c4);

  /// Solid Quote Left icon
  ///
  /// https://fontawesome.com/icons/quote-left?style=solid
  /// Left Double Quotation Mark, mention, note, phrase, text, type
  static const IconData quoteLeft = IconDataSolid(0xf10d);

  /// Alias quote-left-alt for icon [quoteLeft]
  @Deprecated('Use "quoteLeft" instead.')
  static const IconData quoteLeftAlt = quoteLeft;

  /// Solid Quote Right icon
  ///
  /// https://fontawesome.com/icons/quote-right?style=solid
  /// Right Double Quotation Mark, mention, note, phrase, text, type
  static const IconData quoteRight = IconDataSolid(0xf10e);

  /// Alias quote-right-alt for icon [quoteRight]
  @Deprecated('Use "quoteRight" instead.')
  static const IconData quoteRightAlt = quoteRight;

  /// Solid R icon
  ///
  /// https://fontawesome.com/icons/r?style=solid
  /// Latin Capital Letter R, Latin Small Letter R, letter
  static const IconData r = IconDataSolid(0x52);

  /// Brands R Project icon
  ///
  /// https://fontawesome.com/icons/r-project?style=brands
  static const IconData rProject = IconDataBrands(0xf4f7);

  /// Solid Radiation icon
  ///
  /// https://fontawesome.com/icons/radiation?style=solid
  /// danger, dangerous, deadly, hazard, nuclear, radioactive, warning
  static const IconData radiation = IconDataSolid(0xf7b9);

  /// Solid Radio icon
  ///
  /// https://fontawesome.com/icons/radio?style=solid
  /// am, broadcast, fm, frequency, music, news, radio, receiver, transmitter, tuner, video
  static const IconData radio = IconDataSolid(0xf8d7);

  /// Solid Rainbow icon
  ///
  /// https://fontawesome.com/icons/rainbow?style=solid
  /// gold, leprechaun, prism, rain, rainbow, sky
  static const IconData rainbow = IconDataSolid(0xf75b);

  /// Solid Ranking Star icon
  ///
  /// https://fontawesome.com/icons/ranking-star?style=solid
  /// chart, first place, podium, rank, win
  static const IconData rankingStar = IconDataSolid(0xe561);

  /// Brands Raspberry Pi icon
  ///
  /// https://fontawesome.com/icons/raspberry-pi?style=brands
  static const IconData raspberryPi = IconDataBrands(0xf7bb);

  /// Brands Ravelry icon
  ///
  /// https://fontawesome.com/icons/ravelry?style=brands
  static const IconData ravelry = IconDataBrands(0xf2d9);

  /// Brands React icon
  ///
  /// https://fontawesome.com/icons/react?style=brands
  static const IconData react = IconDataBrands(0xf41b);

  /// Brands ReactEurope icon
  ///
  /// https://fontawesome.com/icons/reacteurope?style=brands
  static const IconData reacteurope = IconDataBrands(0xf75d);

  /// Brands ReadMe icon
  ///
  /// https://fontawesome.com/icons/readme?style=brands
  static const IconData readme = IconDataBrands(0xf4d5);

  /// Brands Rebel Alliance icon
  ///
  /// https://fontawesome.com/icons/rebel?style=brands
  static const IconData rebel = IconDataBrands(0xf1d0);

  /// Solid Receipt icon
  ///
  /// https://fontawesome.com/icons/receipt?style=solid
  /// accounting, bookkeeping, check, evidence, invoice, money, pay, proof, receipt, table
  static const IconData receipt = IconDataSolid(0xf543);

  /// Solid Record Vinyl icon
  ///
  /// https://fontawesome.com/icons/record-vinyl?style=solid
  /// LP, album, analog, music, phonograph, sound
  static const IconData recordVinyl = IconDataSolid(0xf8d9);

  /// Solid Rectangle Ad icon
  ///
  /// https://fontawesome.com/icons/rectangle-ad?style=solid
  /// advertisement, media, newspaper, promotion, publicity
  static const IconData rectangleAd = IconDataSolid(0xf641);

  /// Alias ad for icon [rectangleAd]
  @Deprecated('Use "rectangleAd" instead.')
  static const IconData ad = rectangleAd;

  /// Solid Rectangle List icon
  ///
  /// https://fontawesome.com/icons/rectangle-list?style=solid
  /// checklist, completed, done, finished, ol, todo, ul
  static const IconData solidRectangleList = IconDataSolid(0xf022);

  /// Alias list-alt for icon [solidRectangleList]
  @Deprecated('Use "solidRectangleList" instead.')
  static const IconData solidListAlt = solidRectangleList;

  /// Regular Rectangle List icon
  ///
  /// https://fontawesome.com/icons/rectangle-list?style=regular
  /// checklist, completed, done, finished, ol, todo, ul
  static const IconData rectangleList = IconDataRegular(0xf022);

  /// Alias list-alt for icon [rectangleList]
  @Deprecated('Use "rectangleList" instead.')
  static const IconData listAlt = rectangleList;

  /// Solid Rectangle Xmark icon
  ///
  /// https://fontawesome.com/icons/rectangle-xmark?style=solid
  /// browser, cancel, computer, development
  static const IconData solidRectangleXmark = IconDataSolid(0xf410);

  /// Alias rectangle-times for icon [solidRectangleXmark]
  @Deprecated('Use "solidRectangleXmark" instead.')
  static const IconData solidRectangleTimes = solidRectangleXmark;

  /// Alias times-rectangle for icon [solidRectangleXmark]
  @Deprecated('Use "solidRectangleXmark" instead.')
  static const IconData solidTimesRectangle = solidRectangleXmark;

  /// Alias window-close for icon [solidRectangleXmark]
  @Deprecated('Use "solidRectangleXmark" instead.')
  static const IconData solidWindowClose = solidRectangleXmark;

  /// Regular Rectangle Xmark icon
  ///
  /// https://fontawesome.com/icons/rectangle-xmark?style=regular
  /// browser, cancel, computer, development
  static const IconData rectangleXmark = IconDataRegular(0xf410);

  /// Alias rectangle-times for icon [rectangleXmark]
  @Deprecated('Use "rectangleXmark" instead.')
  static const IconData rectangleTimes = rectangleXmark;

  /// Alias times-rectangle for icon [rectangleXmark]
  @Deprecated('Use "rectangleXmark" instead.')
  static const IconData timesRectangle = rectangleXmark;

  /// Alias window-close for icon [rectangleXmark]
  @Deprecated('Use "rectangleXmark" instead.')
  static const IconData windowClose = rectangleXmark;

  /// Solid Recycle icon
  ///
  /// https://fontawesome.com/icons/recycle?style=solid
  /// Recycling Symbol For Generic Materials, Universal Recycling Symbol, Waste, compost, garbage, recycle, recycling symbol, reuse, trash
  static const IconData recycle = IconDataSolid(0xf1b8);

  /// Brands red river icon
  ///
  /// https://fontawesome.com/icons/red-river?style=brands
  static const IconData redRiver = IconDataBrands(0xf3e3);

  /// Brands reddit Logo icon
  ///
  /// https://fontawesome.com/icons/reddit?style=brands
  static const IconData reddit = IconDataBrands(0xf1a1);

  /// Brands reddit Alien icon
  ///
  /// https://fontawesome.com/icons/reddit-alien?style=brands
  static const IconData redditAlien = IconDataBrands(0xf281);

  /// Brands Redhat icon
  ///
  /// https://fontawesome.com/icons/redhat?style=brands
  /// linux, operating system, os
  static const IconData redhat = IconDataBrands(0xf7bc);

  /// Solid Registered icon
  ///
  /// https://fontawesome.com/icons/registered?style=solid
  /// copyright, mark, r, registered, trademark
  static const IconData solidRegistered = IconDataSolid(0xf25d);

  /// Regular Registered icon
  ///
  /// https://fontawesome.com/icons/registered?style=regular
  /// copyright, mark, r, registered, trademark
  static const IconData registered = IconDataRegular(0xf25d);

  /// Brands Renren icon
  ///
  /// https://fontawesome.com/icons/renren?style=brands
  static const IconData renren = IconDataBrands(0xf18b);

  /// Solid Repeat icon
  ///
  /// https://fontawesome.com/icons/repeat?style=solid
  /// arrow, clockwise, flip, reload, repeat, repeat button, rewind, switch
  static const IconData repeat = IconDataSolid(0xf363);

  /// Solid Reply icon
  ///
  /// https://fontawesome.com/icons/reply?style=solid
  /// mail, message, respond
  static const IconData reply = IconDataSolid(0xf3e5);

  /// Alias mail-reply for icon [reply]
  @Deprecated('Use "reply" instead.')
  static const IconData mailReply = reply;

  /// Solid Reply All icon
  ///
  /// https://fontawesome.com/icons/reply-all?style=solid
  /// mail, message, respond
  static const IconData replyAll = IconDataSolid(0xf122);

  /// Alias mail-reply-all for icon [replyAll]
  @Deprecated('Use "replyAll" instead.')
  static const IconData mailReplyAll = replyAll;

  /// Brands replyd icon
  ///
  /// https://fontawesome.com/icons/replyd?style=brands
  static const IconData replyd = IconDataBrands(0xf3e6);

  /// Solid Republican icon
  ///
  /// https://fontawesome.com/icons/republican?style=solid
  /// american, conservative, election, elephant, politics, republican party, right, right-wing, usa
  static const IconData republican = IconDataSolid(0xf75e);

  /// Brands Researchgate icon
  ///
  /// https://fontawesome.com/icons/researchgate?style=brands
  static const IconData researchgate = IconDataBrands(0xf4f8);

  /// Brands Resolving icon
  ///
  /// https://fontawesome.com/icons/resolving?style=brands
  static const IconData resolving = IconDataBrands(0xf3e7);

  /// Solid Restroom icon
  ///
  /// https://fontawesome.com/icons/restroom?style=solid
  /// bathroom, toilet, water closet, wc
  static const IconData restroom = IconDataSolid(0xf7bd);

  /// Solid Retweet icon
  ///
  /// https://fontawesome.com/icons/retweet?style=solid
  /// refresh, reload, share, swap
  static const IconData retweet = IconDataSolid(0xf079);

  /// Brands Rev.io icon
  ///
  /// https://fontawesome.com/icons/rev?style=brands
  static const IconData rev = IconDataBrands(0xf5b2);

  /// Solid Ribbon icon
  ///
  /// https://fontawesome.com/icons/ribbon?style=solid
  /// badge, cause, celebration, lapel, pin, reminder, reminder ribbon, ribbon
  static const IconData ribbon = IconDataSolid(0xf4d6);

  /// Solid Right From Bracket icon
  ///
  /// https://fontawesome.com/icons/right-from-bracket?style=solid
  /// arrow, exit, leave, log out, logout, sign-out
  static const IconData rightFromBracket = IconDataSolid(0xf2f5);

  /// Alias sign-out-alt for icon [rightFromBracket]
  @Deprecated('Use "rightFromBracket" instead.')
  static const IconData signOutAlt = rightFromBracket;

  /// Solid Right Left icon
  ///
  /// https://fontawesome.com/icons/right-left?style=solid
  /// arrow, arrows, exchange, reciprocate, return, swap, transfer
  static const IconData rightLeft = IconDataSolid(0xf362);

  /// Alias exchange-alt for icon [rightLeft]
  @Deprecated('Use "rightLeft" instead.')
  static const IconData exchangeAlt = rightLeft;

  /// Solid Right Long icon
  ///
  /// https://fontawesome.com/icons/right-long?style=solid
  /// forward, long-arrow-right, next
  static const IconData rightLong = IconDataSolid(0xf30b);

  /// Alias long-arrow-alt-right for icon [rightLong]
  @Deprecated('Use "rightLong" instead.')
  static const IconData longArrowAltRight = rightLong;

  /// Solid Right To Bracket icon
  ///
  /// https://fontawesome.com/icons/right-to-bracket?style=solid
  /// arrow, enter, join, log in, login, sign in, sign up, sign-in, signin, signup
  static const IconData rightToBracket = IconDataSolid(0xf2f6);

  /// Alias sign-in-alt for icon [rightToBracket]
  @Deprecated('Use "rightToBracket" instead.')
  static const IconData signInAlt = rightToBracket;

  /// Solid Ring icon
  ///
  /// https://fontawesome.com/icons/ring?style=solid
  /// Dungeons & Dragons, Gollum, band, binding, d&d, dnd, engagement, fantasy, gold, jewelry, marriage, precious
  static const IconData ring = IconDataSolid(0xf70b);

  /// Solid Road icon
  ///
  /// https://fontawesome.com/icons/road?style=solid
  /// highway, map, motorway, pavement, road, route, street, travel
  static const IconData road = IconDataSolid(0xf018);

  /// Solid Road Barrier icon
  ///
  /// https://fontawesome.com/icons/road-barrier?style=solid
  /// block, border, no entry, roadblock
  static const IconData roadBarrier = IconDataSolid(0xe562);

  /// Solid Road Bridge icon
  ///
  /// https://fontawesome.com/icons/road-bridge?style=solid
  /// bridge, infrastructure, road, travel
  static const IconData roadBridge = IconDataSolid(0xe563);

  /// Solid Road Circle Check icon
  ///
  /// https://fontawesome.com/icons/road-circle-check?style=solid
  /// freeway, highway, not affected, ok, okay, pavement, road
  static const IconData roadCircleCheck = IconDataSolid(0xe564);

  /// Solid Road Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/road-circle-exclamation?style=solid
  /// affected, freeway, highway, pavement, road
  static const IconData roadCircleExclamation = IconDataSolid(0xe565);

  /// Solid Road Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/road-circle-xmark?style=solid
  /// destroy, freeway, highway, pavement, road
  static const IconData roadCircleXmark = IconDataSolid(0xe566);

  /// Solid Road Lock icon
  ///
  /// https://fontawesome.com/icons/road-lock?style=solid
  /// closed, freeway, highway, lockdown, pavement, quarantine, road
  static const IconData roadLock = IconDataSolid(0xe567);

  /// Solid Road Spikes icon
  ///
  /// https://fontawesome.com/icons/road-spikes?style=solid
  /// barrier, roadblock, spikes
  static const IconData roadSpikes = IconDataSolid(0xe568);

  /// Solid Robot icon
  ///
  /// https://fontawesome.com/icons/robot?style=solid
  /// android, automate, computer, cyborg, face, monster, robot
  static const IconData robot = IconDataSolid(0xf544);

  /// Solid Rocket icon
  ///
  /// https://fontawesome.com/icons/rocket?style=solid
  /// aircraft, app, jet, launch, nasa, space
  static const IconData rocket = IconDataSolid(0xf135);

  /// Brands Rocket.Chat icon
  ///
  /// https://fontawesome.com/icons/rocketchat?style=brands
  static const IconData rocketchat = IconDataBrands(0xf3e8);

  /// Brands Rockrms icon
  ///
  /// https://fontawesome.com/icons/rockrms?style=brands
  static const IconData rockrms = IconDataBrands(0xf3e9);

  /// Solid Rotate icon
  ///
  /// https://fontawesome.com/icons/rotate?style=solid
  /// anticlockwise, arrow, counterclockwise, counterclockwise arrows button, exchange, refresh, reload, rotate, swap, withershins
  static const IconData rotate = IconDataSolid(0xf2f1);

  /// Alias sync-alt for icon [rotate]
  @Deprecated('Use "rotate" instead.')
  static const IconData syncAlt = rotate;

  /// Solid Rotate Left icon
  ///
  /// https://fontawesome.com/icons/rotate-left?style=solid
  /// back, control z, exchange, oops, return, swap
  static const IconData rotateLeft = IconDataSolid(0xf2ea);

  /// Alias rotate-back for icon [rotateLeft]
  @Deprecated('Use "rotateLeft" instead.')
  static const IconData rotateBack = rotateLeft;

  /// Alias rotate-backward for icon [rotateLeft]
  @Deprecated('Use "rotateLeft" instead.')
  static const IconData rotateBackward = rotateLeft;

  /// Alias undo-alt for icon [rotateLeft]
  @Deprecated('Use "rotateLeft" instead.')
  static const IconData undoAlt = rotateLeft;

  /// Solid Rotate Right icon
  ///
  /// https://fontawesome.com/icons/rotate-right?style=solid
  /// forward, refresh, reload, repeat
  static const IconData rotateRight = IconDataSolid(0xf2f9);

  /// Alias redo-alt for icon [rotateRight]
  @Deprecated('Use "rotateRight" instead.')
  static const IconData redoAlt = rotateRight;

  /// Alias rotate-forward for icon [rotateRight]
  @Deprecated('Use "rotateRight" instead.')
  static const IconData rotateForward = rotateRight;

  /// Solid Route icon
  ///
  /// https://fontawesome.com/icons/route?style=solid
  /// directions, navigation, travel
  static const IconData route = IconDataSolid(0xf4d7);

  /// Solid Rss icon
  ///
  /// https://fontawesome.com/icons/rss?style=solid
  /// blog, feed, journal, news, writing
  static const IconData rss = IconDataSolid(0xf09e);

  /// Alias feed for icon [rss]
  @Deprecated('Use "rss" instead.')
  static const IconData feed = rss;

  /// Solid Ruble Sign icon
  ///
  /// https://fontawesome.com/icons/ruble-sign?style=solid
  /// Ruble Sign, currency
  static const IconData rubleSign = IconDataSolid(0xf158);

  /// Alias rouble for icon [rubleSign]
  @Deprecated('Use "rubleSign" instead.')
  static const IconData rouble = rubleSign;

  /// Alias rub for icon [rubleSign]
  @Deprecated('Use "rubleSign" instead.')
  static const IconData rub = rubleSign;

  /// Alias ruble for icon [rubleSign]
  @Deprecated('Use "rubleSign" instead.')
  static const IconData ruble = rubleSign;

  /// Solid Rug icon
  ///
  /// https://fontawesome.com/icons/rug?style=solid
  /// blanket, carpet, rug, textile
  static const IconData rug = IconDataSolid(0xe569);

  /// Solid Ruler icon
  ///
  /// https://fontawesome.com/icons/ruler?style=solid
  /// design, draft, length, measure, planning, ruler, straight edge, straight ruler
  static const IconData ruler = IconDataSolid(0xf545);

  /// Solid Ruler Combined icon
  ///
  /// https://fontawesome.com/icons/ruler-combined?style=solid
  /// design, draft, length, measure, planning
  static const IconData rulerCombined = IconDataSolid(0xf546);

  /// Solid Ruler Horizontal icon
  ///
  /// https://fontawesome.com/icons/ruler-horizontal?style=solid
  /// design, draft, length, measure, planning
  static const IconData rulerHorizontal = IconDataSolid(0xf547);

  /// Solid Ruler Vertical icon
  ///
  /// https://fontawesome.com/icons/ruler-vertical?style=solid
  /// design, draft, length, measure, planning
  static const IconData rulerVertical = IconDataSolid(0xf548);

  /// Solid Rupee Sign icon
  ///
  /// https://fontawesome.com/icons/rupee-sign?style=solid
  /// Rupee Sign, currency
  static const IconData rupeeSign = IconDataSolid(0xf156);

  /// Alias rupee for icon [rupeeSign]
  @Deprecated('Use "rupeeSign" instead.')
  static const IconData rupee = rupeeSign;

  /// Solid Rupiah Sign icon
  ///
  /// https://fontawesome.com/icons/rupiah-sign?style=solid
  /// currency
  static const IconData rupiahSign = IconDataSolid(0xe23d);

  /// Brands Rust icon
  ///
  /// https://fontawesome.com/icons/rust?style=brands
  static const IconData rust = IconDataBrands(0xe07a);

  /// Solid S icon
  ///
  /// https://fontawesome.com/icons/s?style=solid
  /// Latin Capital Letter S, Latin Small Letter S, letter
  static const IconData s = IconDataSolid(0x53);

  /// Solid Sack Dollar icon
  ///
  /// https://fontawesome.com/icons/sack-dollar?style=solid
  /// bag, burlap, cash, dollar, money, money bag, moneybag, robber, santa, usd
  static const IconData sackDollar = IconDataSolid(0xf81d);

  /// Solid Sack Xmark icon
  ///
  /// https://fontawesome.com/icons/sack-xmark?style=solid
  /// bag, burlap, rations
  static const IconData sackXmark = IconDataSolid(0xe56a);

  /// Brands Safari icon
  ///
  /// https://fontawesome.com/icons/safari?style=brands
  /// browser
  static const IconData safari = IconDataBrands(0xf267);

  /// Solid Sailboat icon
  ///
  /// https://fontawesome.com/icons/sailboat?style=solid
  /// dinghy, mast, sailboat, sailing, yacht
  static const IconData sailboat = IconDataSolid(0xe445);

  /// Brands Salesforce icon
  ///
  /// https://fontawesome.com/icons/salesforce?style=brands
  static const IconData salesforce = IconDataBrands(0xf83b);

  /// Brands Sass icon
  ///
  /// https://fontawesome.com/icons/sass?style=brands
  static const IconData sass = IconDataBrands(0xf41e);

  /// Solid Satellite icon
  ///
  /// https://fontawesome.com/icons/satellite?style=solid
  /// communications, hardware, orbit, satellite, space
  static const IconData satellite = IconDataSolid(0xf7bf);

  /// Solid Satellite Dish icon
  ///
  /// https://fontawesome.com/icons/satellite-dish?style=solid
  /// SETI, antenna, communications, dish, hardware, radar, receiver, satellite, satellite antenna, saucer, signal, space
  static const IconData satelliteDish = IconDataSolid(0xf7c0);

  /// Solid Scale Balanced icon
  ///
  /// https://fontawesome.com/icons/scale-balanced?style=solid
  /// Libra, balance, balance scale, balanced, justice, law, legal, measure, rule, scale, weight, zodiac
  static const IconData scaleBalanced = IconDataSolid(0xf24e);

  /// Alias balance-scale for icon [scaleBalanced]
  @Deprecated('Use "scaleBalanced" instead.')
  static const IconData balanceScale = scaleBalanced;

  /// Solid Scale Unbalanced icon
  ///
  /// https://fontawesome.com/icons/scale-unbalanced?style=solid
  /// justice, legal, measure, unbalanced, weight
  static const IconData scaleUnbalanced = IconDataSolid(0xf515);

  /// Alias balance-scale-left for icon [scaleUnbalanced]
  @Deprecated('Use "scaleUnbalanced" instead.')
  static const IconData balanceScaleLeft = scaleUnbalanced;

  /// Solid Scale Unbalanced Flip icon
  ///
  /// https://fontawesome.com/icons/scale-unbalanced-flip?style=solid
  /// justice, legal, measure, unbalanced, weight
  static const IconData scaleUnbalancedFlip = IconDataSolid(0xf516);

  /// Alias balance-scale-right for icon [scaleUnbalancedFlip]
  @Deprecated('Use "scaleUnbalancedFlip" instead.')
  static const IconData balanceScaleRight = scaleUnbalancedFlip;

  /// Brands SCHLIX icon
  ///
  /// https://fontawesome.com/icons/schlix?style=brands
  static const IconData schlix = IconDataBrands(0xf3ea);

  /// Solid School icon
  ///
  /// https://fontawesome.com/icons/school?style=solid
  /// building, education, learn, school, student, teacher
  static const IconData school = IconDataSolid(0xf549);

  /// Solid School Circle Check icon
  ///
  /// https://fontawesome.com/icons/school-circle-check?style=solid
  /// not affected, ok, okay, schoolhouse
  static const IconData schoolCircleCheck = IconDataSolid(0xe56b);

  /// Solid School Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/school-circle-exclamation?style=solid
  /// affected, schoolhouse
  static const IconData schoolCircleExclamation = IconDataSolid(0xe56c);

  /// Solid School Circle Xmark icon
  ///
  /// https://fontawesome.com/icons/school-circle-xmark?style=solid
  /// destroy, schoolhouse
  static const IconData schoolCircleXmark = IconDataSolid(0xe56d);

  /// Solid School Flag icon
  ///
  /// https://fontawesome.com/icons/school-flag?style=solid
  /// educate, flag, school, schoolhouse
  static const IconData schoolFlag = IconDataSolid(0xe56e);

  /// Solid School Lock icon
  ///
  /// https://fontawesome.com/icons/school-lock?style=solid
  /// closed, lockdown, quarantine, schoolhouse
  static const IconData schoolLock = IconDataSolid(0xe56f);

  /// Solid Scissors icon
  ///
  /// https://fontawesome.com/icons/scissors?style=solid
  /// Black Safety Scissors, White Scissors, clip, cutting, scissors, snip, tool
  static const IconData scissors = IconDataSolid(0xf0c4);

  /// Alias cut for icon [scissors]
  @Deprecated('Use "scissors" instead.')
  static const IconData cut = scissors;

  /// Brands Screenpal icon
  ///
  /// https://fontawesome.com/icons/screenpal?style=brands
  static const IconData screenpal = IconDataBrands(0xe570);

  /// Solid Screwdriver icon
  ///
  /// https://fontawesome.com/icons/screwdriver?style=solid
  /// admin, fix, mechanic, repair, screw, screwdriver, settings, tool
  static const IconData screwdriver = IconDataSolid(0xf54a);

  /// Solid Screwdriver Wrench icon
  ///
  /// https://fontawesome.com/icons/screwdriver-wrench?style=solid
  /// admin, fix, repair, screwdriver, settings, tools, wrench
  static const IconData screwdriverWrench = IconDataSolid(0xf7d9);

  /// Alias tools for icon [screwdriverWrench]
  @Deprecated('Use "screwdriverWrench" instead.')
  static const IconData tools = screwdriverWrench;

  /// Brands Scribd icon
  ///
  /// https://fontawesome.com/icons/scribd?style=brands
  static const IconData scribd = IconDataBrands(0xf28a);

  /// Solid Scroll icon
  ///
  /// https://fontawesome.com/icons/scroll?style=solid
  /// Dungeons & Dragons, announcement, d&d, dnd, fantasy, paper, script, scroll
  static const IconData scroll = IconDataSolid(0xf70e);

  /// Solid Scroll Torah icon
  ///
  /// https://fontawesome.com/icons/scroll-torah?style=solid
  /// book, jewish, judaism, religion, scroll
  static const IconData scrollTorah = IconDataSolid(0xf6a0);

  /// Alias torah for icon [scrollTorah]
  @Deprecated('Use "scrollTorah" instead.')
  static const IconData torah = scrollTorah;

  /// Solid Sd Card icon
  ///
  /// https://fontawesome.com/icons/sd-card?style=solid
  /// image, memory, photo, save
  static const IconData sdCard = IconDataSolid(0xf7c2);

  /// Brands Searchengin icon
  ///
  /// https://fontawesome.com/icons/searchengin?style=brands
  static const IconData searchengin = IconDataBrands(0xf3eb);

  /// Solid Section icon
  ///
  /// https://fontawesome.com/icons/section?style=solid
  /// Section Sign, law, legal, silcrow
  static const IconData section = IconDataSolid(0xe447);

  /// Solid Seedling icon
  ///
  /// https://fontawesome.com/icons/seedling?style=solid
  /// environment, flora, grow, plant, sapling, seedling, vegan, young
  static const IconData seedling = IconDataSolid(0xf4d8);

  /// Alias sprout for icon [seedling]
  @Deprecated('Use "seedling" instead.')
  static const IconData sprout = seedling;

  /// Brands Sellcast icon
  ///
  /// https://fontawesome.com/icons/sellcast?style=brands
  /// eercast
  static const IconData sellcast = IconDataBrands(0xf2da);

  /// Brands Sellsy icon
  ///
  /// https://fontawesome.com/icons/sellsy?style=brands
  static const IconData sellsy = IconDataBrands(0xf213);

  /// Solid Server icon
  ///
  /// https://fontawesome.com/icons/server?style=solid
  /// computer, cpu, database, hardware, network
  static const IconData server = IconDataSolid(0xf233);

  /// Brands Servicestack icon
  ///
  /// https://fontawesome.com/icons/servicestack?style=brands
  static const IconData servicestack = IconDataBrands(0xf3ec);

  /// Solid Shapes icon
  ///
  /// https://fontawesome.com/icons/shapes?style=solid
  /// blocks, build, circle, square, triangle
  static const IconData shapes = IconDataSolid(0xf61f);

  /// Alias triangle-circle-square for icon [shapes]
  @Deprecated('Use "shapes" instead.')
  static const IconData triangleCircleSquare = shapes;

  /// Solid Share icon
  ///
  /// https://fontawesome.com/icons/share?style=solid
  /// forward, save, send, social
  static const IconData share = IconDataSolid(0xf064);

  /// Alias arrow-turn-right for icon [share]
  @Deprecated('Use "share" instead.')
  static const IconData arrowTurnRight = share;

  /// Alias mail-forward for icon [share]
  @Deprecated('Use "share" instead.')
  static const IconData mailForward = share;

  /// Solid Share From Square icon
  ///
  /// https://fontawesome.com/icons/share-from-square?style=solid
  /// forward, save, send, social
  static const IconData solidShareFromSquare = IconDataSolid(0xf14d);

  /// Alias share-square for icon [solidShareFromSquare]
  @Deprecated('Use "solidShareFromSquare" instead.')
  static const IconData solidShareSquare = solidShareFromSquare;

  /// Regular Share From Square icon
  ///
  /// https://fontawesome.com/icons/share-from-square?style=regular
  /// forward, save, send, social
  static const IconData shareFromSquare = IconDataRegular(0xf14d);

  /// Alias share-square for icon [shareFromSquare]
  @Deprecated('Use "shareFromSquare" instead.')
  static const IconData shareSquare = shareFromSquare;

  /// Solid Share Nodes icon
  ///
  /// https://fontawesome.com/icons/share-nodes?style=solid
  /// forward, save, send, social
  static const IconData shareNodes = IconDataSolid(0xf1e0);

  /// Alias share-alt for icon [shareNodes]
  @Deprecated('Use "shareNodes" instead.')
  static const IconData shareAlt = shareNodes;

  /// Solid Sheet Plastic icon
  ///
  /// https://fontawesome.com/icons/sheet-plastic?style=solid
  /// plastic, plastic wrap, protect, tarp, tarpaulin, waterproof
  static const IconData sheetPlastic = IconDataSolid(0xe571);

  /// Solid Shekel Sign icon
  ///
  /// https://fontawesome.com/icons/shekel-sign?style=solid
  /// New Sheqel Sign, currency, ils, money
  static const IconData shekelSign = IconDataSolid(0xf20b);

  /// Alias ils for icon [shekelSign]
  @Deprecated('Use "shekelSign" instead.')
  static const IconData ils = shekelSign;

  /// Alias shekel for icon [shekelSign]
  @Deprecated('Use "shekelSign" instead.')
  static const IconData shekel = shekelSign;

  /// Alias sheqel for icon [shekelSign]
  @Deprecated('Use "shekelSign" instead.')
  static const IconData sheqel = shekelSign;

  /// Alias sheqel-sign for icon [shekelSign]
  @Deprecated('Use "shekelSign" instead.')
  static const IconData sheqelSign = shekelSign;

  /// Solid Shield icon
  ///
  /// https://fontawesome.com/icons/shield?style=solid
  /// achievement, armor, award, block, cleric, defend, defense, holy, paladin, protect, safety, security, shield, weapon, winner
  static const IconData shield = IconDataSolid(0xf132);

  /// Alias shield-blank for icon [shield]
  @Deprecated('Use "shield" instead.')
  static const IconData shieldBlank = shield;

  /// Solid Shield Cat icon
  ///
  /// https://fontawesome.com/icons/shield-cat?style=solid
  /// animal, feline, pet, protect, safety, veterinary
  static const IconData shieldCat = IconDataSolid(0xe572);

  /// Solid Shield Dog icon
  ///
  /// https://fontawesome.com/icons/shield-dog?style=solid
  /// animal, canine, pet, protect, safety, veterinary
  static const IconData shieldDog = IconDataSolid(0xe573);

  /// Solid Shield Halved icon
  ///
  /// https://fontawesome.com/icons/shield-halved?style=solid
  /// achievement, armor, award, block, cleric, defend, defense, holy, paladin, security, shield, weapon, winner
  static const IconData shieldHalved = IconDataSolid(0xf3ed);

  /// Alias shield-alt for icon [shieldHalved]
  @Deprecated('Use "shieldHalved" instead.')
  static const IconData shieldAlt = shieldHalved;

  /// Solid Shield Heart icon
  ///
  /// https://fontawesome.com/icons/shield-heart?style=solid
  /// love, protect, safe, safety, shield
  static const IconData shieldHeart = IconDataSolid(0xe574);

  /// Solid Shield Virus icon
  ///
  /// https://fontawesome.com/icons/shield-virus?style=solid
  /// antibodies, barrier, coronavirus, covid-19, flu, health, infection, pandemic, protect, safety, vaccine
  static const IconData shieldVirus = IconDataSolid(0xe06c);

  /// Solid Ship icon
  ///
  /// https://fontawesome.com/icons/ship?style=solid
  /// boat, passenger, sea, ship, water
  static const IconData ship = IconDataSolid(0xf21a);

  /// Solid Shirt icon
  ///
  /// https://fontawesome.com/icons/shirt?style=solid
  /// clothing, fashion, garment, shirt, short sleeve, t-shirt, tshirt
  static const IconData shirt = IconDataSolid(0xf553);

  /// Alias t-shirt for icon [shirt]
  @Deprecated('Use "shirt" instead.')
  static const IconData tShirt = shirt;

  /// Alias tshirt for icon [shirt]
  @Deprecated('Use "shirt" instead.')
  static const IconData tshirt = shirt;

  /// Brands Shirts in Bulk icon
  ///
  /// https://fontawesome.com/icons/shirtsinbulk?style=brands
  static const IconData shirtsinbulk = IconDataBrands(0xf214);

  /// Solid Shoe Prints icon
  ///
  /// https://fontawesome.com/icons/shoe-prints?style=solid
  /// feet, footprints, steps, walk
  static const IconData shoePrints = IconDataSolid(0xf54b);

  /// Solid Shop icon
  ///
  /// https://fontawesome.com/icons/shop?style=solid
  /// bodega, building, buy, market, purchase, shopping, store
  static const IconData shop = IconDataSolid(0xf54f);

  /// Alias store-alt for icon [shop]
  @Deprecated('Use "shop" instead.')
  static const IconData storeAlt = shop;

  /// Solid Shop Lock icon
  ///
  /// https://fontawesome.com/icons/shop-lock?style=solid
  /// bodega, building, buy, closed, lock, lockdown, market, purchase, quarantine, shop, shopping, store
  static const IconData shopLock = IconDataSolid(0xe4a5);

  /// Solid Shop Slash icon
  ///
  /// https://fontawesome.com/icons/shop-slash?style=solid
  /// building, buy, closed, covid-19, purchase, shopping
  static const IconData shopSlash = IconDataSolid(0xe070);

  /// Alias store-alt-slash for icon [shopSlash]
  @Deprecated('Use "shopSlash" instead.')
  static const IconData storeAltSlash = shopSlash;

  /// Brands Shopify icon
  ///
  /// https://fontawesome.com/icons/shopify?style=brands
  static const IconData shopify = IconDataBrands(0xe057);

  /// Brands Shopware icon
  ///
  /// https://fontawesome.com/icons/shopware?style=brands
  static const IconData shopware = IconDataBrands(0xf5b5);

  /// Solid Shower icon
  ///
  /// https://fontawesome.com/icons/shower?style=solid
  /// bath, clean, faucet, shower, water
  static const IconData shower = IconDataSolid(0xf2cc);

  /// Solid Shrimp icon
  ///
  /// https://fontawesome.com/icons/shrimp?style=solid
  /// allergy, crustacean, prawn, seafood, shellfish, shrimp, tail
  static const IconData shrimp = IconDataSolid(0xe448);

  /// Solid Shuffle icon
  ///
  /// https://fontawesome.com/icons/shuffle?style=solid
  /// arrow, arrows, crossed, shuffle, shuffle tracks button, sort, swap, switch, transfer
  static const IconData shuffle = IconDataSolid(0xf074);

  /// Alias random for icon [shuffle]
  @Deprecated('Use "shuffle" instead.')
  static const IconData random = shuffle;

  /// Solid Shuttle Space icon
  ///
  /// https://fontawesome.com/icons/shuttle-space?style=solid
  /// astronaut, machine, nasa, rocket, space, transportation
  static const IconData shuttleSpace = IconDataSolid(0xf197);

  /// Alias space-shuttle for icon [shuttleSpace]
  @Deprecated('Use "shuttleSpace" instead.')
  static const IconData spaceShuttle = shuttleSpace;

  /// Solid Sign Hanging icon
  ///
  /// https://fontawesome.com/icons/sign-hanging?style=solid
  /// directions, real estate, signage, wayfinding
  static const IconData signHanging = IconDataSolid(0xf4d9);

  /// Alias sign for icon [signHanging]
  @Deprecated('Use "signHanging" instead.')
  static const IconData sign = signHanging;

  /// Solid Signal icon
  ///
  /// https://fontawesome.com/icons/signal?style=solid
  /// antenna, antenna bars, bar, bars, cell, graph, mobile, online, phone, reception, status
  static const IconData signal = IconDataSolid(0xf012);

  /// Alias signal-5 for icon [signal]
  @Deprecated('Use "signal" instead.')
  static const IconData signal5 = signal;

  /// Alias signal-perfect for icon [signal]
  @Deprecated('Use "signal" instead.')
  static const IconData signalPerfect = signal;

  /// Solid Signature icon
  ///
  /// https://fontawesome.com/icons/signature?style=solid
  /// John Hancock, cursive, name, writing
  static const IconData signature = IconDataSolid(0xf5b7);

  /// Solid Signs Post icon
  ///
  /// https://fontawesome.com/icons/signs-post?style=solid
  /// directions, directory, map, signage, wayfinding
  static const IconData signsPost = IconDataSolid(0xf277);

  /// Alias map-signs for icon [signsPost]
  @Deprecated('Use "signsPost" instead.')
  static const IconData mapSigns = signsPost;

  /// Solid Sim Card icon
  ///
  /// https://fontawesome.com/icons/sim-card?style=solid
  /// hard drive, hardware, portable, storage, technology, tiny
  static const IconData simCard = IconDataSolid(0xf7c4);

  /// Brands SimplyBuilt icon
  ///
  /// https://fontawesome.com/icons/simplybuilt?style=brands
  static const IconData simplybuilt = IconDataBrands(0xf215);

  /// Solid Sink icon
  ///
  /// https://fontawesome.com/icons/sink?style=solid
  /// bathroom, covid-19, faucet, kitchen, wash
  static const IconData sink = IconDataSolid(0xe06d);

  /// Brands SISTRIX icon
  ///
  /// https://fontawesome.com/icons/sistrix?style=brands
  static const IconData sistrix = IconDataBrands(0xf3ee);

  /// Solid Sitemap icon
  ///
  /// https://fontawesome.com/icons/sitemap?style=solid
  /// directory, hierarchy, ia, information architecture, organization
  static const IconData sitemap = IconDataSolid(0xf0e8);

  /// Brands Sith icon
  ///
  /// https://fontawesome.com/icons/sith?style=brands
  static const IconData sith = IconDataBrands(0xf512);

  /// Brands Sitrox icon
  ///
  /// https://fontawesome.com/icons/sitrox?style=brands
  static const IconData sitrox = IconDataBrands(0xe44a);

  /// Brands Sketch icon
  ///
  /// https://fontawesome.com/icons/sketch?style=brands
  /// app, design, interface
  static const IconData sketch = IconDataBrands(0xf7c6);

  /// Solid Skull icon
  ///
  /// https://fontawesome.com/icons/skull?style=solid
  /// bones, death, face, fairy tale, monster, skeleton, skull, x-ray, yorick
  static const IconData skull = IconDataSolid(0xf54c);

  /// Solid Skull Crossbones icon
  ///
  /// https://fontawesome.com/icons/skull-crossbones?style=solid
  /// Black Skull and Crossbones, Dungeons & Dragons, alert, bones, crossbones, d&d, danger, dangerous area, dead, deadly, death, dnd, face, fantasy, halloween, holiday, jolly-roger, monster, pirate, poison, skeleton, skull, skull and crossbones, warning
  static const IconData skullCrossbones = IconDataSolid(0xf714);

  /// Brands skyatlas icon
  ///
  /// https://fontawesome.com/icons/skyatlas?style=brands
  static const IconData skyatlas = IconDataBrands(0xf216);

  /// Brands Skype icon
  ///
  /// https://fontawesome.com/icons/skype?style=brands
  static const IconData skype = IconDataBrands(0xf17e);

  /// Brands Slack Logo icon
  ///
  /// https://fontawesome.com/icons/slack?style=brands
  /// anchor, hash, hashtag
  static const IconData slack = IconDataBrands(0xf198);

  /// Alias slack-hash for icon [slack]
  @Deprecated('Use "slack" instead.')
  static const IconData slackHash = slack;

  /// Solid Slash icon
  ///
  /// https://fontawesome.com/icons/slash?style=solid
  /// cancel, close, mute, off, stop, x
  static const IconData slash = IconDataSolid(0xf715);

  /// Solid Sleigh icon
  ///
  /// https://fontawesome.com/icons/sleigh?style=solid
  /// christmas, claus, fly, holiday, santa, sled, snow, xmas
  static const IconData sleigh = IconDataSolid(0xf7cc);

  /// Solid Sliders icon
  ///
  /// https://fontawesome.com/icons/sliders?style=solid
  /// adjust, settings, sliders, toggle
  static const IconData sliders = IconDataSolid(0xf1de);

  /// Alias sliders-h for icon [sliders]
  @Deprecated('Use "sliders" instead.')
  static const IconData slidersH = sliders;

  /// Brands Slideshare icon
  ///
  /// https://fontawesome.com/icons/slideshare?style=brands
  static const IconData slideshare = IconDataBrands(0xf1e7);

  /// Solid Smog icon
  ///
  /// https://fontawesome.com/icons/smog?style=solid
  /// dragon, fog, haze, pollution, smoke, weather
  static const IconData smog = IconDataSolid(0xf75f);

  /// Solid Smoking icon
  ///
  /// https://fontawesome.com/icons/smoking?style=solid
  /// cancer, cigarette, nicotine, smoking, smoking status, tobacco
  static const IconData smoking = IconDataSolid(0xf48d);

  /// Brands Snapchat icon
  ///
  /// https://fontawesome.com/icons/snapchat?style=brands
  static const IconData snapchat = IconDataBrands(0xf2ab);

  /// Alias snapchat-ghost for icon [snapchat]
  @Deprecated('Use "snapchat" instead.')
  static const IconData snapchatGhost = snapchat;

  /// Solid Snowflake icon
  ///
  /// https://fontawesome.com/icons/snowflake?style=solid
  /// Heavy Chevron Snowflake, cold, precipitation, rain, snow, snowfall, snowflake, winter
  static const IconData solidSnowflake = IconDataSolid(0xf2dc);

  /// Regular Snowflake icon
  ///
  /// https://fontawesome.com/icons/snowflake?style=regular
  /// Heavy Chevron Snowflake, cold, precipitation, rain, snow, snowfall, snowflake, winter
  static const IconData snowflake = IconDataRegular(0xf2dc);

  /// Solid Snowman icon
  ///
  /// https://fontawesome.com/icons/snowman?style=solid
  /// cold, decoration, frost, frosty, holiday, snow, snowman, snowman without snow
  static const IconData snowman = IconDataSolid(0xf7d0);

  /// Solid Snowplow icon
  ///
  /// https://fontawesome.com/icons/snowplow?style=solid
  /// clean up, cold, road, storm, winter
  static const IconData snowplow = IconDataSolid(0xf7d2);

  /// Solid Soap icon
  ///
  /// https://fontawesome.com/icons/soap?style=solid
  /// bar, bathing, bubbles, clean, cleaning, covid-19, hygiene, lather, soap, soapdish, wash
  static const IconData soap = IconDataSolid(0xe06e);

  /// Solid Socks icon
  ///
  /// https://fontawesome.com/icons/socks?style=solid
  /// business socks, business time, clothing, feet, flight of the conchords, socks, stocking, wednesday
  static const IconData socks = IconDataSolid(0xf696);

  /// Solid Solar Panel icon
  ///
  /// https://fontawesome.com/icons/solar-panel?style=solid
  /// clean, eco-friendly, energy, green, sun
  static const IconData solarPanel = IconDataSolid(0xf5ba);

  /// Solid Sort icon
  ///
  /// https://fontawesome.com/icons/sort?style=solid
  /// filter, order
  static const IconData sort = IconDataSolid(0xf0dc);

  /// Alias unsorted for icon [sort]
  @Deprecated('Use "sort" instead.')
  static const IconData unsorted = sort;

  /// Solid Sort Down icon
  ///
  /// https://fontawesome.com/icons/sort-down?style=solid
  /// arrow, descending, filter, order, sort-desc
  static const IconData sortDown = IconDataSolid(0xf0dd);

  /// Alias sort-desc for icon [sortDown]
  @Deprecated('Use "sortDown" instead.')
  static const IconData sortDesc = sortDown;

  /// Solid Sort Up icon
  ///
  /// https://fontawesome.com/icons/sort-up?style=solid
  /// arrow, ascending, filter, order, sort-asc
  static const IconData sortUp = IconDataSolid(0xf0de);

  /// Alias sort-asc for icon [sortUp]
  @Deprecated('Use "sortUp" instead.')
  static const IconData sortAsc = sortUp;

  /// Brands SoundCloud icon
  ///
  /// https://fontawesome.com/icons/soundcloud?style=brands
  static const IconData soundcloud = IconDataBrands(0xf1be);

  /// Brands Sourcetree icon
  ///
  /// https://fontawesome.com/icons/sourcetree?style=brands
  static const IconData sourcetree = IconDataBrands(0xf7d3);

  /// Solid Spa icon
  ///
  /// https://fontawesome.com/icons/spa?style=solid
  /// flora, massage, mindfulness, plant, wellness
  static const IconData spa = IconDataSolid(0xf5bb);

  /// Brands Space Awesome icon
  ///
  /// https://fontawesome.com/icons/space-awesome?style=brands
  /// adventure, rocket, ship, shuttle
  static const IconData spaceAwesome = IconDataBrands(0xe5ac);

  /// Solid Spaghetti Monster Flying icon
  ///
  /// https://fontawesome.com/icons/spaghetti-monster-flying?style=solid
  /// agnosticism, atheism, flying spaghetti monster, fsm
  static const IconData spaghettiMonsterFlying = IconDataSolid(0xf67b);

  /// Alias pastafarianism for icon [spaghettiMonsterFlying]
  @Deprecated('Use "spaghettiMonsterFlying" instead.')
  static const IconData pastafarianism = spaghettiMonsterFlying;

  /// Brands Speakap icon
  ///
  /// https://fontawesome.com/icons/speakap?style=brands
  static const IconData speakap = IconDataBrands(0xf3f3);

  /// Brands Speaker Deck icon
  ///
  /// https://fontawesome.com/icons/speaker-deck?style=brands
  static const IconData speakerDeck = IconDataBrands(0xf83c);

  /// Solid Spell Check icon
  ///
  /// https://fontawesome.com/icons/spell-check?style=solid
  /// dictionary, edit, editor, grammar, text
  static const IconData spellCheck = IconDataSolid(0xf891);

  /// Solid Spider icon
  ///
  /// https://fontawesome.com/icons/spider?style=solid
  /// arachnid, bug, charlotte, crawl, eight, halloween, insect, spider
  static const IconData spider = IconDataSolid(0xf717);

  /// Solid Spinner icon
  ///
  /// https://fontawesome.com/icons/spinner?style=solid
  /// circle, loading, progress
  static const IconData spinner = IconDataSolid(0xf110);

  /// Solid Splotch icon
  ///
  /// https://fontawesome.com/icons/splotch?style=solid
  /// Ink, blob, blotch, glob, stain
  static const IconData splotch = IconDataSolid(0xf5bc);

  /// Solid Spoon icon
  ///
  /// https://fontawesome.com/icons/spoon?style=solid
  /// cutlery, dining, scoop, silverware, spoon, tableware
  static const IconData spoon = IconDataSolid(0xf2e5);

  /// Alias utensil-spoon for icon [spoon]
  @Deprecated('Use "spoon" instead.')
  static const IconData utensilSpoon = spoon;

  /// Brands Spotify icon
  ///
  /// https://fontawesome.com/icons/spotify?style=brands
  static const IconData spotify = IconDataBrands(0xf1bc);

  /// Solid Spray Can icon
  ///
  /// https://fontawesome.com/icons/spray-can?style=solid
  /// Paint, aerosol, design, graffiti, tag
  static const IconData sprayCan = IconDataSolid(0xf5bd);

  /// Solid Spray Can Sparkles icon
  ///
  /// https://fontawesome.com/icons/spray-can-sparkles?style=solid
  /// car, clean, deodorize, fresh, pine, scent
  static const IconData sprayCanSparkles = IconDataSolid(0xf5d0);

  /// Alias air-freshener for icon [sprayCanSparkles]
  @Deprecated('Use "sprayCanSparkles" instead.')
  static const IconData airFreshener = sprayCanSparkles;

  /// Solid Square icon
  ///
  /// https://fontawesome.com/icons/square?style=solid
  /// Black Square, black medium square, block, box, geometric, shape, square, white medium square
  static const IconData solidSquare = IconDataSolid(0xf0c8);

  /// Regular Square icon
  ///
  /// https://fontawesome.com/icons/square?style=regular
  /// Black Square, black medium square, block, box, geometric, shape, square, white medium square
  static const IconData square = IconDataRegular(0xf0c8);

  /// Solid Square Arrow Up Right icon
  ///
  /// https://fontawesome.com/icons/square-arrow-up-right?style=solid
  /// diagonal, new, open, send, share
  static const IconData squareArrowUpRight = IconDataSolid(0xf14c);

  /// Alias external-link-square for icon [squareArrowUpRight]
  @Deprecated('Use "squareArrowUpRight" instead.')
  static const IconData externalLinkSquare = squareArrowUpRight;

  /// Brands Behance Square icon
  ///
  /// https://fontawesome.com/icons/square-behance?style=brands
  static const IconData squareBehance = IconDataBrands(0xf1b5);

  /// Alias behance-square for icon [squareBehance]
  @Deprecated('Use "squareBehance" instead.')
  static const IconData behanceSquare = squareBehance;

  /// Solid Square Caret Down icon
  ///
  /// https://fontawesome.com/icons/square-caret-down?style=solid
  /// arrow, caret-square-o-down, dropdown, expand, menu, more, triangle
  static const IconData solidSquareCaretDown = IconDataSolid(0xf150);

  /// Alias caret-square-down for icon [solidSquareCaretDown]
  @Deprecated('Use "solidSquareCaretDown" instead.')
  static const IconData solidCaretSquareDown = solidSquareCaretDown;

  /// Regular Square Caret Down icon
  ///
  /// https://fontawesome.com/icons/square-caret-down?style=regular
  /// arrow, caret-square-o-down, dropdown, expand, menu, more, triangle
  static const IconData squareCaretDown = IconDataRegular(0xf150);

  /// Alias caret-square-down for icon [squareCaretDown]
  @Deprecated('Use "squareCaretDown" instead.')
  static const IconData caretSquareDown = squareCaretDown;

  /// Solid Square Caret Left icon
  ///
  /// https://fontawesome.com/icons/square-caret-left?style=solid
  /// arrow, back, caret-square-o-left, previous, triangle
  static const IconData solidSquareCaretLeft = IconDataSolid(0xf191);

  /// Alias caret-square-left for icon [solidSquareCaretLeft]
  @Deprecated('Use "solidSquareCaretLeft" instead.')
  static const IconData solidCaretSquareLeft = solidSquareCaretLeft;

  /// Regular Square Caret Left icon
  ///
  /// https://fontawesome.com/icons/square-caret-left?style=regular
  /// arrow, back, caret-square-o-left, previous, triangle
  static const IconData squareCaretLeft = IconDataRegular(0xf191);

  /// Alias caret-square-left for icon [squareCaretLeft]
  @Deprecated('Use "squareCaretLeft" instead.')
  static const IconData caretSquareLeft = squareCaretLeft;

  /// Solid Square Caret Right icon
  ///
  /// https://fontawesome.com/icons/square-caret-right?style=solid
  /// arrow, caret-square-o-right, forward, next, triangle
  static const IconData solidSquareCaretRight = IconDataSolid(0xf152);

  /// Alias caret-square-right for icon [solidSquareCaretRight]
  @Deprecated('Use "solidSquareCaretRight" instead.')
  static const IconData solidCaretSquareRight = solidSquareCaretRight;

  /// Regular Square Caret Right icon
  ///
  /// https://fontawesome.com/icons/square-caret-right?style=regular
  /// arrow, caret-square-o-right, forward, next, triangle
  static const IconData squareCaretRight = IconDataRegular(0xf152);

  /// Alias caret-square-right for icon [squareCaretRight]
  @Deprecated('Use "squareCaretRight" instead.')
  static const IconData caretSquareRight = squareCaretRight;

  /// Solid Square Caret Up icon
  ///
  /// https://fontawesome.com/icons/square-caret-up?style=solid
  /// arrow, caret-square-o-up, collapse, triangle, upload
  static const IconData solidSquareCaretUp = IconDataSolid(0xf151);

  /// Alias caret-square-up for icon [solidSquareCaretUp]
  @Deprecated('Use "solidSquareCaretUp" instead.')
  static const IconData solidCaretSquareUp = solidSquareCaretUp;

  /// Regular Square Caret Up icon
  ///
  /// https://fontawesome.com/icons/square-caret-up?style=regular
  /// arrow, caret-square-o-up, collapse, triangle, upload
  static const IconData squareCaretUp = IconDataRegular(0xf151);

  /// Alias caret-square-up for icon [squareCaretUp]
  @Deprecated('Use "squareCaretUp" instead.')
  static const IconData caretSquareUp = squareCaretUp;

  /// Solid Square Check icon
  ///
  /// https://fontawesome.com/icons/square-check?style=solid
  /// accept, agree, box, button, check, check box with check, check mark button, checkmark, confirm, correct, done, mark, ok, select, success, tick, todo, yes, ✓
  static const IconData solidSquareCheck = IconDataSolid(0xf14a);

  /// Alias check-square for icon [solidSquareCheck]
  @Deprecated('Use "solidSquareCheck" instead.')
  static const IconData solidCheckSquare = solidSquareCheck;

  /// Regular Square Check icon
  ///
  /// https://fontawesome.com/icons/square-check?style=regular
  /// accept, agree, box, button, check, check box with check, check mark button, checkmark, confirm, correct, done, mark, ok, select, success, tick, todo, yes, ✓
  static const IconData squareCheck = IconDataRegular(0xf14a);

  /// Alias check-square for icon [squareCheck]
  @Deprecated('Use "squareCheck" instead.')
  static const IconData checkSquare = squareCheck;

  /// Brands Dribbble Square icon
  ///
  /// https://fontawesome.com/icons/square-dribbble?style=brands
  static const IconData squareDribbble = IconDataBrands(0xf397);

  /// Alias dribbble-square for icon [squareDribbble]
  @Deprecated('Use "squareDribbble" instead.')
  static const IconData dribbbleSquare = squareDribbble;

  /// Solid Square Envelope icon
  ///
  /// https://fontawesome.com/icons/square-envelope?style=solid
  /// e-mail, email, letter, mail, message, notification, support
  static const IconData squareEnvelope = IconDataSolid(0xf199);

  /// Alias envelope-square for icon [squareEnvelope]
  @Deprecated('Use "squareEnvelope" instead.')
  static const IconData envelopeSquare = squareEnvelope;

  /// Brands Facebook Square icon
  ///
  /// https://fontawesome.com/icons/square-facebook?style=brands
  /// social network
  static const IconData squareFacebook = IconDataBrands(0xf082);

  /// Alias facebook-square for icon [squareFacebook]
  @Deprecated('Use "squareFacebook" instead.')
  static const IconData facebookSquare = squareFacebook;

  /// Brands Font Awesome in Square icon
  ///
  /// https://fontawesome.com/icons/square-font-awesome?style=brands
  static const IconData squareFontAwesome = IconDataBrands(0xe5ad);

  /// Brands Font Awesome in Square with Stroke Outline icon
  ///
  /// https://fontawesome.com/icons/square-font-awesome-stroke?style=brands
  static const IconData squareFontAwesomeStroke = IconDataBrands(0xf35c);

  /// Alias font-awesome-alt for icon [squareFontAwesomeStroke]
  @Deprecated('Use "squareFontAwesomeStroke" instead.')
  static const IconData fontAwesomeAlt = squareFontAwesomeStroke;

  /// Solid Square Full icon
  ///
  /// https://fontawesome.com/icons/square-full?style=solid
  /// black large square, block, blue, blue square, box, brown, brown square, geometric, green, green square, orange, orange square, purple, purple square, red, red square, shape, square, white large square, yellow, yellow square
  static const IconData solidSquareFull = IconDataSolid(0xf45c);

  /// Regular Square Full icon
  ///
  /// https://fontawesome.com/icons/square-full?style=regular
  /// black large square, block, blue, blue square, box, brown, brown square, geometric, green, green square, orange, orange square, purple, purple square, red, red square, shape, square, white large square, yellow, yellow square
  static const IconData squareFull = IconDataRegular(0xf45c);

  /// Brands Git Square icon
  ///
  /// https://fontawesome.com/icons/square-git?style=brands
  static const IconData squareGit = IconDataBrands(0xf1d2);

  /// Alias git-square for icon [squareGit]
  @Deprecated('Use "squareGit" instead.')
  static const IconData gitSquare = squareGit;

  /// Brands GitHub Square icon
  ///
  /// https://fontawesome.com/icons/square-github?style=brands
  /// octocat
  static const IconData squareGithub = IconDataBrands(0xf092);

  /// Alias github-square for icon [squareGithub]
  @Deprecated('Use "squareGithub" instead.')
  static const IconData githubSquare = squareGithub;

  /// Brands Square Gitlab icon
  ///
  /// https://fontawesome.com/icons/square-gitlab?style=brands
  static const IconData squareGitlab = IconDataBrands(0xe5ae);

  /// Alias gitlab-square for icon [squareGitlab]
  @Deprecated('Use "squareGitlab" instead.')
  static const IconData gitlabSquare = squareGitlab;

  /// Brands Google Plus Square icon
  ///
  /// https://fontawesome.com/icons/square-google-plus?style=brands
  /// social network
  static const IconData squareGooglePlus = IconDataBrands(0xf0d4);

  /// Alias google-plus-square for icon [squareGooglePlus]
  @Deprecated('Use "squareGooglePlus" instead.')
  static const IconData googlePlusSquare = squareGooglePlus;

  /// Solid Square H icon
  ///
  /// https://fontawesome.com/icons/square-h?style=solid
  /// directions, emergency, hospital, hotel, letter, map
  static const IconData squareH = IconDataSolid(0xf0fd);

  /// Alias h-square for icon [squareH]
  @Deprecated('Use "squareH" instead.')
  static const IconData hSquare = squareH;

  /// Brands Hacker News Square icon
  ///
  /// https://fontawesome.com/icons/square-hacker-news?style=brands
  static const IconData squareHackerNews = IconDataBrands(0xf3af);

  /// Alias hacker-news-square for icon [squareHackerNews]
  @Deprecated('Use "squareHackerNews" instead.')
  static const IconData hackerNewsSquare = squareHackerNews;

  /// Brands Instagram Square icon
  ///
  /// https://fontawesome.com/icons/square-instagram?style=brands
  static const IconData squareInstagram = IconDataBrands(0xe055);

  /// Alias instagram-square for icon [squareInstagram]
  @Deprecated('Use "squareInstagram" instead.')
  static const IconData instagramSquare = squareInstagram;

  /// Brands JavaScript (JS) Square icon
  ///
  /// https://fontawesome.com/icons/square-js?style=brands
  static const IconData squareJs = IconDataBrands(0xf3b9);

  /// Alias js-square for icon [squareJs]
  @Deprecated('Use "squareJs" instead.')
  static const IconData jsSquare = squareJs;

  /// Brands last.fm Square icon
  ///
  /// https://fontawesome.com/icons/square-lastfm?style=brands
  static const IconData squareLastfm = IconDataBrands(0xf203);

  /// Alias lastfm-square for icon [squareLastfm]
  @Deprecated('Use "squareLastfm" instead.')
  static const IconData lastfmSquare = squareLastfm;

  /// Solid Square Minus icon
  ///
  /// https://fontawesome.com/icons/square-minus?style=solid
  /// collapse, delete, hide, minify, negative, remove, shape, trash
  static const IconData solidSquareMinus = IconDataSolid(0xf146);

  /// Alias minus-square for icon [solidSquareMinus]
  @Deprecated('Use "solidSquareMinus" instead.')
  static const IconData solidMinusSquare = solidSquareMinus;

  /// Regular Square Minus icon
  ///
  /// https://fontawesome.com/icons/square-minus?style=regular
  /// collapse, delete, hide, minify, negative, remove, shape, trash
  static const IconData squareMinus = IconDataRegular(0xf146);

  /// Alias minus-square for icon [squareMinus]
  @Deprecated('Use "squareMinus" instead.')
  static const IconData minusSquare = squareMinus;

  /// Solid Square Nfi icon
  ///
  /// https://fontawesome.com/icons/square-nfi?style=solid
  /// non-food item, supplies
  static const IconData squareNfi = IconDataSolid(0xe576);

  /// Brands Odnoklassniki Square icon
  ///
  /// https://fontawesome.com/icons/square-odnoklassniki?style=brands
  static const IconData squareOdnoklassniki = IconDataBrands(0xf264);

  /// Alias odnoklassniki-square for icon [squareOdnoklassniki]
  @Deprecated('Use "squareOdnoklassniki" instead.')
  static const IconData odnoklassnikiSquare = squareOdnoklassniki;

  /// Solid Square Parking icon
  ///
  /// https://fontawesome.com/icons/square-parking?style=solid
  /// auto, car, garage, meter, parking
  static const IconData squareParking = IconDataSolid(0xf540);

  /// Alias parking for icon [squareParking]
  @Deprecated('Use "squareParking" instead.')
  static const IconData parking = squareParking;

  /// Solid Square Pen icon
  ///
  /// https://fontawesome.com/icons/square-pen?style=solid
  /// edit, pencil-square, update, write
  static const IconData squarePen = IconDataSolid(0xf14b);

  /// Alias pen-square for icon [squarePen]
  @Deprecated('Use "squarePen" instead.')
  static const IconData penSquare = squarePen;

  /// Alias pencil-square for icon [squarePen]
  @Deprecated('Use "squarePen" instead.')
  static const IconData pencilSquare = squarePen;

  /// Solid Square Person Confined icon
  ///
  /// https://fontawesome.com/icons/square-person-confined?style=solid
  /// captivity, confined
  static const IconData squarePersonConfined = IconDataSolid(0xe577);

  /// Solid Square Phone icon
  ///
  /// https://fontawesome.com/icons/square-phone?style=solid
  /// call, earphone, number, support, telephone, voice
  static const IconData squarePhone = IconDataSolid(0xf098);

  /// Alias phone-square for icon [squarePhone]
  @Deprecated('Use "squarePhone" instead.')
  static const IconData phoneSquare = squarePhone;

  /// Solid Square Phone Flip icon
  ///
  /// https://fontawesome.com/icons/square-phone-flip?style=solid
  /// call, earphone, number, support, telephone, voice
  static const IconData squarePhoneFlip = IconDataSolid(0xf87b);

  /// Alias phone-square-alt for icon [squarePhoneFlip]
  @Deprecated('Use "squarePhoneFlip" instead.')
  static const IconData phoneSquareAlt = squarePhoneFlip;

  /// Brands Pied Piper Square Logo (Old) icon
  ///
  /// https://fontawesome.com/icons/square-pied-piper?style=brands
  static const IconData squarePiedPiper = IconDataBrands(0xe01e);

  /// Alias pied-piper-square for icon [squarePiedPiper]
  @Deprecated('Use "squarePiedPiper" instead.')
  static const IconData piedPiperSquare = squarePiedPiper;

  /// Brands Pinterest Square icon
  ///
  /// https://fontawesome.com/icons/square-pinterest?style=brands
  static const IconData squarePinterest = IconDataBrands(0xf0d3);

  /// Alias pinterest-square for icon [squarePinterest]
  @Deprecated('Use "squarePinterest" instead.')
  static const IconData pinterestSquare = squarePinterest;

  /// Solid Square Plus icon
  ///
  /// https://fontawesome.com/icons/square-plus?style=solid
  /// add, create, expand, new, positive, shape
  static const IconData solidSquarePlus = IconDataSolid(0xf0fe);

  /// Alias plus-square for icon [solidSquarePlus]
  @Deprecated('Use "solidSquarePlus" instead.')
  static const IconData solidPlusSquare = solidSquarePlus;

  /// Regular Square Plus icon
  ///
  /// https://fontawesome.com/icons/square-plus?style=regular
  /// add, create, expand, new, positive, shape
  static const IconData squarePlus = IconDataRegular(0xf0fe);

  /// Alias plus-square for icon [squarePlus]
  @Deprecated('Use "squarePlus" instead.')
  static const IconData plusSquare = squarePlus;

  /// Solid Square Poll Horizontal icon
  ///
  /// https://fontawesome.com/icons/square-poll-horizontal?style=solid
  /// chart, graph, results, survey, trend, vote, voting
  static const IconData squarePollHorizontal = IconDataSolid(0xf682);

  /// Alias poll-h for icon [squarePollHorizontal]
  @Deprecated('Use "squarePollHorizontal" instead.')
  static const IconData pollH = squarePollHorizontal;

  /// Solid Square Poll Vertical icon
  ///
  /// https://fontawesome.com/icons/square-poll-vertical?style=solid
  /// chart, graph, results, survey, trend, vote, voting
  static const IconData squarePollVertical = IconDataSolid(0xf681);

  /// Alias poll for icon [squarePollVertical]
  @Deprecated('Use "squarePollVertical" instead.')
  static const IconData poll = squarePollVertical;

  /// Brands reddit Square icon
  ///
  /// https://fontawesome.com/icons/square-reddit?style=brands
  static const IconData squareReddit = IconDataBrands(0xf1a2);

  /// Alias reddit-square for icon [squareReddit]
  @Deprecated('Use "squareReddit" instead.')
  static const IconData redditSquare = squareReddit;

  /// Solid Square Root Variable icon
  ///
  /// https://fontawesome.com/icons/square-root-variable?style=solid
  /// arithmetic, calculus, division, math
  static const IconData squareRootVariable = IconDataSolid(0xf698);

  /// Alias square-root-alt for icon [squareRootVariable]
  @Deprecated('Use "squareRootVariable" instead.')
  static const IconData squareRootAlt = squareRootVariable;

  /// Solid Square Rss icon
  ///
  /// https://fontawesome.com/icons/square-rss?style=solid
  /// blog, feed, journal, news, writing
  static const IconData squareRss = IconDataSolid(0xf143);

  /// Alias rss-square for icon [squareRss]
  @Deprecated('Use "squareRss" instead.')
  static const IconData rssSquare = squareRss;

  /// Solid Square Share Nodes icon
  ///
  /// https://fontawesome.com/icons/square-share-nodes?style=solid
  /// forward, save, send, social
  static const IconData squareShareNodes = IconDataSolid(0xf1e1);

  /// Alias share-alt-square for icon [squareShareNodes]
  @Deprecated('Use "squareShareNodes" instead.')
  static const IconData shareAltSquare = squareShareNodes;

  /// Brands Snapchat Square icon
  ///
  /// https://fontawesome.com/icons/square-snapchat?style=brands
  static const IconData squareSnapchat = IconDataBrands(0xf2ad);

  /// Alias snapchat-square for icon [squareSnapchat]
  @Deprecated('Use "squareSnapchat" instead.')
  static const IconData snapchatSquare = squareSnapchat;

  /// Brands Steam Square icon
  ///
  /// https://fontawesome.com/icons/square-steam?style=brands
  static const IconData squareSteam = IconDataBrands(0xf1b7);

  /// Alias steam-square for icon [squareSteam]
  @Deprecated('Use "squareSteam" instead.')
  static const IconData steamSquare = squareSteam;

  /// Brands Square Threads icon
  ///
  /// https://fontawesome.com/icons/square-threads?style=brands
  static const IconData squareThreads = IconDataBrands(0xe619);

  /// Brands Tumblr Square icon
  ///
  /// https://fontawesome.com/icons/square-tumblr?style=brands
  static const IconData squareTumblr = IconDataBrands(0xf174);

  /// Alias tumblr-square for icon [squareTumblr]
  @Deprecated('Use "squareTumblr" instead.')
  static const IconData tumblrSquare = squareTumblr;

  /// Brands Square Twitter icon
  ///
  /// https://fontawesome.com/icons/square-twitter?style=brands
  /// social network, tweet
  static const IconData squareTwitter = IconDataBrands(0xf081);

  /// Alias twitter-square for icon [squareTwitter]
  @Deprecated('Use "squareTwitter" instead.')
  static const IconData twitterSquare = squareTwitter;

  /// Solid Square Up Right icon
  ///
  /// https://fontawesome.com/icons/square-up-right?style=solid
  /// arrow, diagonal, direction, external-link-square, intercardinal, new, northeast, open, share, up-right arrow
  static const IconData squareUpRight = IconDataSolid(0xf360);

  /// Alias external-link-square-alt for icon [squareUpRight]
  @Deprecated('Use "squareUpRight" instead.')
  static const IconData externalLinkSquareAlt = squareUpRight;

  /// Brands Viadeo Square icon
  ///
  /// https://fontawesome.com/icons/square-viadeo?style=brands
  static const IconData squareViadeo = IconDataBrands(0xf2aa);

  /// Alias viadeo-square for icon [squareViadeo]
  @Deprecated('Use "squareViadeo" instead.')
  static const IconData viadeoSquare = squareViadeo;

  /// Brands Vimeo Square icon
  ///
  /// https://fontawesome.com/icons/square-vimeo?style=brands
  static const IconData squareVimeo = IconDataBrands(0xf194);

  /// Alias vimeo-square for icon [squareVimeo]
  @Deprecated('Use "squareVimeo" instead.')
  static const IconData vimeoSquare = squareVimeo;

  /// Solid Square Virus icon
  ///
  /// https://fontawesome.com/icons/square-virus?style=solid
  /// coronavirus, covid-19, disease, flu, infection, pandemic
  static const IconData squareVirus = IconDataSolid(0xe578);

  /// Brands What's App Square icon
  ///
  /// https://fontawesome.com/icons/square-whatsapp?style=brands
  static const IconData squareWhatsapp = IconDataBrands(0xf40c);

  /// Alias whatsapp-square for icon [squareWhatsapp]
  @Deprecated('Use "squareWhatsapp" instead.')
  static const IconData whatsappSquare = squareWhatsapp;

  /// Brands Square X Twitter icon
  ///
  /// https://fontawesome.com/icons/square-x-twitter?style=brands
  ///  elon,  x, twitter
  static const IconData squareXTwitter = IconDataBrands(0xe61a);

  /// Brands Xing Square icon
  ///
  /// https://fontawesome.com/icons/square-xing?style=brands
  static const IconData squareXing = IconDataBrands(0xf169);

  /// Alias xing-square for icon [squareXing]
  @Deprecated('Use "squareXing" instead.')
  static const IconData xingSquare = squareXing;

  /// Solid Square Xmark icon
  ///
  /// https://fontawesome.com/icons/square-xmark?style=solid
  /// close, cross, cross mark button, incorrect, mark, notice, notification, notify, problem, square, window, wrong, x, ×
  static const IconData squareXmark = IconDataSolid(0xf2d3);

  /// Alias times-square for icon [squareXmark]
  @Deprecated('Use "squareXmark" instead.')
  static const IconData timesSquare = squareXmark;

  /// Alias xmark-square for icon [squareXmark]
  @Deprecated('Use "squareXmark" instead.')
  static const IconData xmarkSquare = squareXmark;

  /// Brands YouTube Square icon
  ///
  /// https://fontawesome.com/icons/square-youtube?style=brands
  static const IconData squareYoutube = IconDataBrands(0xf431);

  /// Alias youtube-square for icon [squareYoutube]
  @Deprecated('Use "squareYoutube" instead.')
  static const IconData youtubeSquare = squareYoutube;

  /// Brands Squarespace icon
  ///
  /// https://fontawesome.com/icons/squarespace?style=brands
  static const IconData squarespace = IconDataBrands(0xf5be);

  /// Brands Stack Exchange icon
  ///
  /// https://fontawesome.com/icons/stack-exchange?style=brands
  static const IconData stackExchange = IconDataBrands(0xf18d);

  /// Brands Stack Overflow icon
  ///
  /// https://fontawesome.com/icons/stack-overflow?style=brands
  static const IconData stackOverflow = IconDataBrands(0xf16c);

  /// Brands Stackpath icon
  ///
  /// https://fontawesome.com/icons/stackpath?style=brands
  static const IconData stackpath = IconDataBrands(0xf842);

  /// Solid Staff Snake icon
  ///
  /// https://fontawesome.com/icons/staff-snake?style=solid
  /// asclepius, asklepian, health, serpent, wellness
  static const IconData staffSnake = IconDataSolid(0xe579);

  /// Alias rod-asclepius for icon [staffSnake]
  @Deprecated('Use "staffSnake" instead.')
  static const IconData rodAsclepius = staffSnake;

  /// Alias rod-snake for icon [staffSnake]
  @Deprecated('Use "staffSnake" instead.')
  static const IconData rodSnake = staffSnake;

  /// Alias staff-aesculapius for icon [staffSnake]
  @Deprecated('Use "staffSnake" instead.')
  static const IconData staffAesculapius = staffSnake;

  /// Solid Stairs icon
  ///
  /// https://fontawesome.com/icons/stairs?style=solid
  /// exit, steps, up
  static const IconData stairs = IconDataSolid(0xe289);

  /// Solid Stamp icon
  ///
  /// https://fontawesome.com/icons/stamp?style=solid
  /// art, certificate, imprint, rubber, seal
  static const IconData stamp = IconDataSolid(0xf5bf);

  /// Solid Stapler icon
  ///
  /// https://fontawesome.com/icons/stapler?style=solid
  /// desktop, milton, office, paperclip, staple
  static const IconData stapler = IconDataSolid(0xe5af);

  /// Solid Star icon
  ///
  /// https://fontawesome.com/icons/star?style=solid
  /// achievement, award, favorite, important, night, rating, score, star
  static const IconData solidStar = IconDataSolid(0xf005);

  /// Regular Star icon
  ///
  /// https://fontawesome.com/icons/star?style=regular
  /// achievement, award, favorite, important, night, rating, score, star
  static const IconData star = IconDataRegular(0xf005);

  /// Solid Star And Crescent icon
  ///
  /// https://fontawesome.com/icons/star-and-crescent?style=solid
  /// Muslim, islam, muslim, religion, star and crescent
  static const IconData starAndCrescent = IconDataSolid(0xf699);

  /// Solid Star Half icon
  ///
  /// https://fontawesome.com/icons/star-half?style=solid
  /// achievement, award, rating, score, star-half-empty, star-half-full
  static const IconData solidStarHalf = IconDataSolid(0xf089);

  /// Regular Star Half icon
  ///
  /// https://fontawesome.com/icons/star-half?style=regular
  /// achievement, award, rating, score, star-half-empty, star-half-full
  static const IconData starHalf = IconDataRegular(0xf089);

  /// Solid Star Half Stroke icon
  ///
  /// https://fontawesome.com/icons/star-half-stroke?style=solid
  /// achievement, award, rating, score, star-half-empty, star-half-full
  static const IconData solidStarHalfStroke = IconDataSolid(0xf5c0);

  /// Alias star-half-alt for icon [solidStarHalfStroke]
  @Deprecated('Use "solidStarHalfStroke" instead.')
  static const IconData solidStarHalfAlt = solidStarHalfStroke;

  /// Regular Star Half Stroke icon
  ///
  /// https://fontawesome.com/icons/star-half-stroke?style=regular
  /// achievement, award, rating, score, star-half-empty, star-half-full
  static const IconData starHalfStroke = IconDataRegular(0xf5c0);

  /// Alias star-half-alt for icon [starHalfStroke]
  @Deprecated('Use "starHalfStroke" instead.')
  static const IconData starHalfAlt = starHalfStroke;

  /// Solid Star Of David icon
  ///
  /// https://fontawesome.com/icons/star-of-david?style=solid
  /// David, Jew, Jewish, jewish, judaism, religion, star, star of David
  static const IconData starOfDavid = IconDataSolid(0xf69a);

  /// Solid Star Of Life icon
  ///
  /// https://fontawesome.com/icons/star-of-life?style=solid
  /// doctor, emt, first aid, health, medical
  static const IconData starOfLife = IconDataSolid(0xf621);

  /// Brands StayLinked icon
  ///
  /// https://fontawesome.com/icons/staylinked?style=brands
  static const IconData staylinked = IconDataBrands(0xf3f5);

  /// Brands Steam icon
  ///
  /// https://fontawesome.com/icons/steam?style=brands
  static const IconData steam = IconDataBrands(0xf1b6);

  /// Brands Steam Symbol icon
  ///
  /// https://fontawesome.com/icons/steam-symbol?style=brands
  static const IconData steamSymbol = IconDataBrands(0xf3f6);

  /// Solid Sterling Sign icon
  ///
  /// https://fontawesome.com/icons/sterling-sign?style=solid
  /// Pound Sign, currency
  static const IconData sterlingSign = IconDataSolid(0xf154);

  /// Alias gbp for icon [sterlingSign]
  @Deprecated('Use "sterlingSign" instead.')
  static const IconData gbp = sterlingSign;

  /// Alias pound-sign for icon [sterlingSign]
  @Deprecated('Use "sterlingSign" instead.')
  static const IconData poundSign = sterlingSign;

  /// Solid Stethoscope icon
  ///
  /// https://fontawesome.com/icons/stethoscope?style=solid
  /// covid-19, diagnosis, doctor, general practitioner, heart, hospital, infirmary, medicine, office, outpatient, stethoscope
  static const IconData stethoscope = IconDataSolid(0xf0f1);

  /// Brands Sticker Mule icon
  ///
  /// https://fontawesome.com/icons/sticker-mule?style=brands
  static const IconData stickerMule = IconDataBrands(0xf3f7);

  /// Solid Stop icon
  ///
  /// https://fontawesome.com/icons/stop?style=solid
  /// block, box, square, stop, stop button
  static const IconData stop = IconDataSolid(0xf04d);

  /// Solid Stopwatch icon
  ///
  /// https://fontawesome.com/icons/stopwatch?style=solid
  /// clock, reminder, stopwatch, time
  static const IconData stopwatch = IconDataSolid(0xf2f2);

  /// Solid Stopwatch 20 icon
  ///
  /// https://fontawesome.com/icons/stopwatch-20?style=solid
  /// ABCs, countdown, covid-19, happy birthday, i will survive, reminder, seconds, time, timer
  static const IconData stopwatch20 = IconDataSolid(0xe06f);

  /// Solid Store icon
  ///
  /// https://fontawesome.com/icons/store?style=solid
  /// bodega, building, buy, market, purchase, shopping, store
  static const IconData store = IconDataSolid(0xf54e);

  /// Solid Store Slash icon
  ///
  /// https://fontawesome.com/icons/store-slash?style=solid
  /// building, buy, closed, covid-19, purchase, shopping
  static const IconData storeSlash = IconDataSolid(0xe071);

  /// Brands Strava icon
  ///
  /// https://fontawesome.com/icons/strava?style=brands
  static const IconData strava = IconDataBrands(0xf428);

  /// Solid Street View icon
  ///
  /// https://fontawesome.com/icons/street-view?style=solid
  /// directions, location, map, navigation
  static const IconData streetView = IconDataSolid(0xf21d);

  /// Solid Strikethrough icon
  ///
  /// https://fontawesome.com/icons/strikethrough?style=solid
  /// cancel, edit, font, format, text, type
  static const IconData strikethrough = IconDataSolid(0xf0cc);

  /// Brands Stripe icon
  ///
  /// https://fontawesome.com/icons/stripe?style=brands
  static const IconData stripe = IconDataBrands(0xf429);

  /// Brands Stripe S icon
  ///
  /// https://fontawesome.com/icons/stripe-s?style=brands
  static const IconData stripeS = IconDataBrands(0xf42a);

  /// Solid Stroopwafel icon
  ///
  /// https://fontawesome.com/icons/stroopwafel?style=solid
  /// caramel, cookie, dessert, sweets, waffle
  static const IconData stroopwafel = IconDataSolid(0xf551);

  /// Brands Stubber icon
  ///
  /// https://fontawesome.com/icons/stubber?style=brands
  static const IconData stubber = IconDataBrands(0xe5c7);

  /// Brands Studio Vinari icon
  ///
  /// https://fontawesome.com/icons/studiovinari?style=brands
  static const IconData studiovinari = IconDataBrands(0xf3f8);

  /// Brands StumbleUpon Logo icon
  ///
  /// https://fontawesome.com/icons/stumbleupon?style=brands
  static const IconData stumbleupon = IconDataBrands(0xf1a4);

  /// Brands StumbleUpon Circle icon
  ///
  /// https://fontawesome.com/icons/stumbleupon-circle?style=brands
  static const IconData stumbleuponCircle = IconDataBrands(0xf1a3);

  /// Solid Subscript icon
  ///
  /// https://fontawesome.com/icons/subscript?style=solid
  /// edit, font, format, text, type
  static const IconData subscript = IconDataSolid(0xf12c);

  /// Solid Suitcase icon
  ///
  /// https://fontawesome.com/icons/suitcase?style=solid
  /// baggage, luggage, move, packing, suitcase, travel, trip
  static const IconData suitcase = IconDataSolid(0xf0f2);

  /// Solid Suitcase Medical icon
  ///
  /// https://fontawesome.com/icons/suitcase-medical?style=solid
  /// first aid, firstaid, health, help, medical, supply, support
  static const IconData suitcaseMedical = IconDataSolid(0xf0fa);

  /// Alias medkit for icon [suitcaseMedical]
  @Deprecated('Use "suitcaseMedical" instead.')
  static const IconData medkit = suitcaseMedical;

  /// Solid Suitcase Rolling icon
  ///
  /// https://fontawesome.com/icons/suitcase-rolling?style=solid
  /// baggage, luggage, move, suitcase, travel, trip
  static const IconData suitcaseRolling = IconDataSolid(0xf5c1);

  /// Solid Sun icon
  ///
  /// https://fontawesome.com/icons/sun?style=solid
  /// bright, brighten, contrast, day, lighter, rays, sol, solar, star, sun, sunny, weather
  static const IconData solidSun = IconDataSolid(0xf185);

  /// Regular Sun icon
  ///
  /// https://fontawesome.com/icons/sun?style=regular
  /// bright, brighten, contrast, day, lighter, rays, sol, solar, star, sun, sunny, weather
  static const IconData sun = IconDataRegular(0xf185);

  /// Solid Sun Plant Wilt icon
  ///
  /// https://fontawesome.com/icons/sun-plant-wilt?style=solid
  /// arid, droop, drought
  static const IconData sunPlantWilt = IconDataSolid(0xe57a);

  /// Brands Superpowers icon
  ///
  /// https://fontawesome.com/icons/superpowers?style=brands
  static const IconData superpowers = IconDataBrands(0xf2dd);

  /// Solid Superscript icon
  ///
  /// https://fontawesome.com/icons/superscript?style=solid
  /// edit, exponential, font, format, text, type
  static const IconData superscript = IconDataSolid(0xf12b);

  /// Brands Supple icon
  ///
  /// https://fontawesome.com/icons/supple?style=brands
  static const IconData supple = IconDataBrands(0xf3f9);

  /// Brands Suse icon
  ///
  /// https://fontawesome.com/icons/suse?style=brands
  /// linux, operating system, os
  static const IconData suse = IconDataBrands(0xf7d6);

  /// Solid Swatchbook icon
  ///
  /// https://fontawesome.com/icons/swatchbook?style=solid
  /// Pantone, color, design, hue, palette
  static const IconData swatchbook = IconDataSolid(0xf5c3);

  /// Brands Swift icon
  ///
  /// https://fontawesome.com/icons/swift?style=brands
  static const IconData swift = IconDataBrands(0xf8e1);

  /// Brands Symfony icon
  ///
  /// https://fontawesome.com/icons/symfony?style=brands
  static const IconData symfony = IconDataBrands(0xf83d);

  /// Solid Synagogue icon
  ///
  /// https://fontawesome.com/icons/synagogue?style=solid
  /// Jew, Jewish, building, jewish, judaism, religion, star of david, synagogue, temple
  static const IconData synagogue = IconDataSolid(0xf69b);

  /// Solid Syringe icon
  ///
  /// https://fontawesome.com/icons/syringe?style=solid
  /// covid-19, doctor, immunizations, medical, medicine, needle, shot, sick, syringe, vaccinate, vaccine
  static const IconData syringe = IconDataSolid(0xf48e);

  /// Solid T icon
  ///
  /// https://fontawesome.com/icons/t?style=solid
  /// Latin Capital Letter T, Latin Small Letter T, letter
  static const IconData t = IconDataSolid(0x54);

  /// Solid Table icon
  ///
  /// https://fontawesome.com/icons/table?style=solid
  /// data, excel, spreadsheet
  static const IconData table = IconDataSolid(0xf0ce);

  /// Solid Table Cells icon
  ///
  /// https://fontawesome.com/icons/table-cells?style=solid
  /// blocks, boxes, grid, squares
  static const IconData tableCells = IconDataSolid(0xf00a);

  /// Alias th for icon [tableCells]
  @Deprecated('Use "tableCells" instead.')
  static const IconData th = tableCells;

  /// Solid Table Cells Large icon
  ///
  /// https://fontawesome.com/icons/table-cells-large?style=solid
  /// blocks, boxes, grid, squares
  static const IconData tableCellsLarge = IconDataSolid(0xf009);

  /// Alias th-large for icon [tableCellsLarge]
  @Deprecated('Use "tableCellsLarge" instead.')
  static const IconData thLarge = tableCellsLarge;

  /// Solid Table Columns icon
  ///
  /// https://fontawesome.com/icons/table-columns?style=solid
  /// browser, dashboard, organize, panes, split
  static const IconData tableColumns = IconDataSolid(0xf0db);

  /// Alias columns for icon [tableColumns]
  @Deprecated('Use "tableColumns" instead.')
  static const IconData columns = tableColumns;

  /// Solid Table List icon
  ///
  /// https://fontawesome.com/icons/table-list?style=solid
  /// checklist, completed, done, finished, ol, todo, ul
  static const IconData tableList = IconDataSolid(0xf00b);

  /// Alias th-list for icon [tableList]
  @Deprecated('Use "tableList" instead.')
  static const IconData thList = tableList;

  /// Solid Table Tennis Paddle Ball icon
  ///
  /// https://fontawesome.com/icons/table-tennis-paddle-ball?style=solid
  /// ball, bat, game, paddle, ping pong, table tennis
  static const IconData tableTennisPaddleBall = IconDataSolid(0xf45d);

  /// Alias ping-pong-paddle-ball for icon [tableTennisPaddleBall]
  @Deprecated('Use "tableTennisPaddleBall" instead.')
  static const IconData pingPongPaddleBall = tableTennisPaddleBall;

  /// Alias table-tennis for icon [tableTennisPaddleBall]
  @Deprecated('Use "tableTennisPaddleBall" instead.')
  static const IconData tableTennis = tableTennisPaddleBall;

  /// Solid Tablet icon
  ///
  /// https://fontawesome.com/icons/tablet?style=solid
  /// device, kindle, screen
  static const IconData tablet = IconDataSolid(0xf3fb);

  /// Alias tablet-android for icon [tablet]
  @Deprecated('Use "tablet" instead.')
  static const IconData tabletAndroid = tablet;

  /// Solid Tablet Button icon
  ///
  /// https://fontawesome.com/icons/tablet-button?style=solid
  /// apple, device, ipad, kindle, screen
  static const IconData tabletButton = IconDataSolid(0xf10a);

  /// Solid Tablet Screen Button icon
  ///
  /// https://fontawesome.com/icons/tablet-screen-button?style=solid
  /// apple, device, ipad, kindle, screen
  static const IconData tabletScreenButton = IconDataSolid(0xf3fa);

  /// Alias tablet-alt for icon [tabletScreenButton]
  @Deprecated('Use "tabletScreenButton" instead.')
  static const IconData tabletAlt = tabletScreenButton;

  /// Solid Tablets icon
  ///
  /// https://fontawesome.com/icons/tablets?style=solid
  /// drugs, medicine, pills, prescription
  static const IconData tablets = IconDataSolid(0xf490);

  /// Solid Tachograph Digital icon
  ///
  /// https://fontawesome.com/icons/tachograph-digital?style=solid
  /// data, distance, speed, tachometer
  static const IconData tachographDigital = IconDataSolid(0xf566);

  /// Alias digital-tachograph for icon [tachographDigital]
  @Deprecated('Use "tachographDigital" instead.')
  static const IconData digitalTachograph = tachographDigital;

  /// Solid Tag icon
  ///
  /// https://fontawesome.com/icons/tag?style=solid
  /// discount, labe, label, price, shopping
  static const IconData tag = IconDataSolid(0xf02b);

  /// Solid Tags icon
  ///
  /// https://fontawesome.com/icons/tags?style=solid
  /// discount, label, price, shopping
  static const IconData tags = IconDataSolid(0xf02c);

  /// Solid Tape icon
  ///
  /// https://fontawesome.com/icons/tape?style=solid
  /// design, package, sticky
  static const IconData tape = IconDataSolid(0xf4db);

  /// Solid Tarp icon
  ///
  /// https://fontawesome.com/icons/tarp?style=solid
  /// protection, tarp, tent, waterproof
  static const IconData tarp = IconDataSolid(0xe57b);

  /// Solid Tarp Droplet icon
  ///
  /// https://fontawesome.com/icons/tarp-droplet?style=solid
  /// protection, tarp, tent, waterproof
  static const IconData tarpDroplet = IconDataSolid(0xe57c);

  /// Solid Taxi icon
  ///
  /// https://fontawesome.com/icons/taxi?style=solid
  /// cab, cabbie, car, car service, lyft, machine, oncoming, oncoming taxi, taxi, transportation, travel, uber, vehicle
  static const IconData taxi = IconDataSolid(0xf1ba);

  /// Alias cab for icon [taxi]
  @Deprecated('Use "taxi" instead.')
  static const IconData cab = taxi;

  /// Brands Teamspeak icon
  ///
  /// https://fontawesome.com/icons/teamspeak?style=brands
  static const IconData teamspeak = IconDataBrands(0xf4f9);

  /// Solid Teeth icon
  ///
  /// https://fontawesome.com/icons/teeth?style=solid
  /// bite, dental, dentist, gums, mouth, smile, tooth
  static const IconData teeth = IconDataSolid(0xf62e);

  /// Solid Teeth Open icon
  ///
  /// https://fontawesome.com/icons/teeth-open?style=solid
  /// dental, dentist, gums bite, mouth, smile, tooth
  static const IconData teethOpen = IconDataSolid(0xf62f);

  /// Brands Telegram icon
  ///
  /// https://fontawesome.com/icons/telegram?style=brands
  static const IconData telegram = IconDataBrands(0xf2c6);

  /// Alias telegram-plane for icon [telegram]
  @Deprecated('Use "telegram" instead.')
  static const IconData telegramPlane = telegram;

  /// Solid Temperature Arrow Down icon
  ///
  /// https://fontawesome.com/icons/temperature-arrow-down?style=solid
  /// air conditioner, cold, heater, mercury, thermometer, winter
  static const IconData temperatureArrowDown = IconDataSolid(0xe03f);

  /// Alias temperature-down for icon [temperatureArrowDown]
  @Deprecated('Use "temperatureArrowDown" instead.')
  static const IconData temperatureDown = temperatureArrowDown;

  /// Solid Temperature Arrow Up icon
  ///
  /// https://fontawesome.com/icons/temperature-arrow-up?style=solid
  /// air conditioner, cold, heater, mercury, thermometer, winter
  static const IconData temperatureArrowUp = IconDataSolid(0xe040);

  /// Alias temperature-up for icon [temperatureArrowUp]
  @Deprecated('Use "temperatureArrowUp" instead.')
  static const IconData temperatureUp = temperatureArrowUp;

  /// Solid Temperature Empty icon
  ///
  /// https://fontawesome.com/icons/temperature-empty?style=solid
  /// cold, mercury, status, temperature
  static const IconData temperatureEmpty = IconDataSolid(0xf2cb);

  /// Alias temperature-0 for icon [temperatureEmpty]
  @Deprecated('Use "temperatureEmpty" instead.')
  static const IconData temperature0 = temperatureEmpty;

  /// Alias thermometer-0 for icon [temperatureEmpty]
  @Deprecated('Use "temperatureEmpty" instead.')
  static const IconData thermometer0 = temperatureEmpty;

  /// Alias thermometer-empty for icon [temperatureEmpty]
  @Deprecated('Use "temperatureEmpty" instead.')
  static const IconData thermometerEmpty = temperatureEmpty;

  /// Solid Temperature Full icon
  ///
  /// https://fontawesome.com/icons/temperature-full?style=solid
  /// fever, hot, mercury, status, temperature
  static const IconData temperatureFull = IconDataSolid(0xf2c7);

  /// Alias temperature-4 for icon [temperatureFull]
  @Deprecated('Use "temperatureFull" instead.')
  static const IconData temperature4 = temperatureFull;

  /// Alias thermometer-4 for icon [temperatureFull]
  @Deprecated('Use "temperatureFull" instead.')
  static const IconData thermometer4 = temperatureFull;

  /// Alias thermometer-full for icon [temperatureFull]
  @Deprecated('Use "temperatureFull" instead.')
  static const IconData thermometerFull = temperatureFull;

  /// Solid Temperature Half icon
  ///
  /// https://fontawesome.com/icons/temperature-half?style=solid
  /// mercury, status, temperature, thermometer, weather
  static const IconData temperatureHalf = IconDataSolid(0xf2c9);

  /// Alias temperature-2 for icon [temperatureHalf]
  @Deprecated('Use "temperatureHalf" instead.')
  static const IconData temperature2 = temperatureHalf;

  /// Alias thermometer-2 for icon [temperatureHalf]
  @Deprecated('Use "temperatureHalf" instead.')
  static const IconData thermometer2 = temperatureHalf;

  /// Alias thermometer-half for icon [temperatureHalf]
  @Deprecated('Use "temperatureHalf" instead.')
  static const IconData thermometerHalf = temperatureHalf;

  /// Solid Temperature High icon
  ///
  /// https://fontawesome.com/icons/temperature-high?style=solid
  /// cook, covid-19, mercury, summer, thermometer, warm
  static const IconData temperatureHigh = IconDataSolid(0xf769);

  /// Solid Temperature Low icon
  ///
  /// https://fontawesome.com/icons/temperature-low?style=solid
  /// cold, cool, covid-19, mercury, thermometer, winter
  static const IconData temperatureLow = IconDataSolid(0xf76b);

  /// Solid Temperature Quarter icon
  ///
  /// https://fontawesome.com/icons/temperature-quarter?style=solid
  /// mercury, status, temperature
  static const IconData temperatureQuarter = IconDataSolid(0xf2ca);

  /// Alias temperature-1 for icon [temperatureQuarter]
  @Deprecated('Use "temperatureQuarter" instead.')
  static const IconData temperature1 = temperatureQuarter;

  /// Alias thermometer-1 for icon [temperatureQuarter]
  @Deprecated('Use "temperatureQuarter" instead.')
  static const IconData thermometer1 = temperatureQuarter;

  /// Alias thermometer-quarter for icon [temperatureQuarter]
  @Deprecated('Use "temperatureQuarter" instead.')
  static const IconData thermometerQuarter = temperatureQuarter;

  /// Solid Temperature Three Quarters icon
  ///
  /// https://fontawesome.com/icons/temperature-three-quarters?style=solid
  /// mercury, status, temperature
  static const IconData temperatureThreeQuarters = IconDataSolid(0xf2c8);

  /// Alias temperature-3 for icon [temperatureThreeQuarters]
  @Deprecated('Use "temperatureThreeQuarters" instead.')
  static const IconData temperature3 = temperatureThreeQuarters;

  /// Alias thermometer-3 for icon [temperatureThreeQuarters]
  @Deprecated('Use "temperatureThreeQuarters" instead.')
  static const IconData thermometer3 = temperatureThreeQuarters;

  /// Alias thermometer-three-quarters for icon [temperatureThreeQuarters]
  @Deprecated('Use "temperatureThreeQuarters" instead.')
  static const IconData thermometerThreeQuarters = temperatureThreeQuarters;

  /// Brands Tencent Weibo icon
  ///
  /// https://fontawesome.com/icons/tencent-weibo?style=brands
  static const IconData tencentWeibo = IconDataBrands(0xf1d5);

  /// Solid Tenge Sign icon
  ///
  /// https://fontawesome.com/icons/tenge-sign?style=solid
  /// Tenge Sign, currency
  static const IconData tengeSign = IconDataSolid(0xf7d7);

  /// Alias tenge for icon [tengeSign]
  @Deprecated('Use "tengeSign" instead.')
  static const IconData tenge = tengeSign;

  /// Solid Tent icon
  ///
  /// https://fontawesome.com/icons/tent?style=solid
  /// bivouac, campground, refugee, shelter, tent
  static const IconData tent = IconDataSolid(0xe57d);

  /// Solid Tent Arrow Down To Line icon
  ///
  /// https://fontawesome.com/icons/tent-arrow-down-to-line?style=solid
  /// permanent, refugee, shelter
  static const IconData tentArrowDownToLine = IconDataSolid(0xe57e);

  /// Solid Tent Arrow Left Right icon
  ///
  /// https://fontawesome.com/icons/tent-arrow-left-right?style=solid
  /// refugee, shelter, transition
  static const IconData tentArrowLeftRight = IconDataSolid(0xe57f);

  /// Solid Tent Arrow Turn Left icon
  ///
  /// https://fontawesome.com/icons/tent-arrow-turn-left?style=solid
  /// refugee, shelter, temporary
  static const IconData tentArrowTurnLeft = IconDataSolid(0xe580);

  /// Solid Tent Arrows Down icon
  ///
  /// https://fontawesome.com/icons/tent-arrows-down?style=solid
  /// refugee, shelter, spontaneous
  static const IconData tentArrowsDown = IconDataSolid(0xe581);

  /// Solid Tents icon
  ///
  /// https://fontawesome.com/icons/tents?style=solid
  /// bivouac, campground, refugee, shelter, tent
  static const IconData tents = IconDataSolid(0xe582);

  /// Solid Terminal icon
  ///
  /// https://fontawesome.com/icons/terminal?style=solid
  /// code, coding, command, console, development, prompt, terminal
  static const IconData terminal = IconDataSolid(0xf120);

  /// Solid Text Height icon
  ///
  /// https://fontawesome.com/icons/text-height?style=solid
  /// edit, font, format, text, type
  static const IconData textHeight = IconDataSolid(0xf034);

  /// Solid Text Slash icon
  ///
  /// https://fontawesome.com/icons/text-slash?style=solid
  /// cancel, font, format, remove, style, text
  static const IconData textSlash = IconDataSolid(0xf87d);

  /// Alias remove-format for icon [textSlash]
  @Deprecated('Use "textSlash" instead.')
  static const IconData removeFormat = textSlash;

  /// Solid Text Width icon
  ///
  /// https://fontawesome.com/icons/text-width?style=solid
  /// edit, font, format, text, type
  static const IconData textWidth = IconDataSolid(0xf035);

  /// Brands The Red Yeti icon
  ///
  /// https://fontawesome.com/icons/the-red-yeti?style=brands
  static const IconData theRedYeti = IconDataBrands(0xf69d);

  /// Brands Themeco icon
  ///
  /// https://fontawesome.com/icons/themeco?style=brands
  static const IconData themeco = IconDataBrands(0xf5c6);

  /// Brands ThemeIsle icon
  ///
  /// https://fontawesome.com/icons/themeisle?style=brands
  static const IconData themeisle = IconDataBrands(0xf2b2);

  /// Solid Thermometer icon
  ///
  /// https://fontawesome.com/icons/thermometer?style=solid
  /// covid-19, mercury, status, temperature
  static const IconData thermometer = IconDataSolid(0xf491);

  /// Brands Think Peaks icon
  ///
  /// https://fontawesome.com/icons/think-peaks?style=brands
  static const IconData thinkPeaks = IconDataBrands(0xf731);

  /// Brands Threads icon
  ///
  /// https://fontawesome.com/icons/threads?style=brands
  static const IconData threads = IconDataBrands(0xe618);

  /// Solid Thumbs Down icon
  ///
  /// https://fontawesome.com/icons/thumbs-down?style=solid
  /// -1, disagree, disapprove, dislike, down, hand, social, thumb, thumbs down, thumbs-o-down
  static const IconData solidThumbsDown = IconDataSolid(0xf165);

  /// Regular Thumbs Down icon
  ///
  /// https://fontawesome.com/icons/thumbs-down?style=regular
  /// -1, disagree, disapprove, dislike, down, hand, social, thumb, thumbs down, thumbs-o-down
  static const IconData thumbsDown = IconDataRegular(0xf165);

  /// Solid Thumbs Up icon
  ///
  /// https://fontawesome.com/icons/thumbs-up?style=solid
  /// +1, agree, approve, favorite, hand, like, ok, okay, social, success, thumb, thumbs up, thumbs-o-up, up, yes, you got it dude
  static const IconData solidThumbsUp = IconDataSolid(0xf164);

  /// Regular Thumbs Up icon
  ///
  /// https://fontawesome.com/icons/thumbs-up?style=regular
  /// +1, agree, approve, favorite, hand, like, ok, okay, social, success, thumb, thumbs up, thumbs-o-up, up, yes, you got it dude
  static const IconData thumbsUp = IconDataRegular(0xf164);

  /// Solid Thumbtack icon
  ///
  /// https://fontawesome.com/icons/thumbtack?style=solid
  /// Black Pushpin, coordinates, location, marker, pin, pushpin, thumb-tack
  static const IconData thumbtack = IconDataSolid(0xf08d);

  /// Alias thumb-tack for icon [thumbtack]
  @Deprecated('Use "thumbtack" instead.')
  static const IconData thumbTack = thumbtack;

  /// Solid Ticket icon
  ///
  /// https://fontawesome.com/icons/ticket?style=solid
  /// admission, admission tickets, movie, pass, support, ticket
  static const IconData ticket = IconDataSolid(0xf145);

  /// Solid Ticket Simple icon
  ///
  /// https://fontawesome.com/icons/ticket-simple?style=solid
  /// movie, pass, support, ticket
  static const IconData ticketSimple = IconDataSolid(0xf3ff);

  /// Alias ticket-alt for icon [ticketSimple]
  @Deprecated('Use "ticketSimple" instead.')
  static const IconData ticketAlt = ticketSimple;

  /// Brands TikTok icon
  ///
  /// https://fontawesome.com/icons/tiktok?style=brands
  static const IconData tiktok = IconDataBrands(0xe07b);

  /// Solid Timeline icon
  ///
  /// https://fontawesome.com/icons/timeline?style=solid
  /// chronological, deadline, history, linear
  static const IconData timeline = IconDataSolid(0xe29c);

  /// Solid Toggle Off icon
  ///
  /// https://fontawesome.com/icons/toggle-off?style=solid
  /// button, off, on, switch
  static const IconData toggleOff = IconDataSolid(0xf204);

  /// Solid Toggle On icon
  ///
  /// https://fontawesome.com/icons/toggle-on?style=solid
  /// button, off, on, switch
  static const IconData toggleOn = IconDataSolid(0xf205);

  /// Solid Toilet icon
  ///
  /// https://fontawesome.com/icons/toilet?style=solid
  /// bathroom, flush, john, loo, pee, plumbing, poop, porcelain, potty, restroom, throne, toile, toilet, washroom, waste, wc
  static const IconData toilet = IconDataSolid(0xf7d8);

  /// Solid Toilet Paper icon
  ///
  /// https://fontawesome.com/icons/toilet-paper?style=solid
  /// bathroom, covid-19, halloween, holiday, lavatory, paper towels, prank, privy, restroom, roll, roll of paper, toilet, toilet paper, wipe
  static const IconData toiletPaper = IconDataSolid(0xf71e);

  /// Solid Toilet Paper Slash icon
  ///
  /// https://fontawesome.com/icons/toilet-paper-slash?style=solid
  /// bathroom, covid-19, halloween, holiday, lavatory, leaves, prank, privy, restroom, roll, toilet, trouble, ut oh, wipe
  static const IconData toiletPaperSlash = IconDataSolid(0xe072);

  /// Solid Toilet Portable icon
  ///
  /// https://fontawesome.com/icons/toilet-portable?style=solid
  /// outhouse, toilet
  static const IconData toiletPortable = IconDataSolid(0xe583);

  /// Solid Toilets Portable icon
  ///
  /// https://fontawesome.com/icons/toilets-portable?style=solid
  /// outhouse, toilet
  static const IconData toiletsPortable = IconDataSolid(0xe584);

  /// Solid Toolbox icon
  ///
  /// https://fontawesome.com/icons/toolbox?style=solid
  /// admin, chest, container, fix, mechanic, repair, settings, tool, toolbox, tools
  static const IconData toolbox = IconDataSolid(0xf552);

  /// Solid Tooth icon
  ///
  /// https://fontawesome.com/icons/tooth?style=solid
  /// bicuspid, dental, dentist, molar, mouth, teeth, tooth
  static const IconData tooth = IconDataSolid(0xf5c9);

  /// Solid Torii Gate icon
  ///
  /// https://fontawesome.com/icons/torii-gate?style=solid
  /// building, religion, shinto, shinto shrine, shintoism, shrine
  static const IconData toriiGate = IconDataSolid(0xf6a1);

  /// Solid Tornado icon
  ///
  /// https://fontawesome.com/icons/tornado?style=solid
  /// cloud, cyclone, dorothy, landspout, tornado, toto, twister, vortext, waterspout, weather, whirlwind
  static const IconData tornado = IconDataSolid(0xf76f);

  /// Solid Tower Broadcast icon
  ///
  /// https://fontawesome.com/icons/tower-broadcast?style=solid
  /// airwaves, antenna, communication, emergency, radio, reception, waves
  static const IconData towerBroadcast = IconDataSolid(0xf519);

  /// Alias broadcast-tower for icon [towerBroadcast]
  @Deprecated('Use "towerBroadcast" instead.')
  static const IconData broadcastTower = towerBroadcast;

  /// Solid Tower Cell icon
  ///
  /// https://fontawesome.com/icons/tower-cell?style=solid
  /// airwaves, antenna, communication, radio, reception, waves
  static const IconData towerCell = IconDataSolid(0xe585);

  /// Solid Tower Observation icon
  ///
  /// https://fontawesome.com/icons/tower-observation?style=solid
  /// fire tower, view
  static const IconData towerObservation = IconDataSolid(0xe586);

  /// Solid Tractor icon
  ///
  /// https://fontawesome.com/icons/tractor?style=solid
  /// agriculture, farm, tractor, vehicle
  static const IconData tractor = IconDataSolid(0xf722);

  /// Brands Trade Federation icon
  ///
  /// https://fontawesome.com/icons/trade-federation?style=brands
  static const IconData tradeFederation = IconDataBrands(0xf513);

  /// Solid Trademark icon
  ///
  /// https://fontawesome.com/icons/trademark?style=solid
  /// copyright, mark, register, symbol, tm, trade mark, trademark
  static const IconData trademark = IconDataSolid(0xf25c);

  /// Solid Traffic Light icon
  ///
  /// https://fontawesome.com/icons/traffic-light?style=solid
  /// direction, light, road, signal, traffic, travel, vertical traffic light
  static const IconData trafficLight = IconDataSolid(0xf637);

  /// Solid Trailer icon
  ///
  /// https://fontawesome.com/icons/trailer?style=solid
  /// carry, haul, moving, travel
  static const IconData trailer = IconDataSolid(0xe041);

  /// Solid Train icon
  ///
  /// https://fontawesome.com/icons/train?style=solid
  /// bullet, commute, locomotive, railway, subway, train
  static const IconData train = IconDataSolid(0xf238);

  /// Solid Train Subway icon
  ///
  /// https://fontawesome.com/icons/train-subway?style=solid
  /// machine, railway, train, transportation, vehicle
  static const IconData trainSubway = IconDataSolid(0xf239);

  /// Alias subway for icon [trainSubway]
  @Deprecated('Use "trainSubway" instead.')
  static const IconData subway = trainSubway;

  /// Solid Train Tram icon
  ///
  /// https://fontawesome.com/icons/train-tram?style=solid
  /// crossing, machine, mountains, seasonal, tram, transportation, trolleybus
  static const IconData trainTram = IconDataSolid(0xe5b4);

  /// Solid Transgender icon
  ///
  /// https://fontawesome.com/icons/transgender?style=solid
  /// female, gender, intersex, male, transgender, transgender symbol
  static const IconData transgender = IconDataSolid(0xf225);

  /// Alias transgender-alt for icon [transgender]
  @Deprecated('Use "transgender" instead.')
  static const IconData transgenderAlt = transgender;

  /// Solid Trash icon
  ///
  /// https://fontawesome.com/icons/trash?style=solid
  /// delete, garbage, hide, remove
  static const IconData trash = IconDataSolid(0xf1f8);

  /// Solid Trash Arrow Up icon
  ///
  /// https://fontawesome.com/icons/trash-arrow-up?style=solid
  /// back, control z, delete, garbage, hide, oops, remove, undo
  static const IconData trashArrowUp = IconDataSolid(0xf829);

  /// Alias trash-restore for icon [trashArrowUp]
  @Deprecated('Use "trashArrowUp" instead.')
  static const IconData trashRestore = trashArrowUp;

  /// Solid Trash Can icon
  ///
  /// https://fontawesome.com/icons/trash-can?style=solid
  /// delete, garbage, hide, remove, trash-o
  static const IconData solidTrashCan = IconDataSolid(0xf2ed);

  /// Alias trash-alt for icon [solidTrashCan]
  @Deprecated('Use "solidTrashCan" instead.')
  static const IconData solidTrashAlt = solidTrashCan;

  /// Regular Trash Can icon
  ///
  /// https://fontawesome.com/icons/trash-can?style=regular
  /// delete, garbage, hide, remove, trash-o
  static const IconData trashCan = IconDataRegular(0xf2ed);

  /// Alias trash-alt for icon [trashCan]
  @Deprecated('Use "trashCan" instead.')
  static const IconData trashAlt = trashCan;

  /// Solid Trash Can Arrow Up icon
  ///
  /// https://fontawesome.com/icons/trash-can-arrow-up?style=solid
  /// back, control z, delete, garbage, hide, oops, remove, undo
  static const IconData trashCanArrowUp = IconDataSolid(0xf82a);

  /// Alias trash-restore-alt for icon [trashCanArrowUp]
  @Deprecated('Use "trashCanArrowUp" instead.')
  static const IconData trashRestoreAlt = trashCanArrowUp;

  /// Solid Tree icon
  ///
  /// https://fontawesome.com/icons/tree?style=solid
  /// bark, evergreen tree, fall, flora, forest, nature, plant, seasonal, tree
  static const IconData tree = IconDataSolid(0xf1bb);

  /// Solid Tree City icon
  ///
  /// https://fontawesome.com/icons/tree-city?style=solid
  /// building, city, urban
  static const IconData treeCity = IconDataSolid(0xe587);

  /// Brands Trello icon
  ///
  /// https://fontawesome.com/icons/trello?style=brands
  /// atlassian
  static const IconData trello = IconDataBrands(0xf181);

  /// Solid Triangle Exclamation icon
  ///
  /// https://fontawesome.com/icons/triangle-exclamation?style=solid
  /// alert, danger, error, important, notice, notification, notify, problem, warnin, warning
  static const IconData triangleExclamation = IconDataSolid(0xf071);

  /// Alias exclamation-triangle for icon [triangleExclamation]
  @Deprecated('Use "triangleExclamation" instead.')
  static const IconData exclamationTriangle = triangleExclamation;

  /// Alias warning for icon [triangleExclamation]
  @Deprecated('Use "triangleExclamation" instead.')
  static const IconData warning = triangleExclamation;

  /// Solid Trophy icon
  ///
  /// https://fontawesome.com/icons/trophy?style=solid
  /// achievement, award, cup, game, prize, trophy, winner
  static const IconData trophy = IconDataSolid(0xf091);

  /// Solid Trowel icon
  ///
  /// https://fontawesome.com/icons/trowel?style=solid
  /// build, construction, tool
  static const IconData trowel = IconDataSolid(0xe589);

  /// Solid Trowel Bricks icon
  ///
  /// https://fontawesome.com/icons/trowel-bricks?style=solid
  /// build, construction, reconstruction, tool
  static const IconData trowelBricks = IconDataSolid(0xe58a);

  /// Solid Truck icon
  ///
  /// https://fontawesome.com/icons/truck?style=solid
  /// Black Truck, cargo, delivery, delivery truck, shipping, truck, vehicle
  static const IconData truck = IconDataSolid(0xf0d1);

  /// Solid Truck Arrow Right icon
  ///
  /// https://fontawesome.com/icons/truck-arrow-right?style=solid
  /// access, fast, shipping, transport
  static const IconData truckArrowRight = IconDataSolid(0xe58b);

  /// Solid Truck Droplet icon
  ///
  /// https://fontawesome.com/icons/truck-droplet?style=solid
  /// thirst, truck, water, water supply
  static const IconData truckDroplet = IconDataSolid(0xe58c);

  /// Solid Truck Fast icon
  ///
  /// https://fontawesome.com/icons/truck-fast?style=solid
  /// express, fedex, mail, overnight, package, ups
  static const IconData truckFast = IconDataSolid(0xf48b);

  /// Alias shipping-fast for icon [truckFast]
  @Deprecated('Use "truckFast" instead.')
  static const IconData shippingFast = truckFast;

  /// Solid Truck Field icon
  ///
  /// https://fontawesome.com/icons/truck-field?style=solid
  /// supplies, truck
  static const IconData truckField = IconDataSolid(0xe58d);

  /// Solid Truck Field Un icon
  ///
  /// https://fontawesome.com/icons/truck-field-un?style=solid
  /// supplies, truck, united nations
  static const IconData truckFieldUn = IconDataSolid(0xe58e);

  /// Solid Truck Front icon
  ///
  /// https://fontawesome.com/icons/truck-front?style=solid
  /// shuttle, truck, van
  static const IconData truckFront = IconDataSolid(0xe2b7);

  /// Solid Truck Medical icon
  ///
  /// https://fontawesome.com/icons/truck-medical?style=solid
  /// ambulance, clinic, covid-19, emergency, emt, er, help, hospital, mobile, support, vehicle
  static const IconData truckMedical = IconDataSolid(0xf0f9);

  /// Alias ambulance for icon [truckMedical]
  @Deprecated('Use "truckMedical" instead.')
  static const IconData ambulance = truckMedical;

  /// Solid Truck Monster icon
  ///
  /// https://fontawesome.com/icons/truck-monster?style=solid
  /// offroad, vehicle, wheel
  static const IconData truckMonster = IconDataSolid(0xf63b);

  /// Solid Truck Moving icon
  ///
  /// https://fontawesome.com/icons/truck-moving?style=solid
  /// cargo, inventory, rental, vehicle
  static const IconData truckMoving = IconDataSolid(0xf4df);

  /// Solid Truck Pickup icon
  ///
  /// https://fontawesome.com/icons/truck-pickup?style=solid
  /// cargo, pick-up, pickup, pickup truck, truck, vehicle
  static const IconData truckPickup = IconDataSolid(0xf63c);

  /// Solid Truck Plane icon
  ///
  /// https://fontawesome.com/icons/truck-plane?style=solid
  /// airplane, plane, transportation, truck, vehicle
  static const IconData truckPlane = IconDataSolid(0xe58f);

  /// Solid Truck Ramp Box icon
  ///
  /// https://fontawesome.com/icons/truck-ramp-box?style=solid
  /// box, cargo, delivery, inventory, moving, rental, vehicle
  static const IconData truckRampBox = IconDataSolid(0xf4de);

  /// Alias truck-loading for icon [truckRampBox]
  @Deprecated('Use "truckRampBox" instead.')
  static const IconData truckLoading = truckRampBox;

  /// Solid Tty icon
  ///
  /// https://fontawesome.com/icons/tty?style=solid
  /// communication, deaf, telephone, teletypewriter, text
  static const IconData tty = IconDataSolid(0xf1e4);

  /// Alias teletype for icon [tty]
  @Deprecated('Use "tty" instead.')
  static const IconData teletype = tty;

  /// Brands Tumblr icon
  ///
  /// https://fontawesome.com/icons/tumblr?style=brands
  static const IconData tumblr = IconDataBrands(0xf173);

  /// Solid Turkish Lira Sign icon
  ///
  /// https://fontawesome.com/icons/turkish-lira-sign?style=solid
  /// Turkish Lira Sign, currency
  static const IconData turkishLiraSign = IconDataSolid(0xe2bb);

  /// Alias turkish-lira for icon [turkishLiraSign]
  @Deprecated('Use "turkishLiraSign" instead.')
  static const IconData turkishLira = turkishLiraSign;

  /// Solid Turn Down icon
  ///
  /// https://fontawesome.com/icons/turn-down?style=solid
  /// arrow, down, level-down, right arrow curving down
  static const IconData turnDown = IconDataSolid(0xf3be);

  /// Alias level-down-alt for icon [turnDown]
  @Deprecated('Use "turnDown" instead.')
  static const IconData levelDownAlt = turnDown;

  /// Solid Turn Up icon
  ///
  /// https://fontawesome.com/icons/turn-up?style=solid
  /// arrow, level-up, right arrow curving up
  static const IconData turnUp = IconDataSolid(0xf3bf);

  /// Alias level-up-alt for icon [turnUp]
  @Deprecated('Use "turnUp" instead.')
  static const IconData levelUpAlt = turnUp;

  /// Solid Tv icon
  ///
  /// https://fontawesome.com/icons/tv?style=solid
  /// computer, display, monitor, television
  static const IconData tv = IconDataSolid(0xf26c);

  /// Alias television for icon [tv]
  @Deprecated('Use "tv" instead.')
  static const IconData television = tv;

  /// Alias tv-alt for icon [tv]
  @Deprecated('Use "tv" instead.')
  static const IconData tvAlt = tv;

  /// Brands Twitch icon
  ///
  /// https://fontawesome.com/icons/twitch?style=brands
  static const IconData twitch = IconDataBrands(0xf1e8);

  /// Brands Twitter icon
  ///
  /// https://fontawesome.com/icons/twitter?style=brands
  /// social network, tweet
  static const IconData twitter = IconDataBrands(0xf099);

  /// Brands Typo3 icon
  ///
  /// https://fontawesome.com/icons/typo3?style=brands
  static const IconData typo3 = IconDataBrands(0xf42b);

  /// Solid U icon
  ///
  /// https://fontawesome.com/icons/u?style=solid
  /// Latin Capital Letter U, Latin Small Letter U, letter
  static const IconData u = IconDataSolid(0x55);

  /// Brands Uber icon
  ///
  /// https://fontawesome.com/icons/uber?style=brands
  static const IconData uber = IconDataBrands(0xf402);

  /// Brands Ubuntu icon
  ///
  /// https://fontawesome.com/icons/ubuntu?style=brands
  /// linux, operating system, os
  static const IconData ubuntu = IconDataBrands(0xf7df);

  /// Brands UIkit icon
  ///
  /// https://fontawesome.com/icons/uikit?style=brands
  static const IconData uikit = IconDataBrands(0xf403);

  /// Brands Umbraco icon
  ///
  /// https://fontawesome.com/icons/umbraco?style=brands
  static const IconData umbraco = IconDataBrands(0xf8e8);

  /// Solid Umbrella icon
  ///
  /// https://fontawesome.com/icons/umbrella?style=solid
  /// protection, rain, storm, wet
  static const IconData umbrella = IconDataSolid(0xf0e9);

  /// Solid Umbrella Beach icon
  ///
  /// https://fontawesome.com/icons/umbrella-beach?style=solid
  /// beach, beach with umbrella, protection, recreation, sand, shade, summer, sun, umbrella
  static const IconData umbrellaBeach = IconDataSolid(0xf5ca);

  /// Brands Uncharted Software icon
  ///
  /// https://fontawesome.com/icons/uncharted?style=brands
  static const IconData uncharted = IconDataBrands(0xe084);

  /// Solid Underline icon
  ///
  /// https://fontawesome.com/icons/underline?style=solid
  /// edit, emphasis, format, text, writing
  static const IconData underline = IconDataSolid(0xf0cd);

  /// Brands Uniregistry icon
  ///
  /// https://fontawesome.com/icons/uniregistry?style=brands
  static const IconData uniregistry = IconDataBrands(0xf404);

  /// Brands Unity 3D icon
  ///
  /// https://fontawesome.com/icons/unity?style=brands
  static const IconData unity = IconDataBrands(0xe049);

  /// Solid Universal Access icon
  ///
  /// https://fontawesome.com/icons/universal-access?style=solid
  /// users-people
  static const IconData universalAccess = IconDataSolid(0xf29a);

  /// Solid Unlock icon
  ///
  /// https://fontawesome.com/icons/unlock?style=solid
  /// admin, lock, open, password, private, protect, unlock, unlocked
  static const IconData unlock = IconDataSolid(0xf09c);

  /// Solid Unlock Keyhole icon
  ///
  /// https://fontawesome.com/icons/unlock-keyhole?style=solid
  /// admin, lock, password, private, protect
  static const IconData unlockKeyhole = IconDataSolid(0xf13e);

  /// Alias unlock-alt for icon [unlockKeyhole]
  @Deprecated('Use "unlockKeyhole" instead.')
  static const IconData unlockAlt = unlockKeyhole;

  /// Brands Unsplash icon
  ///
  /// https://fontawesome.com/icons/unsplash?style=brands
  static const IconData unsplash = IconDataBrands(0xe07c);

  /// Brands Untappd icon
  ///
  /// https://fontawesome.com/icons/untappd?style=brands
  static const IconData untappd = IconDataBrands(0xf405);

  /// Solid Up Down icon
  ///
  /// https://fontawesome.com/icons/up-down?style=solid
  /// Up Down Black Arrow, arrow, arrows-v, expand, portrait, resize, tall, up-down arrow, vertical
  static const IconData upDown = IconDataSolid(0xf338);

  /// Alias arrows-alt-v for icon [upDown]
  @Deprecated('Use "upDown" instead.')
  static const IconData arrowsAltV = upDown;

  /// Solid Up Down Left Right icon
  ///
  /// https://fontawesome.com/icons/up-down-left-right?style=solid
  /// arrow, arrows, bigger, enlarge, expand, fullscreen, move, position, reorder, resize
  static const IconData upDownLeftRight = IconDataSolid(0xf0b2);

  /// Alias arrows-alt for icon [upDownLeftRight]
  @Deprecated('Use "upDownLeftRight" instead.')
  static const IconData arrowsAlt = upDownLeftRight;

  /// Solid Up Long icon
  ///
  /// https://fontawesome.com/icons/up-long?style=solid
  /// long-arrow-up, upload
  static const IconData upLong = IconDataSolid(0xf30c);

  /// Alias long-arrow-alt-up for icon [upLong]
  @Deprecated('Use "upLong" instead.')
  static const IconData longArrowAltUp = upLong;

  /// Solid Up Right And Down Left From Center icon
  ///
  /// https://fontawesome.com/icons/up-right-and-down-left-from-center?style=solid
  /// arrows, bigger, enlarge, fullscreen, resize
  static const IconData upRightAndDownLeftFromCenter = IconDataSolid(0xf424);

  /// Alias expand-alt for icon [upRightAndDownLeftFromCenter]
  @Deprecated('Use "upRightAndDownLeftFromCenter" instead.')
  static const IconData expandAlt = upRightAndDownLeftFromCenter;

  /// Solid Up Right From Square icon
  ///
  /// https://fontawesome.com/icons/up-right-from-square?style=solid
  /// external-link, new, open, share
  static const IconData upRightFromSquare = IconDataSolid(0xf35d);

  /// Alias external-link-alt for icon [upRightFromSquare]
  @Deprecated('Use "upRightFromSquare" instead.')
  static const IconData externalLinkAlt = upRightFromSquare;

  /// Solid Upload icon
  ///
  /// https://fontawesome.com/icons/upload?style=solid
  /// hard drive, import, publish
  static const IconData upload = IconDataSolid(0xf093);

  /// Brands UPS icon
  ///
  /// https://fontawesome.com/icons/ups?style=brands
  /// United Parcel Service, package, shipping
  static const IconData ups = IconDataBrands(0xf7e0);

  /// Brands USB icon
  ///
  /// https://fontawesome.com/icons/usb?style=brands
  static const IconData usb = IconDataBrands(0xf287);

  /// Solid User icon
  ///
  /// https://fontawesome.com/icons/user?style=solid
  /// adult, bust, bust in silhouette, gender-neutral, person, profile, silhouette, unspecified gender, users-people
  static const IconData solidUser = IconDataSolid(0xf007);

  /// Regular User icon
  ///
  /// https://fontawesome.com/icons/user?style=regular
  /// adult, bust, bust in silhouette, gender-neutral, person, profile, silhouette, unspecified gender, users-people
  static const IconData user = IconDataRegular(0xf007);

  /// Solid User Astronaut icon
  ///
  /// https://fontawesome.com/icons/user-astronaut?style=solid
  /// avatar, clothing, cosmonaut, nasa, space, suit
  static const IconData userAstronaut = IconDataSolid(0xf4fb);

  /// Solid User Check icon
  ///
  /// https://fontawesome.com/icons/user-check?style=solid
  /// users-people
  static const IconData userCheck = IconDataSolid(0xf4fc);

  /// Solid User Clock icon
  ///
  /// https://fontawesome.com/icons/user-clock?style=solid
  /// users-people
  static const IconData userClock = IconDataSolid(0xf4fd);

  /// Solid User Doctor icon
  ///
  /// https://fontawesome.com/icons/user-doctor?style=solid
  /// covid-19, health, job, medical, nurse, occupation, physician, profile, surgeon, worker
  static const IconData userDoctor = IconDataSolid(0xf0f0);

  /// Alias user-md for icon [userDoctor]
  @Deprecated('Use "userDoctor" instead.')
  static const IconData userMd = userDoctor;

  /// Solid User Gear icon
  ///
  /// https://fontawesome.com/icons/user-gear?style=solid
  /// users-people
  static const IconData userGear = IconDataSolid(0xf4fe);

  /// Alias user-cog for icon [userGear]
  @Deprecated('Use "userGear" instead.')
  static const IconData userCog = userGear;

  /// Solid User Graduate icon
  ///
  /// https://fontawesome.com/icons/user-graduate?style=solid
  /// users-people
  static const IconData userGraduate = IconDataSolid(0xf501);

  /// Solid User Group icon
  ///
  /// https://fontawesome.com/icons/user-group?style=solid
  /// bust, busts in silhouette, silhouette, users-people
  static const IconData userGroup = IconDataSolid(0xf500);

  /// Alias user-friends for icon [userGroup]
  @Deprecated('Use "userGroup" instead.')
  static const IconData userFriends = userGroup;

  /// Solid User Injured icon
  ///
  /// https://fontawesome.com/icons/user-injured?style=solid
  /// users-people
  static const IconData userInjured = IconDataSolid(0xf728);

  /// Solid User Large icon
  ///
  /// https://fontawesome.com/icons/user-large?style=solid
  /// users-people
  static const IconData userLarge = IconDataSolid(0xf406);

  /// Alias user-alt for icon [userLarge]
  @Deprecated('Use "userLarge" instead.')
  static const IconData userAlt = userLarge;

  /// Solid User Large Slash icon
  ///
  /// https://fontawesome.com/icons/user-large-slash?style=solid
  /// users-people
  static const IconData userLargeSlash = IconDataSolid(0xf4fa);

  /// Alias user-alt-slash for icon [userLargeSlash]
  @Deprecated('Use "userLargeSlash" instead.')
  static const IconData userAltSlash = userLargeSlash;

  /// Solid User Lock icon
  ///
  /// https://fontawesome.com/icons/user-lock?style=solid
  /// users-people
  static const IconData userLock = IconDataSolid(0xf502);

  /// Solid User Minus icon
  ///
  /// https://fontawesome.com/icons/user-minus?style=solid
  /// delete, negative, remove
  static const IconData userMinus = IconDataSolid(0xf503);

  /// Solid User Ninja icon
  ///
  /// https://fontawesome.com/icons/user-ninja?style=solid
  /// assassin, avatar, dangerous, deadly, fighter, hidden, ninja, sneaky, stealth
  static const IconData userNinja = IconDataSolid(0xf504);

  /// Solid User Nurse icon
  ///
  /// https://fontawesome.com/icons/user-nurse?style=solid
  /// covid-19, doctor, health, md, medical, midwife, physician, practitioner, surgeon, worker
  static const IconData userNurse = IconDataSolid(0xf82f);

  /// Solid User Pen icon
  ///
  /// https://fontawesome.com/icons/user-pen?style=solid
  /// users-people
  static const IconData userPen = IconDataSolid(0xf4ff);

  /// Alias user-edit for icon [userPen]
  @Deprecated('Use "userPen" instead.')
  static const IconData userEdit = userPen;

  /// Solid User Plus icon
  ///
  /// https://fontawesome.com/icons/user-plus?style=solid
  /// add, avatar, positive, sign up, signup, team
  static const IconData userPlus = IconDataSolid(0xf234);

  /// Solid User Secret icon
  ///
  /// https://fontawesome.com/icons/user-secret?style=solid
  /// detective, sleuth, spy, users-people
  static const IconData userSecret = IconDataSolid(0xf21b);

  /// Solid User Shield icon
  ///
  /// https://fontawesome.com/icons/user-shield?style=solid
  /// protect, safety
  static const IconData userShield = IconDataSolid(0xf505);

  /// Solid User Slash icon
  ///
  /// https://fontawesome.com/icons/user-slash?style=solid
  /// ban, delete, remove
  static const IconData userSlash = IconDataSolid(0xf506);

  /// Solid User Tag icon
  ///
  /// https://fontawesome.com/icons/user-tag?style=solid
  /// users-people
  static const IconData userTag = IconDataSolid(0xf507);

  /// Solid User Tie icon
  ///
  /// https://fontawesome.com/icons/user-tie?style=solid
  /// avatar, business, clothing, formal, professional, suit
  static const IconData userTie = IconDataSolid(0xf508);

  /// Solid User Xmark icon
  ///
  /// https://fontawesome.com/icons/user-xmark?style=solid
  /// archive, delete, remove, x
  static const IconData userXmark = IconDataSolid(0xf235);

  /// Alias user-times for icon [userXmark]
  @Deprecated('Use "userXmark" instead.')
  static const IconData userTimes = userXmark;

  /// Solid Users icon
  ///
  /// https://fontawesome.com/icons/users?style=solid
  /// users-people
  static const IconData users = IconDataSolid(0xf0c0);

  /// Solid Users Between Lines icon
  ///
  /// https://fontawesome.com/icons/users-between-lines?style=solid
  /// covered, group, people
  static const IconData usersBetweenLines = IconDataSolid(0xe591);

  /// Solid Users Gear icon
  ///
  /// https://fontawesome.com/icons/users-gear?style=solid
  /// users-people
  static const IconData usersGear = IconDataSolid(0xf509);

  /// Alias users-cog for icon [usersGear]
  @Deprecated('Use "usersGear" instead.')
  static const IconData usersCog = usersGear;

  /// Solid Users Line icon
  ///
  /// https://fontawesome.com/icons/users-line?style=solid
  /// group, need, people
  static const IconData usersLine = IconDataSolid(0xe592);

  /// Solid Users Rays icon
  ///
  /// https://fontawesome.com/icons/users-rays?style=solid
  /// affected, focused, group, people
  static const IconData usersRays = IconDataSolid(0xe593);

  /// Solid Users Rectangle icon
  ///
  /// https://fontawesome.com/icons/users-rectangle?style=solid
  /// focus, group, people, reached
  static const IconData usersRectangle = IconDataSolid(0xe594);

  /// Solid Users Slash icon
  ///
  /// https://fontawesome.com/icons/users-slash?style=solid
  /// users-people
  static const IconData usersSlash = IconDataSolid(0xe073);

  /// Solid Users Viewfinder icon
  ///
  /// https://fontawesome.com/icons/users-viewfinder?style=solid
  /// focus, group, people, targeted
  static const IconData usersViewfinder = IconDataSolid(0xe595);

  /// Brands United States Postal Service icon
  ///
  /// https://fontawesome.com/icons/usps?style=brands
  /// american, package, shipping, usa
  static const IconData usps = IconDataBrands(0xf7e1);

  /// Brands us-Sunnah Foundation icon
  ///
  /// https://fontawesome.com/icons/ussunnah?style=brands
  static const IconData ussunnah = IconDataBrands(0xf407);

  /// Solid Utensils icon
  ///
  /// https://fontawesome.com/icons/utensils?style=solid
  /// cooking, cutlery, dining, dinner, eat, food, fork, fork and knife, knife, restaurant
  static const IconData utensils = IconDataSolid(0xf2e7);

  /// Alias cutlery for icon [utensils]
  @Deprecated('Use "utensils" instead.')
  static const IconData cutlery = utensils;

  /// Solid V icon
  ///
  /// https://fontawesome.com/icons/v?style=solid
  /// Latin Capital Letter V, Latin Small Letter V, letter
  static const IconData v = IconDataSolid(0x56);

  /// Brands Vaadin icon
  ///
  /// https://fontawesome.com/icons/vaadin?style=brands
  static const IconData vaadin = IconDataBrands(0xf408);

  /// Solid Van Shuttle icon
  ///
  /// https://fontawesome.com/icons/van-shuttle?style=solid
  /// airport, bus, machine, minibus, public-transportation, transportation, travel, vehicle
  static const IconData vanShuttle = IconDataSolid(0xf5b6);

  /// Alias shuttle-van for icon [vanShuttle]
  @Deprecated('Use "vanShuttle" instead.')
  static const IconData shuttleVan = vanShuttle;

  /// Solid Vault icon
  ///
  /// https://fontawesome.com/icons/vault?style=solid
  /// bank, important, lock, money, safe
  static const IconData vault = IconDataSolid(0xe2c5);

  /// Solid Vector Square icon
  ///
  /// https://fontawesome.com/icons/vector-square?style=solid
  /// anchors, lines, object, render, shape
  static const IconData vectorSquare = IconDataSolid(0xf5cb);

  /// Solid Venus icon
  ///
  /// https://fontawesome.com/icons/venus?style=solid
  /// female, female sign, gender, woman
  static const IconData venus = IconDataSolid(0xf221);

  /// Solid Venus Double icon
  ///
  /// https://fontawesome.com/icons/venus-double?style=solid
  /// Doubled Female Sign, female, gender, lesbian
  static const IconData venusDouble = IconDataSolid(0xf226);

  /// Solid Venus Mars icon
  ///
  /// https://fontawesome.com/icons/venus-mars?style=solid
  /// Interlocked Female and Male Sign, female, gender, heterosexual, male
  static const IconData venusMars = IconDataSolid(0xf228);

  /// Solid Vest icon
  ///
  /// https://fontawesome.com/icons/vest?style=solid
  /// biker, fashion, style
  static const IconData vest = IconDataSolid(0xe085);

  /// Solid Vest Patches icon
  ///
  /// https://fontawesome.com/icons/vest-patches?style=solid
  /// biker, fashion, style
  static const IconData vestPatches = IconDataSolid(0xe086);

  /// Brands Viacoin icon
  ///
  /// https://fontawesome.com/icons/viacoin?style=brands
  static const IconData viacoin = IconDataBrands(0xf237);

  /// Brands Viadeo icon
  ///
  /// https://fontawesome.com/icons/viadeo?style=brands
  static const IconData viadeo = IconDataBrands(0xf2a9);

  /// Solid Vial icon
  ///
  /// https://fontawesome.com/icons/vial?style=solid
  /// ampule, chemist, chemistry, experiment, lab, sample, science, test, test tube
  static const IconData vial = IconDataSolid(0xf492);

  /// Solid Vial Circle Check icon
  ///
  /// https://fontawesome.com/icons/vial-circle-check?style=solid
  /// ampule, chemist, chemistry, not affected, ok, okay, success, test tube, tube, vaccine
  static const IconData vialCircleCheck = IconDataSolid(0xe596);

  /// Solid Vial Virus icon
  ///
  /// https://fontawesome.com/icons/vial-virus?style=solid
  /// ampule, coronavirus, covid-19, flue, infection, lab, laboratory, pandemic, test, test tube, vaccine
  static const IconData vialVirus = IconDataSolid(0xe597);

  /// Solid Vials icon
  ///
  /// https://fontawesome.com/icons/vials?style=solid
  /// ampule, experiment, lab, sample, science, test, test tube
  static const IconData vials = IconDataSolid(0xf493);

  /// Brands Viber icon
  ///
  /// https://fontawesome.com/icons/viber?style=brands
  static const IconData viber = IconDataBrands(0xf409);

  /// Solid Video icon
  ///
  /// https://fontawesome.com/icons/video?style=solid
  /// camera, film, movie, record, video-camera
  static const IconData video = IconDataSolid(0xf03d);

  /// Alias video-camera for icon [video]
  @Deprecated('Use "video" instead.')
  static const IconData videoCamera = video;

  /// Solid Video Slash icon
  ///
  /// https://fontawesome.com/icons/video-slash?style=solid
  /// add, create, film, new, positive, record, video
  static const IconData videoSlash = IconDataSolid(0xf4e2);

  /// Solid Vihara icon
  ///
  /// https://fontawesome.com/icons/vihara?style=solid
  /// buddhism, buddhist, building, monastery
  static const IconData vihara = IconDataSolid(0xf6a7);

  /// Brands Vimeo icon
  ///
  /// https://fontawesome.com/icons/vimeo?style=brands
  static const IconData vimeo = IconDataBrands(0xf40a);

  /// Brands Vimeo icon
  ///
  /// https://fontawesome.com/icons/vimeo-v?style=brands
  /// vimeo
  static const IconData vimeoV = IconDataBrands(0xf27d);

  /// Brands Vine icon
  ///
  /// https://fontawesome.com/icons/vine?style=brands
  static const IconData vine = IconDataBrands(0xf1ca);

  /// Solid Virus icon
  ///
  /// https://fontawesome.com/icons/virus?style=solid
  /// bug, coronavirus, covid-19, flu, health, infection, pandemic, sick, vaccine, viral
  static const IconData virus = IconDataSolid(0xe074);

  /// Solid Virus Covid icon
  ///
  /// https://fontawesome.com/icons/virus-covid?style=solid
  /// bug, covid-19, flu, health, infection, pandemic, vaccine, viral, virus
  static const IconData virusCovid = IconDataSolid(0xe4a8);

  /// Solid Virus Covid Slash icon
  ///
  /// https://fontawesome.com/icons/virus-covid-slash?style=solid
  /// bug, covid-19, flu, health, infection, pandemic, vaccine, viral, virus
  static const IconData virusCovidSlash = IconDataSolid(0xe4a9);

  /// Solid Virus Slash icon
  ///
  /// https://fontawesome.com/icons/virus-slash?style=solid
  /// bug, coronavirus, covid-19, cure, eliminate, flu, health, infection, pandemic, sick, vaccine, viral
  static const IconData virusSlash = IconDataSolid(0xe075);

  /// Solid Viruses icon
  ///
  /// https://fontawesome.com/icons/viruses?style=solid
  /// bugs, coronavirus, covid-19, flu, health, infection, multiply, pandemic, sick, spread, vaccine, viral
  static const IconData viruses = IconDataSolid(0xe076);

  /// Brands VK icon
  ///
  /// https://fontawesome.com/icons/vk?style=brands
  static const IconData vk = IconDataBrands(0xf189);

  /// Brands VNV icon
  ///
  /// https://fontawesome.com/icons/vnv?style=brands
  static const IconData vnv = IconDataBrands(0xf40b);

  /// Solid Voicemail icon
  ///
  /// https://fontawesome.com/icons/voicemail?style=solid
  /// answer, inbox, message, phone
  static const IconData voicemail = IconDataSolid(0xf897);

  /// Solid Volcano icon
  ///
  /// https://fontawesome.com/icons/volcano?style=solid
  /// caldera, eruption, lava, magma, mountain, smoke, volcano
  static const IconData volcano = IconDataSolid(0xf770);

  /// Solid Volleyball icon
  ///
  /// https://fontawesome.com/icons/volleyball?style=solid
  /// ball, beach, game, olympics, sport, volleyball
  static const IconData volleyball = IconDataSolid(0xf45f);

  /// Alias volleyball-ball for icon [volleyball]
  @Deprecated('Use "volleyball" instead.')
  static const IconData volleyballBall = volleyball;

  /// Solid Volume High icon
  ///
  /// https://fontawesome.com/icons/volume-high?style=solid
  /// audio, higher, loud, louder, music, sound, speaker, speaker high volume
  static const IconData volumeHigh = IconDataSolid(0xf028);

  /// Alias volume-up for icon [volumeHigh]
  @Deprecated('Use "volumeHigh" instead.')
  static const IconData volumeUp = volumeHigh;

  /// Solid Volume Low icon
  ///
  /// https://fontawesome.com/icons/volume-low?style=solid
  /// audio, lower, music, quieter, soft, sound, speaker, speaker low volume
  static const IconData volumeLow = IconDataSolid(0xf027);

  /// Alias volume-down for icon [volumeLow]
  @Deprecated('Use "volumeLow" instead.')
  static const IconData volumeDown = volumeLow;

  /// Solid Volume Off icon
  ///
  /// https://fontawesome.com/icons/volume-off?style=solid
  /// audio, ban, music, mute, quiet, silent, sound
  static const IconData volumeOff = IconDataSolid(0xf026);

  /// Solid Volume Xmark icon
  ///
  /// https://fontawesome.com/icons/volume-xmark?style=solid
  /// audio, music, quiet, sound, speaker
  static const IconData volumeXmark = IconDataSolid(0xf6a9);

  /// Alias volume-mute for icon [volumeXmark]
  @Deprecated('Use "volumeXmark" instead.')
  static const IconData volumeMute = volumeXmark;

  /// Alias volume-times for icon [volumeXmark]
  @Deprecated('Use "volumeXmark" instead.')
  static const IconData volumeTimes = volumeXmark;

  /// Solid Vr Cardboard icon
  ///
  /// https://fontawesome.com/icons/vr-cardboard?style=solid
  /// 3d, augment, google, reality, virtual
  static const IconData vrCardboard = IconDataSolid(0xf729);

  /// Brands Vue.js icon
  ///
  /// https://fontawesome.com/icons/vuejs?style=brands
  static const IconData vuejs = IconDataBrands(0xf41f);

  /// Solid W icon
  ///
  /// https://fontawesome.com/icons/w?style=solid
  /// Latin Capital Letter W, Latin Small Letter W, letter
  static const IconData w = IconDataSolid(0x57);

  /// Solid Walkie Talkie icon
  ///
  /// https://fontawesome.com/icons/walkie-talkie?style=solid
  /// communication, copy, intercom, over, portable, radio, two way radio
  static const IconData walkieTalkie = IconDataSolid(0xf8ef);

  /// Solid Wallet icon
  ///
  /// https://fontawesome.com/icons/wallet?style=solid
  /// billfold, cash, currency, money
  static const IconData wallet = IconDataSolid(0xf555);

  /// Solid Wand Magic icon
  ///
  /// https://fontawesome.com/icons/wand-magic?style=solid
  /// autocomplete, automatic, mage, magic, spell, wand, witch, wizard
  static const IconData wandMagic = IconDataSolid(0xf0d0);

  /// Alias magic for icon [wandMagic]
  @Deprecated('Use "wandMagic" instead.')
  static const IconData magic = wandMagic;

  /// Solid Wand Magic Sparkles icon
  ///
  /// https://fontawesome.com/icons/wand-magic-sparkles?style=solid
  /// auto, magic, magic wand, trick, witch, wizard
  static const IconData wandMagicSparkles = IconDataSolid(0xe2ca);

  /// Alias magic-wand-sparkles for icon [wandMagicSparkles]
  @Deprecated('Use "wandMagicSparkles" instead.')
  static const IconData magicWandSparkles = wandMagicSparkles;

  /// Solid Wand Sparkles icon
  ///
  /// https://fontawesome.com/icons/wand-sparkles?style=solid
  /// autocomplete, automatic, fantasy, halloween, holiday, magic, weapon, witch, wizard
  static const IconData wandSparkles = IconDataSolid(0xf72b);

  /// Solid Warehouse icon
  ///
  /// https://fontawesome.com/icons/warehouse?style=solid
  /// building, capacity, garage, inventory, storage
  static const IconData warehouse = IconDataSolid(0xf494);

  /// Brands Watchman Monitoring icon
  ///
  /// https://fontawesome.com/icons/watchman-monitoring?style=brands
  static const IconData watchmanMonitoring = IconDataBrands(0xe087);

  /// Solid Water icon
  ///
  /// https://fontawesome.com/icons/water?style=solid
  /// lake, liquid, ocean, sea, swim, wet
  static const IconData water = IconDataSolid(0xf773);

  /// Solid Water Ladder icon
  ///
  /// https://fontawesome.com/icons/water-ladder?style=solid
  /// ladder, recreation, swim, water
  static const IconData waterLadder = IconDataSolid(0xf5c5);

  /// Alias ladder-water for icon [waterLadder]
  @Deprecated('Use "waterLadder" instead.')
  static const IconData ladderWater = waterLadder;

  /// Alias swimming-pool for icon [waterLadder]
  @Deprecated('Use "waterLadder" instead.')
  static const IconData swimmingPool = waterLadder;

  /// Solid Wave Square icon
  ///
  /// https://fontawesome.com/icons/wave-square?style=solid
  /// frequency, pulse, signal
  static const IconData waveSquare = IconDataSolid(0xf83e);

  /// Brands Waze icon
  ///
  /// https://fontawesome.com/icons/waze?style=brands
  static const IconData waze = IconDataBrands(0xf83f);

  /// Brands Weebly icon
  ///
  /// https://fontawesome.com/icons/weebly?style=brands
  static const IconData weebly = IconDataBrands(0xf5cc);

  /// Brands Weibo icon
  ///
  /// https://fontawesome.com/icons/weibo?style=brands
  static const IconData weibo = IconDataBrands(0xf18a);

  /// Solid Weight Hanging icon
  ///
  /// https://fontawesome.com/icons/weight-hanging?style=solid
  /// anvil, heavy, measurement
  static const IconData weightHanging = IconDataSolid(0xf5cd);

  /// Solid Weight Scale icon
  ///
  /// https://fontawesome.com/icons/weight-scale?style=solid
  /// health, measurement, scale, weight
  static const IconData weightScale = IconDataSolid(0xf496);

  /// Alias weight for icon [weightScale]
  @Deprecated('Use "weightScale" instead.')
  static const IconData weight = weightScale;

  /// Brands Weixin (WeChat) icon
  ///
  /// https://fontawesome.com/icons/weixin?style=brands
  static const IconData weixin = IconDataBrands(0xf1d7);

  /// Brands What's App icon
  ///
  /// https://fontawesome.com/icons/whatsapp?style=brands
  static const IconData whatsapp = IconDataBrands(0xf232);

  /// Solid Wheat Awn icon
  ///
  /// https://fontawesome.com/icons/wheat-awn?style=solid
  /// agriculture, autumn, fall, farming, grain
  static const IconData wheatAwn = IconDataSolid(0xe2cd);

  /// Alias wheat-alt for icon [wheatAwn]
  @Deprecated('Use "wheatAwn" instead.')
  static const IconData wheatAlt = wheatAwn;

  /// Solid Wheat Awn Circle Exclamation icon
  ///
  /// https://fontawesome.com/icons/wheat-awn-circle-exclamation?style=solid
  /// affected, famine, food, gluten, hunger, starve, straw
  static const IconData wheatAwnCircleExclamation = IconDataSolid(0xe598);

  /// Solid Wheelchair icon
  ///
  /// https://fontawesome.com/icons/wheelchair?style=solid
  /// users-people
  static const IconData wheelchair = IconDataSolid(0xf193);

  /// Solid Wheelchair Move icon
  ///
  /// https://fontawesome.com/icons/wheelchair-move?style=solid
  /// access, handicap, impairment, physical, wheelchair symbol
  static const IconData wheelchairMove = IconDataSolid(0xe2ce);

  /// Alias wheelchair-alt for icon [wheelchairMove]
  @Deprecated('Use "wheelchairMove" instead.')
  static const IconData wheelchairAlt = wheelchairMove;

  /// Solid Whiskey Glass icon
  ///
  /// https://fontawesome.com/icons/whiskey-glass?style=solid
  /// alcohol, bar, beverage, bourbon, drink, glass, liquor, neat, rye, scotch, shot, tumbler, tumbler glass, whisky
  static const IconData whiskeyGlass = IconDataSolid(0xf7a0);

  /// Alias glass-whiskey for icon [whiskeyGlass]
  @Deprecated('Use "whiskeyGlass" instead.')
  static const IconData glassWhiskey = whiskeyGlass;

  /// Brands WHMCS icon
  ///
  /// https://fontawesome.com/icons/whmcs?style=brands
  static const IconData whmcs = IconDataBrands(0xf40d);

  /// Solid Wifi icon
  ///
  /// https://fontawesome.com/icons/wifi?style=solid
  /// connection, hotspot, internet, network, wireless
  static const IconData wifi = IconDataSolid(0xf1eb);

  /// Alias wifi-3 for icon [wifi]
  @Deprecated('Use "wifi" instead.')
  static const IconData wifi3 = wifi;

  /// Alias wifi-strong for icon [wifi]
  @Deprecated('Use "wifi" instead.')
  static const IconData wifiStrong = wifi;

  /// Brands Wikipedia W icon
  ///
  /// https://fontawesome.com/icons/wikipedia-w?style=brands
  static const IconData wikipediaW = IconDataBrands(0xf266);

  /// Solid Wind icon
  ///
  /// https://fontawesome.com/icons/wind?style=solid
  /// air, blow, breeze, fall, seasonal, weather
  static const IconData wind = IconDataSolid(0xf72e);

  /// Solid Window Maximize icon
  ///
  /// https://fontawesome.com/icons/window-maximize?style=solid
  /// Maximize, browser, computer, development, expand
  static const IconData solidWindowMaximize = IconDataSolid(0xf2d0);

  /// Regular Window Maximize icon
  ///
  /// https://fontawesome.com/icons/window-maximize?style=regular
  /// Maximize, browser, computer, development, expand
  static const IconData windowMaximize = IconDataRegular(0xf2d0);

  /// Solid Window Minimize icon
  ///
  /// https://fontawesome.com/icons/window-minimize?style=solid
  /// Minimize, browser, collapse, computer, development
  static const IconData solidWindowMinimize = IconDataSolid(0xf2d1);

  /// Regular Window Minimize icon
  ///
  /// https://fontawesome.com/icons/window-minimize?style=regular
  /// Minimize, browser, collapse, computer, development
  static const IconData windowMinimize = IconDataRegular(0xf2d1);

  /// Solid Window Restore icon
  ///
  /// https://fontawesome.com/icons/window-restore?style=solid
  /// browser, computer, development
  static const IconData solidWindowRestore = IconDataSolid(0xf2d2);

  /// Regular Window Restore icon
  ///
  /// https://fontawesome.com/icons/window-restore?style=regular
  /// browser, computer, development
  static const IconData windowRestore = IconDataRegular(0xf2d2);

  /// Brands Windows icon
  ///
  /// https://fontawesome.com/icons/windows?style=brands
  /// microsoft, operating system, os
  static const IconData windows = IconDataBrands(0xf17a);

  /// Solid Wine Bottle icon
  ///
  /// https://fontawesome.com/icons/wine-bottle?style=solid
  /// alcohol, beverage, cabernet, drink, glass, grapes, merlot, sauvignon
  static const IconData wineBottle = IconDataSolid(0xf72f);

  /// Solid Wine Glass icon
  ///
  /// https://fontawesome.com/icons/wine-glass?style=solid
  /// alcohol, bar, beverage, cabernet, drink, glass, grapes, merlot, sauvignon, wine, wine glass
  static const IconData wineGlass = IconDataSolid(0xf4e3);

  /// Solid Wine Glass Empty icon
  ///
  /// https://fontawesome.com/icons/wine-glass-empty?style=solid
  /// alcohol, beverage, cabernet, drink, grapes, merlot, sauvignon
  static const IconData wineGlassEmpty = IconDataSolid(0xf5ce);

  /// Alias wine-glass-alt for icon [wineGlassEmpty]
  @Deprecated('Use "wineGlassEmpty" instead.')
  static const IconData wineGlassAlt = wineGlassEmpty;

  /// Brands wirsindhandwerk icon
  ///
  /// https://fontawesome.com/icons/wirsindhandwerk?style=brands
  static const IconData wirsindhandwerk = IconDataBrands(0xe2d0);

  /// Alias wsh for icon [wirsindhandwerk]
  @Deprecated('Use "wirsindhandwerk" instead.')
  static const IconData wsh = wirsindhandwerk;

  /// Brands Wix icon
  ///
  /// https://fontawesome.com/icons/wix?style=brands
  static const IconData wix = IconDataBrands(0xf5cf);

  /// Brands Wizards of the Coast icon
  ///
  /// https://fontawesome.com/icons/wizards-of-the-coast?style=brands
  /// Dungeons & Dragons, d&d, dnd, fantasy, game, gaming, tabletop
  static const IconData wizardsOfTheCoast = IconDataBrands(0xf730);

  /// Brands Wodu icon
  ///
  /// https://fontawesome.com/icons/wodu?style=brands
  static const IconData wodu = IconDataBrands(0xe088);

  /// Brands Wolf Pack Battalion icon
  ///
  /// https://fontawesome.com/icons/wolf-pack-battalion?style=brands
  static const IconData wolfPackBattalion = IconDataBrands(0xf514);

  /// Solid Won Sign icon
  ///
  /// https://fontawesome.com/icons/won-sign?style=solid
  /// Won Sign, currency
  static const IconData wonSign = IconDataSolid(0xf159);

  /// Alias krw for icon [wonSign]
  @Deprecated('Use "wonSign" instead.')
  static const IconData krw = wonSign;

  /// Alias won for icon [wonSign]
  @Deprecated('Use "wonSign" instead.')
  static const IconData won = wonSign;

  /// Brands WordPress Logo icon
  ///
  /// https://fontawesome.com/icons/wordpress?style=brands
  static const IconData wordpress = IconDataBrands(0xf19a);

  /// Brands Wordpress Simple icon
  ///
  /// https://fontawesome.com/icons/wordpress-simple?style=brands
  static const IconData wordpressSimple = IconDataBrands(0xf411);

  /// Solid Worm icon
  ///
  /// https://fontawesome.com/icons/worm?style=solid
  /// dirt, garden, worm, wriggle
  static const IconData worm = IconDataSolid(0xe599);

  /// Brands WPBeginner icon
  ///
  /// https://fontawesome.com/icons/wpbeginner?style=brands
  static const IconData wpbeginner = IconDataBrands(0xf297);

  /// Brands WPExplorer icon
  ///
  /// https://fontawesome.com/icons/wpexplorer?style=brands
  static const IconData wpexplorer = IconDataBrands(0xf2de);

  /// Brands WPForms icon
  ///
  /// https://fontawesome.com/icons/wpforms?style=brands
  static const IconData wpforms = IconDataBrands(0xf298);

  /// Brands wpressr icon
  ///
  /// https://fontawesome.com/icons/wpressr?style=brands
  /// rendact
  static const IconData wpressr = IconDataBrands(0xf3e4);

  /// Alias rendact for icon [wpressr]
  @Deprecated('Use "wpressr" instead.')
  static const IconData rendact = wpressr;

  /// Solid Wrench icon
  ///
  /// https://fontawesome.com/icons/wrench?style=solid
  /// construction, fix, mechanic, plumbing, settings, spanner, tool, update, wrench
  static const IconData wrench = IconDataSolid(0xf0ad);

  /// Solid X icon
  ///
  /// https://fontawesome.com/icons/x?style=solid
  /// Latin Capital Letter X, Latin Small Letter X, letter
  static const IconData x = IconDataSolid(0x58);

  /// Solid X Ray icon
  ///
  /// https://fontawesome.com/icons/x-ray?style=solid
  /// health, medical, radiological images, radiology, skeleton
  static const IconData xRay = IconDataSolid(0xf497);

  /// Brands X Twitter icon
  ///
  /// https://fontawesome.com/icons/x-twitter?style=brands
  ///   elon,  twitter,  x
  static const IconData xTwitter = IconDataBrands(0xe61b);

  /// Brands Xbox icon
  ///
  /// https://fontawesome.com/icons/xbox?style=brands
  static const IconData xbox = IconDataBrands(0xf412);

  /// Brands Xing icon
  ///
  /// https://fontawesome.com/icons/xing?style=brands
  static const IconData xing = IconDataBrands(0xf168);

  /// Solid Xmark icon
  ///
  /// https://fontawesome.com/icons/xmark?style=solid
  /// Cancellation X, Multiplication Sign, Multiplication X, cancel, close, cross, cross mark, error, exit, incorrect, mark, multiplication, multiply, notice, notification, notify, problem, sign, wrong, x, ×
  static const IconData xmark = IconDataSolid(0xf00d);

  /// Alias close for icon [xmark]
  @Deprecated('Use "xmark" instead.')
  static const IconData close = xmark;

  /// Alias multiply for icon [xmark]
  @Deprecated('Use "xmark" instead.')
  static const IconData multiply = xmark;

  /// Alias remove for icon [xmark]
  @Deprecated('Use "xmark" instead.')
  static const IconData remove = xmark;

  /// Alias times for icon [xmark]
  @Deprecated('Use "xmark" instead.')
  static const IconData times = xmark;

  /// Solid Xmarks Lines icon
  ///
  /// https://fontawesome.com/icons/xmarks-lines?style=solid
  /// barricade, barrier, fence, poison, roadblock
  static const IconData xmarksLines = IconDataSolid(0xe59a);

  /// Solid Y icon
  ///
  /// https://fontawesome.com/icons/y?style=solid
  /// Latin Capital Letter Y, Latin Small Letter Y, letter, yay, yes
  static const IconData y = IconDataSolid(0x59);

  /// Brands Y Combinator icon
  ///
  /// https://fontawesome.com/icons/y-combinator?style=brands
  static const IconData yCombinator = IconDataBrands(0xf23b);

  /// Brands Yahoo Logo icon
  ///
  /// https://fontawesome.com/icons/yahoo?style=brands
  static const IconData yahoo = IconDataBrands(0xf19e);

  /// Brands Yammer icon
  ///
  /// https://fontawesome.com/icons/yammer?style=brands
  static const IconData yammer = IconDataBrands(0xf840);

  /// Brands Yandex icon
  ///
  /// https://fontawesome.com/icons/yandex?style=brands
  static const IconData yandex = IconDataBrands(0xf413);

  /// Brands Yandex International icon
  ///
  /// https://fontawesome.com/icons/yandex-international?style=brands
  static const IconData yandexInternational = IconDataBrands(0xf414);

  /// Brands Yarn icon
  ///
  /// https://fontawesome.com/icons/yarn?style=brands
  static const IconData yarn = IconDataBrands(0xf7e3);

  /// Brands Yelp icon
  ///
  /// https://fontawesome.com/icons/yelp?style=brands
  static const IconData yelp = IconDataBrands(0xf1e9);

  /// Solid Yen Sign icon
  ///
  /// https://fontawesome.com/icons/yen-sign?style=solid
  /// Yen Sign, currency
  static const IconData yenSign = IconDataSolid(0xf157);

  /// Alias cny for icon [yenSign]
  @Deprecated('Use "yenSign" instead.')
  static const IconData cny = yenSign;

  /// Alias jpy for icon [yenSign]
  @Deprecated('Use "yenSign" instead.')
  static const IconData jpy = yenSign;

  /// Alias rmb for icon [yenSign]
  @Deprecated('Use "yenSign" instead.')
  static const IconData rmb = yenSign;

  /// Alias yen for icon [yenSign]
  @Deprecated('Use "yenSign" instead.')
  static const IconData yen = yenSign;

  /// Solid Yin Yang icon
  ///
  /// https://fontawesome.com/icons/yin-yang?style=solid
  /// daoism, opposites, religion, tao, taoism, taoist, yang, yin, yin yang
  static const IconData yinYang = IconDataSolid(0xf6ad);

  /// Brands Yoast icon
  ///
  /// https://fontawesome.com/icons/yoast?style=brands
  static const IconData yoast = IconDataBrands(0xf2b1);

  /// Brands YouTube icon
  ///
  /// https://fontawesome.com/icons/youtube?style=brands
  /// film, video, youtube-play, youtube-square
  static const IconData youtube = IconDataBrands(0xf167);

  /// Solid Z icon
  ///
  /// https://fontawesome.com/icons/z?style=solid
  /// Latin Capital Letter Z, Latin Small Letter Z, letter
  static const IconData z = IconDataSolid(0x5a);

  /// Brands Zhihu icon
  ///
  /// https://fontawesome.com/icons/zhihu?style=brands
  static const IconData zhihu = IconDataBrands(0xf63f);
}
