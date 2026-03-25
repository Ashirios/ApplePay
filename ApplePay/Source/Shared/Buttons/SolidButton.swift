import SwiftUI

struct SolidButton: View{
    var body: some View{
        Button{
            
        }label: {
            Text("Details")
                .gravity(.light, 20 )
                .padding(.top,7)
                .padding(.bottom, 7)
                .frame(maxWidth: .infinity)
                .foregroundStyle(Color(.white))
                .overlay{
                    Capsule()
                        .stroke(Color(.white), lineWidth: 1)
                }
        }
        
    }
}
