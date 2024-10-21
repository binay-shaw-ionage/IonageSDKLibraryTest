import SwiftUI

public struct SDKView: View {
    
    let apiKey: String
    let mapsKey: String
    
//    public init() {}
    
    @available(iOS 13.0, *)
    public var body: some View {
        VStack {
            Text("Welcome to Screen B")
                .font(.largeTitle)
                .padding()
            Text("This is your home or login screen.")
                .font(.subheadline)
            
            VStack {
                Text("API Key: \(apiKey)")
                Text("Maps Key: \(mapsKey)")
            }
        }
    }
}
