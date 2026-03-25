import SwiftUI

struct DetailsView: View{
    @State var isNotificationSelected: Bool = false
    var body : some View{
        VStack(alignment: .leading){
            header
            
            VStack(alignment: .leading){
                VStack(alignment: .leading, spacing: -3){
                    Text("$ 82,344")
                        .gravity(.black, 27)
                    Text("Car loan")
                        .gravity(.black, 16)
                }
                .padding(.vertical, 30)
                
                VStack(alignment: .leading, spacing: 26){
                    VStack(alignment: .leading, spacing: 17){
                        HStack{
                            InfoTagView(text: "$ 68,770")
                            InfoTagView(text: "$ 89,467")
                        }
                        Text("This loan is provided for the purchase of a personal vehicle. The monthly payment is fixed and includes principal and interest according to the repayment schedule.")
                            .gravity(.light, 14)
                    }
                    
                    VStack(alignment: .leading, spacing: 10){
                        Divider()
                            .background(.appDarkBlue)
                        
                        HStack{
                            Text("Next Payment")
                                .gravity(.black, 14)
                            
                            Spacer()
                            HStack(spacing: 4){
                                Text("paid")
                                    .gravity(.black, 14)
                                Text("$ 1,443")
                                    .gravity(.black, 14)
                                
                            }
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(.appBlue)
                            .clipShape(Capsule())
                            .foregroundStyle(.white)
                        }
                        .padding(.horizontal, 10)
                        
                        Divider()
                            .background(.appDarkBlue)
                        
                        HStack{
                            Text("Payment notice")
                                .gravity(.black, 14)
                                .offset(y: -4)
                            Spacer()
                            RadioItemButtonView(isSelected: $isNotificationSelected)
                        }
                        .padding(.horizontal, 10)
                    }
                }
                
            }
            
            Spacer()
            
            VStack(alignment: .leading){
                SolidButton(text: "Pay", solidColor: .appBlue, textColor: .appBlue, isFull: true)
                SolidButton(text: "Delete last payment", solidColor: .appBlue, textColor: .appBlue)
            }
        }
        .padding(.horizontal, 20)
        .background(.white)
    }
}


#Preview {
    DetailsView()
}

extension DetailsView{
    var header: some View {
        HStack {
            Button{
                
            }label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                   
            }
            .padding(.trailing, 8)
            Spacer()
            Text("Payment Details")
                .gravity(.black, 23)
            Spacer()
            
            Button{
                
            }label: {
                Image(systemName: "trash")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
            }
            
            
        }
    }
}

