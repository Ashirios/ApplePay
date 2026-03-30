import SwiftUI

struct MainTabView: View{
    @State var selectionPage: TabPage = .main
    @Binding var path: NavigationPath
    init(path: Binding<NavigationPath>){
        UITableView.appearance().isHidden = true
        self._path = path
    }
    var body: some View{
        ZStack(alignment: .bottom){
            TabView(selection: $selectionPage){
                ContentView(path: $path)
                    .tag(TabPage.main)
                PaymentsView(path: $path)
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

//#Preview {
//    MainTabView()
//}

