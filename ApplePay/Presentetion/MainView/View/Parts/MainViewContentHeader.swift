import SwiftUI

struct MainViewContentHeader: View {
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                Text("Debts")
                    .gravity(.black, 16)
                    .foregroundStyle(.appBlack)
                Spacer()
                HStack(spacing: 16){
                    Button{
                        
                    }label: {
                        Text("Monthly")
                            .gravity(.black, 12)
                            .foregroundStyle(.appBlue)
                    }
                    
                    Button{
                        
                    }label:{
                        Text("One-time")
                            .gravity(.light, 12)
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

