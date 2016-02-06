
@available(iOS 4.1, *)
class AVAssetWriterInput : Object {
  convenience init(mediaType: String, outputSettings: [String : AnyObject]?)
  @available(iOS 6.0, *)
  init(mediaType: String, outputSettings: [String : AnyObject]?, sourceFormatHint: CMFormatDescription?)
  var mediaType: String { get }
  var outputSettings: [String : AnyObject]? { get }
  @available(iOS 6.0, *)
  var sourceFormatHint: CMFormatDescription? { get }
  var metadata: [AVMetadataItem]
  var isReadyForMoreMediaData: Bool { get }
  var expectsMediaDataInRealTime: Bool
  func requestMediaDataWhenReadyOn(queue: dispatch_queue_t, usingBlock block: () -> Void)
  func append(sampleBuffer: CMSampleBuffer) -> Bool
  func markAsFinished()
}
extension AVAssetWriterInput {
  @available(iOS 7.0, *)
  var languageCode: String?
  @available(iOS 7.0, *)
  var extendedLanguageTag: String?
}
extension AVAssetWriterInput {
  @available(iOS 7.0, *)
  var naturalSize: CGSize
  var transform: CGAffineTransform
}
extension AVAssetWriterInput {
  @available(iOS 7.0, *)
  var preferredVolume: Float
}
extension AVAssetWriterInput {
  @available(iOS 7.0, *)
  var marksOutputTrackAsEnabled: Bool
  @available(iOS 4.3, *)
  var mediaTimeScale: CMTimeScale
  @available(iOS 8.0, *)
  var preferredMediaChunkDuration: CMTime
  @available(iOS 8.0, *)
  var preferredMediaChunkAlignment: Int
  @available(iOS 8.0, *)
  @NSCopying var sampleReferenceBaseURL: URL?
}
extension AVAssetWriterInput {
  @available(iOS 7.0, *)
  func canAddTrackAssociationWithTrackOf(input: AVAssetWriterInput, type trackAssociationType: String) -> Bool
  @available(iOS 7.0, *)
  func addTrackAssociationWithTrackOf(input: AVAssetWriterInput, type trackAssociationType: String)
}
extension AVAssetWriterInput {
  @available(iOS 8.0, *)
  var performsMultiPassEncodingIfSupported: Bool
  @available(iOS 8.0, *)
  var canPerformMultiplePasses: Bool { get }
  @available(iOS 8.0, *)
  var currentPassDescription: AVAssetWriterInputPassDescription? { get }
  @available(iOS 8.0, *)
  func respondToEachPassDescriptionOn(queue: dispatch_queue_t, usingBlock block: dispatch_block_t)
  @available(iOS 8.0, *)
  func markCurrentPassAsFinished()
}
@available(iOS 8.0, *)
class AVAssetWriterInputPassDescription : Object {
  var sourceTimeRanges: [Value] { get }
}
@available(iOS 4.1, *)
class AVAssetWriterInputPixelBufferAdaptor : Object {
  init(assetWriterInput input: AVAssetWriterInput, sourcePixelBufferAttributes: [String : AnyObject]? = [:])
  var assetWriterInput: AVAssetWriterInput { get }
  var sourcePixelBufferAttributes: [String : AnyObject]? { get }
  var pixelBufferPool: CVPixelBufferPool? { get }
  func append(pixelBuffer: CVPixelBuffer, withPresentationTime presentationTime: CMTime) -> Bool
}
@available(iOS 8.0, *)
class AVAssetWriterInputMetadataAdaptor : Object {
  init(assetWriterInput input: AVAssetWriterInput)
  var assetWriterInput: AVAssetWriterInput { get }
  func append(timedMetadataGroup: AVTimedMetadataGroup) -> Bool
}