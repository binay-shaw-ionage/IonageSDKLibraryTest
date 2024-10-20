//
//  File.swift
//  IonageSDKLibraryTest
//
//  Created by Binay Shaw on 20/10/24.
//

import Foundation
import SwiftUI

@available(macOS 10.15, *)
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

    @MainActor public func launch() -> some View {
        SDKView(apiKey: apiKey, mapsKey: mapsKey)
    }
}

