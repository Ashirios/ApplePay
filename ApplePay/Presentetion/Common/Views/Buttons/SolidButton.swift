import SwiftUI

struct SolidButton: View{
    var text: String
    var solidColor: Color
    var textColor: Color
    var body: some View{
        Button{
            
        }label: {
            Text(text)
                .gravity(.black, 20 )
                .padding(.top,7)
                .padding(.bottom, 7)
                .frame(maxWidth: .infinity)
                .foregroundStyle(textColor)
                .overlay{
                    Capsule()
                        .stroke(solidColor, lineWidth: 1)
                }
        }
        
    }
}
