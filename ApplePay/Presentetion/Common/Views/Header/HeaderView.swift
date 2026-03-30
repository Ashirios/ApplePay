import SwiftUI

struct HeaderView: View{
    var page: HeaderViewContent
    var action: (() -> Void)?
    @Binding var date : Date
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
                        action?()
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
                        DatePicker("", selection: $date, displayedComponents: [.date])
                            .frame(width:25)
                            .clipped()
                            .overlay{
                                Image(systemName: "calendar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 23)
                                    .padding(7)
                                    .background()
                                    .allowsHitTesting(false)
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

