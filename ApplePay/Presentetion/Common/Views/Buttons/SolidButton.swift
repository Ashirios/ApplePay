import SwiftUI

struct SolidButton: View{
    var text: String
    var solidColor: Color
    var textColor: Color
    var isFull: Bool = false
    var action: (() -> Void)?
    var body: some View{
        Button{
            action?()
        }label: {
            Text(text)
                .gravity(.black, 20 )
                .padding(.top,7)
                .padding(.bottom, 7)
                .frame(maxWidth: .infinity)
                .foregroundStyle(isFull ? .white : textColor)
                .background(isFull ? solidColor : Color(.clear))
                .clipShape(Capsule())
                .overlay{
                    Capsule()
                        .stroke(solidColor, lineWidth: 1)
                }
        }
        
    }
}
