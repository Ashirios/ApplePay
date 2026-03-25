import SwiftUI

struct HeaderView: View{
    var page: HeaderViewContent
    var action: () -> Void
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                Text("\(page.totalPrice) $")
                    .gravity(.black, 27)
                    .foregroundStyle(.appBlack)
                    .offset(y: -2)
                Spacer()
                if page.pageType == .main{
                    Button{
                        action()
                    }label:{
                        ZStack{
                            Circle()
                                .fill(.appYellow)
                                .frame(width: 40)
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20)
                                .foregroundStyle(.white)
                        }
                    }
                }
                
            }
            VStack(alignment: .leading){
                HStack{
                    Text(page.title)
                        .gravity(.black, 27)
                        .foregroundStyle(.appBlack)
                    Spacer()
                    if page.pageType == .paymentList{
                        Button{
                            action()
                        }label: {
                            Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 23)
                                .padding(.top, 4)
                        }
                    }
                    
                }
                
                Text(page.data)
                    .gravity(.light, 16)
                    .foregroundStyle(.appBlack)
            }
            .foregroundStyle(.appYellow)
        }
        .padding(.top, 10)
        .padding(.bottom, 10)
        .background(.white)
       
    }
    
}

#Preview {
   MainTabView()
}
