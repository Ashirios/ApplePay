

import SwiftUI

@main
struct ApplePayApp: App {
    @State var path: NavigationPath = .init()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path ){
                MainTabView(path: $path)
                    .navigationBarHidden(true)
                    .navigationDestination(for: NavigationPage.self){ page in
                        switch page{
                        case .details:
                            DetailsView(path: $path)
                        }
                        
                    }
            }
        }
    }
}
