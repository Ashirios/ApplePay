import SwiftUI

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
