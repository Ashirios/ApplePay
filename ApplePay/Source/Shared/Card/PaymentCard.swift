import SwiftUI
struct PaymentCard: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 12){
            VStack(alignment: .leading, spacing: 20){
                VStack(alignment: .leading, spacing: 10){
                    
                        Text("Credit card debt")
                            .gravity(.black, 25 )
                        
                        HStack(spacing: 5){
                            Text("$ 32 500")
                                .gravity(.black, 12)
                            Text("/ Remaining balance")
                                .gravity(.light, 12)
                        
                    }
                    
                    
                   
                }
                
                HStack{
                    HStack(spacing: 5){
                        Text("$ 1,200")
                            .gravity(.black, 18)
                        Text("/ Month")
                            .gravity(.regular, 18)
                    }
                    Spacer()
                    HStack(spacing: 5){
                        Text("Due date: ")
                            .gravity(.light, 12)
                        Text("Dec 21")
                            .gravity(.black, 12)
                    }
                    .padding(.horizontal, 11)
                    .padding(.bottom, 4)
                    .background(.white)
                    .foregroundStyle(.appBlue)
                    .clipShape(Capsule())
                }
            }
            HStack(spacing: 20){
                FullButton()
                SolidButton()
            }
            .padding(.top, 12)
            
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
        .padding(.bottom, 20)
        .background(.appBlue)
        .foregroundStyle(Color(.white))
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}
#Preview {
    ContentView()
}
