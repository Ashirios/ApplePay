
import SwiftUI
import Foundation



struct AddView: View {
    
    @State var nameText: String = ""
    @State var isNotificationSelected = false
    @State var payType: PayType = .oneTime
    @State var date: Date = .now
    @State var isShowCalendar = false
    @State var isAdded: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 27){
            Text("Add paymnet")
                .gravity(.black, 23)
            
            if !isAdded {
                addViewContent
            }else{
                Spacer()
                addSuccess
                Spacer()
            }
            
            
            
            
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
       
    }
}

#Preview {
    AddView()
}

extension AddView {
    var addViewContent: some View {
        VStack(alignment: .center, spacing: 27){
            VStack(alignment: .leading, spacing: 25){
               
                    
                    HStack(spacing: 23){
                        SolidButton(text: "Every month", solidColor: .appBlue, textColor: .appBlue, isFull: payType == .monthly){
                            payType = .monthly
                        }
                        SolidButton(text: "one-time", solidColor: .appBlue, textColor: .appBlue, isFull: payType == .oneTime){
                            payType = .oneTime
                        }
                    
                }
               
                
                switch payType {
                case .monthly:
                    HStack(spacing: 4){
                       
                        DatePicker("", selection: $date, displayedComponents: [.date])
                            .frame(width:25)
                            .clipped()
                            .overlay{
                                Text("\(date.day)")
                                    .underline()
                                    .gravity(.black, 16)
                                    .foregroundStyle(.appBlack)
                                    .frame(width:27)
                                    .padding(.vertical, 10)
                                    .background(.white)
                                    .allowsHitTesting(false)
                            }
                        
                        Text("- th")
                            .gravity(.black, 16)
                            .foregroundStyle(.appBlack)
                    }
                case .oneTime:
                    HStack(spacing: 4){
                        Text("until")
                            .gravity(.black, 16)
                            .foregroundStyle(.appBlack)
                        
                        
                        DatePicker("", selection: $date, displayedComponents: [.date])
                            .frame(width: 113)
                            .clipped()
                            .overlay{
                                Text(date.dayMonthYear)
                                    .underline()
                                    .gravity(.black, 16)
                                    .foregroundStyle(.appBlack)
                                    .frame(width: 132)
                                    .padding(.vertical, 10)
                                    .background(.white)
                                    .allowsHitTesting(false)
                            }
                       
                        
                       
                    }
                }
                
            }
            
            VStack(alignment: .leading, spacing: 12){
                FieldView(placehlder: "Purpose of payment", text: $nameText)
                switch payType {
                case .monthly:
                    HStack(spacing: 10){
                        FieldView(placehlder: "Total amount", text: $nameText)
                        FieldView(placehlder: "Monthly payment", text: $nameText)
                    }
                case .oneTime:
                    FieldView(placehlder: "Total amount", text: $nameText)
                }
                FieldView(placehlder: "Description", text: $nameText, isTextField: false)
            }
            HStack{
                Text("Payment notice")
                    .gravity(.black, 14)
                    .offset(y: -4)
                Spacer()
                RadioItemButtonView(isSelected: $isNotificationSelected)
            }
            .padding(.horizontal, 10)
            
            Spacer()
            FullButton(text: "Add", fillColor: .appBlue, textColor: .white)
        }
    }
}

extension AddView{
    var addSuccess: some View{
        VStack(spacing: 55){
            Image(systemName: "checkmark.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 127, height: 127)
                .foregroundStyle(.appBlue)
            Text("Payment added")
                .gravity(.black, 22)
                .foregroundStyle(.appBlue)
        }
    }
}
