import SwiftUI

struct FullButton: View{
    var text: String
    var fillColor: Color
    var textColor: Color
    var body: some View{
        Button{
            
        }label: {
            Text(text)
                .gravity(.black, 20)
                .foregroundColor(textColor)
                .padding(.top, 7)
                .padding(.bottom, 7)
                .frame(maxWidth: .infinity)
                .background(fillColor)
                .clipShape(Capsule())
        }
    }
}
