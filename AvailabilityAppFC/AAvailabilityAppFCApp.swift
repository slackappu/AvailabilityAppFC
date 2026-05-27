

import SwiftUI

@main
struct AvailabilityAppFCApp: App {
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
