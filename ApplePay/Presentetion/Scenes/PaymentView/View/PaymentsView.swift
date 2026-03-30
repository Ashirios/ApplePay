import SwiftUI

struct PaymentsView: View{
    @State var date: Date = .now
    @Binding var path: NavigationPath
    var body: some View{
        ZStack(alignment: .top){
            HeaderView(page: HeaderViewContent(totalPrice: "123 421", title: "Payments", data: date.withoutDayMonthYear, pageType: .paymentList), date: $date)
                .zIndex(1)
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 19){
                        PaymentCard(path: $path)
                        PaymentCard(path: $path)
                    
                }
                
                .padding(.top, 140)
                .padding(.bottom, 70)
                
            }
        }
        .background(.white)
        .padding(.horizontal, 20)
    }
}

