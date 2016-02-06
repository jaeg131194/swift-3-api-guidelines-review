
struct BluetoothKeyboardReturnType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothKeyboardANSIReturn: BluetoothKeyboardReturnType { get }
var kBluetoothKeyboardISOReturn: BluetoothKeyboardReturnType { get }
var kBluetoothKeyboardJISReturn: BluetoothKeyboardReturnType { get }
var kBluetoothKeyboardNoReturn: BluetoothKeyboardReturnType { get }
class IOBluetoothPasskeyDisplay : NSView {
  var usePasskeyNotificaitons: Bool
  var isIncomingRequest: Bool
  var passkey: String!
  var returnImage: NSImage!
  var returnHighlightImage: NSImage!
  @IBOutlet unowned(unsafe) var centeredView: @sil_unmanaged NSView!
  @IBOutlet unowned(unsafe) var backgroundImageConstraint: @sil_unmanaged NSLayoutConstraint!
  class func sharedDisplayView() -> IOBluetoothPasskeyDisplay!
  func setPasskey(inString: String!, forDevice device: IOBluetoothDevice!, usingSSP isSSP: Bool)
  func advancePasskeyIndicator()
  func retreatPasskeyIndicator()
  func resetPasskeyIndicator()
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
class IOBluetoothAccessibilityIgnoredTextFieldCell : NSTextFieldCell {
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
class IOBluetoothAccessibilityIgnoredImageCell : NSImageCell {
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}