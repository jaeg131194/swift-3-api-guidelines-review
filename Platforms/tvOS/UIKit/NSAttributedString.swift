
@available(tvOS 6.0, *)
let NSFontAttributeName: String
@available(tvOS 6.0, *)
let NSParagraphStyleAttributeName: String
@available(tvOS 6.0, *)
let NSForegroundColorAttributeName: String
@available(tvOS 6.0, *)
let NSBackgroundColorAttributeName: String
@available(tvOS 6.0, *)
let NSLigatureAttributeName: String
@available(tvOS 6.0, *)
let NSKernAttributeName: String
@available(tvOS 6.0, *)
let NSStrikethroughStyleAttributeName: String
@available(tvOS 6.0, *)
let NSUnderlineStyleAttributeName: String
@available(tvOS 6.0, *)
let NSStrokeColorAttributeName: String
@available(tvOS 6.0, *)
let NSStrokeWidthAttributeName: String
@available(tvOS 6.0, *)
let NSShadowAttributeName: String
@available(tvOS 7.0, *)
let NSTextEffectAttributeName: String
@available(tvOS 7.0, *)
let NSAttachmentAttributeName: String
@available(tvOS 7.0, *)
let NSLinkAttributeName: String
@available(tvOS 7.0, *)
let NSBaselineOffsetAttributeName: String
@available(tvOS 7.0, *)
let NSUnderlineColorAttributeName: String
@available(tvOS 7.0, *)
let NSStrikethroughColorAttributeName: String
@available(tvOS 7.0, *)
let NSObliquenessAttributeName: String
@available(tvOS 7.0, *)
let NSExpansionAttributeName: String
@available(tvOS 7.0, *)
let NSWritingDirectionAttributeName: String
@available(tvOS 6.0, *)
let NSVerticalGlyphFormAttributeName: String
@available(tvOS 6.0, *)
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StyleNone
  case StyleSingle
  @available(tvOS 7.0, *)
  case StyleThick
  @available(tvOS 7.0, *)
  case StyleDouble
  @available(tvOS 7.0, *)
  static var PatternSolid: NSUnderlineStyle { get }
  @available(tvOS 7.0, *)
  case PatternDot
  @available(tvOS 7.0, *)
  case PatternDash
  @available(tvOS 7.0, *)
  case PatternDashDot
  @available(tvOS 7.0, *)
  case PatternDashDotDot
  @available(tvOS 7.0, *)
  case ByWord
}
@available(tvOS 9.0, *)
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
@available(tvOS 7.0, *)
let NSTextEffectLetterpressStyle: String
extension MutableAttributedString {
  @available(tvOS 7.0, *)
  func fixAttributesIn(range: NSRange)
}
@available(tvOS 7.0, *)
let NSPlainTextDocumentType: String
@available(tvOS 7.0, *)
let NSRTFTextDocumentType: String
@available(tvOS 7.0, *)
let NSRTFDTextDocumentType: String
@available(tvOS 7.0, *)
let NSHTMLTextDocumentType: String
@available(tvOS 7.0, *)
let NSTextLayoutSectionOrientation: String
@available(tvOS 7.0, *)
let NSTextLayoutSectionRange: String
@available(tvOS 7.0, *)
let NSDocumentTypeDocumentAttribute: String
@available(tvOS 7.0, *)
let NSCharacterEncodingDocumentAttribute: String
@available(tvOS 7.0, *)
let NSDefaultAttributesDocumentAttribute: String
@available(tvOS 7.0, *)
let NSPaperSizeDocumentAttribute: String
@available(tvOS 7.0, *)
let NSPaperMarginDocumentAttribute: String
@available(tvOS 7.0, *)
let NSViewSizeDocumentAttribute: String
@available(tvOS 7.0, *)
let NSViewZoomDocumentAttribute: String
@available(tvOS 7.0, *)
let NSViewModeDocumentAttribute: String
@available(tvOS 7.0, *)
let NSReadOnlyDocumentAttribute: String
@available(tvOS 7.0, *)
let NSBackgroundColorDocumentAttribute: String
@available(tvOS 7.0, *)
let NSHyphenationFactorDocumentAttribute: String
@available(tvOS 7.0, *)
let NSDefaultTabIntervalDocumentAttribute: String
@available(tvOS 7.0, *)
let NSTextLayoutSectionsAttribute: String
extension AttributedString {
  @available(tvOS 9.0, *)
  init(url: URL, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(tvOS 7.0, *)
  init(data: Data, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(tvOS 7.0, *)
  func dataFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) throws -> Data
  @available(tvOS 7.0, *)
  func fileWrapperFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) throws -> FileWrapper
}
extension MutableAttributedString {
  @available(tvOS 9.0, *)
  func readFrom(url: URL, options opts: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(tvOS 7.0, *)
  func readFrom(data: Data, options opts: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension AttributedString {
  @available(tvOS 9.0, *)
  func containsAttachmentsIn(range: NSRange) -> Bool
}
extension AttributedString {
}
extension MutableAttributedString {
}