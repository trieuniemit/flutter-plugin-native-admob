import Flutter
import UIKit

public class SwiftNativeFlutterAdmobPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "native_flutter_admob", binaryMessenger: registrar.messenger())
    let instance = SwiftNativeFlutterAdmobPluginPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
