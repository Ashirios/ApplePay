
import SwiftUI

struct ContentView: View {
    @State var isShowAddView: Bool = false
    var body: some View {
        ZStack(alignment: .top){
            HeaderView(page: HeaderViewContent(totalPrice: "879 268", title: "Amount of debts", data: "December 15", pageType: .main), action: {
                isShowAddView.toggle()
            })
            .zIndex(1)
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 19){
                    MainViewContentHeader()
                    
                    VStack(alignment: .leading, spacing: 19){
                        PaymentCard()
                        PaymentCard()
                        PaymentCard()
                        PaymentCard()
                    }
                }
                
                .padding(.top, 140)
                .padding(.bottom, 70)
                
            }
        }
        .padding(.horizontal, 20)
        .background(.white)
        .sheet(isPresented: $isShowAddView){
            AddView()
        }
      
        
    }
}


#Preview {
    ContentView()
}
