import SwiftUI

struct PaymentsView: View{
    var body: some View{
        ZStack(alignment: .top){
            HeaderView(page: HeaderViewContent(totalPrice: "123 421", title: "Payments", data: "December 15", pageType: .paymentList), action: {
                print("show calendar")
            })
                .zIndex(1)
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 19){
                        PaymentCard()
                        PaymentCard()
                    
                }
                
                .padding(.top, 140)
                .padding(.bottom, 70)
                
            }
        }
        .background(.white)
        .padding(.horizontal, 20)
    }
}

#Preview {
    MainTabView()
}
