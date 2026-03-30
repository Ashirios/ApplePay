import SwiftUI

struct MainViewContentHeader: View {
    @Binding var payType: PayType
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                Text("Debts")
                    .gravity(.black, 16)
                    .foregroundStyle(.appBlack)
                Spacer()
                HStack(spacing: 16){
                    Button{
                        payType = .monthly
                    }label: {
                        Text("Monthly")
                            .gravity(payType == .monthly ? .black : .light, 17)
                            .foregroundStyle(.appBlue)
                    }
                    
                    Button{
                        payType = .oneTime
                    }label:{
                        Text("One-time")
                            .gravity(payType == .oneTime ? .black : .light, 17)
                            .foregroundStyle(.appBlue)
                    }
                }
            }
            HStack(spacing: 4){
                Text("$ 30,000 /")
                    .gravity(.black, 14)
                Text("Every month")
                    .gravity(.regular, 12)
            }
            .foregroundStyle(.appBlack)
        }
    }
}
//#Preview {
//    ContentView()
//}

