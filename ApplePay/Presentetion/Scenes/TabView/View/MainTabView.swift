import SwiftUI

struct MainTabView: View{
    @State var selectionPage: TabPage = .paymentList
    init(){
        UITableView.appearance().isHidden = true
    }
    var body: some View{
        ZStack(alignment: .bottom){
            TabView(selection: $selectionPage){
                ContentView()
                    .tag(TabPage.main)
                PaymentsView()
                    .tag(TabPage.paymentList)
            }
            
            
            
            HStack(spacing: 62 ){
                TabItem(image: "house", text: "Main",pageType: .main, selected: $selectionPage)
                TabItem(image: "list.bullet.rectangle.portrait", text: "Paymnets",pageType: .paymentList, selected: $selectionPage)
        
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .padding(.bottom, -20)
            .background(.appBlue)
        
        
           
            
        }
        
    }
}

#Preview {
    MainTabView()
}

struct TabItem: View{
    var image: String
    var text: String
    var pageType: TabPage
    @Binding var selected: TabPage
    var body: some View{
        Button{
            selected = pageType
        } label: {
           
                VStack{
                    Image(systemName: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    Text(text)
                        .gravity(.light, 16)
                }
                .foregroundStyle(pageType == selected ? .appBlue : .white)
                .padding(.vertical, 5)
                .padding(.horizontal, 20)
                .background(selected == pageType ? Color.white : .appBlue)
                .clipShape(RoundedRectangle(cornerRadius: 35))
               
            
           
        }
       
    }
}
