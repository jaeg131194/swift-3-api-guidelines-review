
@available(OSX 10.7, *)
let AVCaptureDeviceWasConnectedNotification: String
@available(OSX 10.7, *)
let AVCaptureDeviceWasDisconnectedNotification: String
@available(OSX 10.7, *)
class AVCaptureDevice : Object {
  class func devices() -> [AnyObject]!
  class func devicesWith(mediaType mediaType: String!) -> [AnyObject]!
  class func defaultDeviceWith(mediaType mediaType: String!) -> AVCaptureDevice!
  /*not inherited*/ init!(uniqueID deviceUniqueID: String!)
  var uniqueID: String! { get }
  var modelID: String! { get }
  var localizedName: String! { get }
  @available(OSX 10.9, *)
  var manufacturer: String! { get }
  @available(OSX 10.7, *)
  var transportType: Int32 { get }
  func hasMediaType(mediaType: String!) -> Bool
  func lockForConfiguration() throws
  func unlockForConfiguration()
  func supportsAVCaptureSessionPreset(preset: String!) -> Bool
  var isConnected: Bool { get }
  @available(OSX 10.7, *)
  var isInUseByAnotherApplication: Bool { get }
  @available(OSX 10.7, *)
  var isSuspended: Bool { get }
  @available(OSX 10.7, *)
  var linkedDevices: [AnyObject]! { get }
  @available(OSX 10.7, *)
  var formats: [AnyObject]! { get }
  @available(OSX 10.7, *)
  var activeFormat: AVCaptureDeviceFormat!
  @available(OSX 10.7, *)
  var activeVideoMinFrameDuration: CMTime
  @available(OSX 10.9, *)
  var activeVideoMaxFrameDuration: CMTime
  @available(OSX 10.7, *)
  var inputSources: [AnyObject]! { get }
  @available(OSX 10.7, *)
  var activeInputSource: AVCaptureDeviceInputSource!
  init()
}
@available(OSX 10.7, *)
enum AVCaptureDevicePosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Back
  case Front
}
extension AVCaptureDevice {
  var position: AVCaptureDevicePosition { get }
}
@available(OSX 10.7, *)
enum AVCaptureFlashMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case On
  case Auto
}
extension AVCaptureDevice {
  var hasFlash: Bool { get }
  func isFlashModeSupported(flashMode: AVCaptureFlashMode) -> Bool
  var flashMode: AVCaptureFlashMode
}
@available(OSX 10.7, *)
enum AVCaptureTorchMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case On
  case Auto
}
let AVCaptureMaxAvailableTorchLevel: Float
extension AVCaptureDevice {
  var hasTorch: Bool { get }
  func isTorchModeSupported(torchMode: AVCaptureTorchMode) -> Bool
  var torchMode: AVCaptureTorchMode
}
@available(OSX 10.7, *)
enum AVCaptureFocusMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Locked
  case AutoFocus
  case ContinuousAutoFocus
}
extension AVCaptureDevice {
  func isFocusModeSupported(focusMode: AVCaptureFocusMode) -> Bool
  var focusMode: AVCaptureFocusMode
  var isFocusPointOfInterestSupported: Bool { get }
  var focusPointOfInterest: CGPoint
  var isAdjustingFocus: Bool { get }
}
@available(OSX 10.7, *)
enum AVCaptureExposureMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Locked
  case AutoExpose
  case ContinuousAutoExposure
}
extension AVCaptureDevice {
  func isExposureModeSupported(exposureMode: AVCaptureExposureMode) -> Bool
  var exposureMode: AVCaptureExposureMode
  var isExposurePointOfInterestSupported: Bool { get }
  var exposurePointOfInterest: CGPoint
  var isAdjustingExposure: Bool { get }
}
@available(OSX 10.7, *)
enum AVCaptureWhiteBalanceMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Locked
  case AutoWhiteBalance
  case ContinuousAutoWhiteBalance
}
extension AVCaptureDevice {
  func isWhiteBalanceModeSupported(whiteBalanceMode: AVCaptureWhiteBalanceMode) -> Bool
  var whiteBalanceMode: AVCaptureWhiteBalanceMode
  var isAdjustingWhiteBalance: Bool { get }
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
typealias AVCaptureDeviceTransportControlsSpeed = Float
@available(OSX 10.7, *)
enum AVCaptureDeviceTransportControlsPlaybackMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotPlayingMode
  case PlayingMode
}
extension AVCaptureDevice {
  @available(OSX 10.7, *)
  var transportControlsSupported: Bool { get }
  @available(OSX 10.7, *)
  var transportControlsPlaybackMode: AVCaptureDeviceTransportControlsPlaybackMode { get }
  @available(OSX 10.7, *)
  var transportControlsSpeed: AVCaptureDeviceTransportControlsSpeed { get }
  @available(OSX 10.7, *)
  func setTransportControlsPlaybackMode(mode: AVCaptureDeviceTransportControlsPlaybackMode, speed: AVCaptureDeviceTransportControlsSpeed)
}
extension AVCaptureDevice {
}
@available(OSX 10.7, *)
class AVFrameRateRange : Object {
  var minFrameRate: Float64 { get }
  var maxFrameRate: Float64 { get }
  var maxFrameDuration: CMTime { get }
  var minFrameDuration: CMTime { get }
  init()
}
@available(OSX 10.7, *)
class AVCaptureDeviceFormat : Object {
  var mediaType: String! { get }
  var formatDescription: CMFormatDescription! { get }
  var videoSupportedFrameRateRanges: [AnyObject]! { get }
  init()
}
@available(OSX 10.7, *)
class AVCaptureDeviceInputSource : Object {
  var inputSourceID: String! { get }
  var localizedName: String! { get }
  init()
}