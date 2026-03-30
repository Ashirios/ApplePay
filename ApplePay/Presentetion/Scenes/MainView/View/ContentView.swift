
import SwiftUI

struct ContentView: View {
    @State var isShowAddView: Bool = false
    @State var payType: PayType = .monthly
    @Binding var path: NavigationPath
    var body: some View {
        ZStack(alignment: .top){
            HeaderView(page: HeaderViewContent(totalPrice: "879 268", title: "Amount of debts", data: "December 15", pageType: .main), action: {
                isShowAddView.toggle()
            }, date: .constant(.now))
            .zIndex(1)
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 19){
                    MainViewContentHeader(payType: $payType)
                    
                    VStack(alignment: .leading, spacing: 19){
                        switch payType{
                        case .monthly:
                            PaymentCard(path: $path)
                            PaymentCard(path: $path)
                            PaymentCard(path: $path)
                            PaymentCard(path: $path)
                        case .oneTime:
                            PaymentCard(path: $path)
                            PaymentCard(path: $path)
                            
                        }
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


