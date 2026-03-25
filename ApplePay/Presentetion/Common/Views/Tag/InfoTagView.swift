import SwiftUI

struct InfoTagView: View{
    var text: String
    var body: some View{
        Text(text)
            .gravity(.black, 19)
            .foregroundStyle(.white)
            .padding(.horizontal, 20)
            .padding(.bottom, 9)
            .padding(.top, 8)
            .background(.appBlue)
            .cornerRadius(40)
           
    }
}
