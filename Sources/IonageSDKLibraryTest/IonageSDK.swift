import SwiftUI
import UIKit


@available(iOS 13.0, *)
public class IonageSDK {
    private var apiKey: String = ""
    private var mapsKey: String = ""

    public init() {}

    public func setApiKey(_ key: String) -> IonageSDK {
        self.apiKey = key
        return self
    }

    public func setMapsKey(_ key: String) -> IonageSDK {
        self.mapsKey = key
        return self
    }

    public func build() -> IonageSDK {
        return self
    }

    @MainActor public func launch() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let rootViewController = windowScene.windows.first?.rootViewController {
            let sdkView = UIHostingController(rootView: SDKView(apiKey: apiKey, mapsKey: mapsKey))
            sdkView.modalPresentationStyle = .fullScreen
            rootViewController.present(sdkView, animated: true, completion: nil)
        }
    }
}
