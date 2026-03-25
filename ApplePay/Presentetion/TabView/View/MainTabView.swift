import SwiftUI

struct MainTabView: View{
    init(){
        UITableView.appearance().isHidden = true
    }
    var body: some View{
        ZStack(alignment: .bottom){
            TabView{
                
            }
            HStack{
                
            }
        }
        TabView{
            ContentView()
        }
    }
}
