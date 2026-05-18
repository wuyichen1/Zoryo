import UIKit
import Flutter
import flutter_local_notifications

@main
@objc class AppDelegate: FlutterAppDelegate {

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
        GeneratedPluginRegistrant.register(with: registry)
    }

    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().delegate = self as UNUserNotificationCenterDelegate
    }

    if #available(iOS 10.0, *) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            if granted {
                application.registerForRemoteNotifications()
            } else {
            }
        }
    } else {
        let settings = UIUserNotificationSettings(types: [.alert, .sound, .badge], categories: nil)
        application.registerUserNotificationSettings(settings)
        application.registerForRemoteNotifications()
    }


    GeneratedPluginRegistrant.register(with: self)

    let controller = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: "keyboard_language", binaryMessenger: controller.binaryMessenger)
    
    channel.setMethodCallHandler { (call, result) in
      if call.method == "gQm4bg4C6vGdhA6E" {
        self.getAllKeyboardLanguages(result: result)
      } else {
        result(FlutterMethodNotImplemented)
      }
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func getAllKeyboardLanguages(result: @escaping FlutterResult) {
    var languages: [String] = []
    
    let inputModes = UITextInputMode.activeInputModes

    for inputMode in inputModes {
        if let language = inputMode.primaryLanguage {
            languages.append(language)
        }
    }

    if languages.isEmpty {
        result([])
    } else {
        result(languages)
    }
  }
  override func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    let RetrographicSubpixel = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
    let RetrographicSubpixelController : FlutterViewController = window?.rootViewController as! FlutterViewController
    let RetrographicSubpixelChannel = FlutterMethodChannel(name: "collarboneAccent", binaryMessenger: RetrographicSubpixelController.binaryMessenger)
    RetrographicSubpixelChannel.invokeMethod("RetrographicSubpixelAntiAliasingReceived", arguments: RetrographicSubpixel)

    RetrographicSubpixelChannel.setMethodCallHandler { (call, result) in
      if call.method == "RetrographicSubpixelAntiAliasingReceivedRequest" {
          result(RetrographicSubpixel)
      }
    }
  }
}