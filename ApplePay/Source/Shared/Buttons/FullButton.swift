import SwiftUI

struct FullButton: View{
    var body: some View{
        Button{
            
        }label: {
            Text("Pay")
                .gravity(.light, 20)
                .foregroundColor(.appBlue)
                .padding(.top, 7)
                .padding(.bottom, 7)
                .frame(maxWidth: .infinity)
                .background(Color(.white))
                .clipShape(Capsule())
        }
    }
}
//#Preview {
//    ContentView()
//}
