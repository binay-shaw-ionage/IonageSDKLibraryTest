import SwiftUI

public struct SDKView: View {
    public init() {}
    
    @available(macOS 10.15, *)
    @available(iOS 13.0, *)
    public var body: some View {
        VStack {
            Text("Welcome to Screen B")
                .font(.largeTitle)
                .padding()
            Text("This is your home or login screen.")
                .font(.subheadline)
        }
    }
}
