// MARK: I made some View instead of any View

import SwiftUI

extension View {
    func gravity(_ font: Gravity = .regular,_ size: CGFloat = 14) ->some  View{
        self
            .font(.custom(font.rawValue, size: size))
    }
    
}
