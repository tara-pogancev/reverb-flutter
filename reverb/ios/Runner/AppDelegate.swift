import Flutter
import AVFoundation
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
   let audioEngine = AVAudioEngine()

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

//let channel = FlutterMethodChannel(name: "audio/effects", binaryMessenger: controller.binaryMessenger)
//
//        channel.setMethodCallHandler { (call, result) in
//            if call.method == "addReverb" {
//                let reverb = AVAudioUnitReverb()
//                reverb.loadFactoryPreset(.mediumHall)
//                reverb.wetDryMix = 50
//                self.audioEngine.attach(reverb)
//                self.audioEngine.connect(self.audioEngine.mainMixerNode, to: reverb, format: nil)
//                self.audioEngine.connect(reverb, to: self.audioEngine.outputNode, format: nil)
//
//                do {
//                    try self.audioEngine.start()
//                    result("Reverb applied")
//                } catch {
//                    result(FlutterError(code: "ERROR", message: "Failed to apply reverb", details: nil))
//                }
//            } else {
//                result(FlutterMethodNotImplemented)
//            }
//        }
//
//        channel.setMethodCallHandler { (call, result) in
//            if call.method == "removeReverb" {
//                // Ensure the audio engine is stopped before making changes
//                self.audioEngine.stop()
//        
//                // Reconfigure audio connections to bypass the reverb node
//                self.audioEngine.disconnectNodeOutput(self.audioEngine.mainMixerNode)
//                self.audioEngine.disconnectNodeOutput(self.audioEngine.outputNode)
//
//                self.audioEngine.connect(self.audioEngine.mainMixerNode, to: self.audioEngine.outputNode, format: nil)
//
//                do {
//                    try self.audioEngine.start()
//                    result("Reverb removed")
//                } catch {
//                    result(FlutterError(code: "ERROR", message: "Failed to remove reverb", details: nil))
//                }
//            } else {
//                result(FlutterMethodNotImplemented)
//            }
//        }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
