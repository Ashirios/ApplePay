import SwiftUI

struct HeaderView: View{
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                Text("734 456 $")
                    .gravity(.black, 27)
                    .foregroundStyle(.appBlack)
                    .offset(y: -2)
                Spacer()
                Button{
                    
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
            VStack(alignment: .leading){
                Text("Amount of debt")
                    .gravity(.black, 27)
                    .foregroundStyle(.appBlack)
                Text("December 15")
                    .gravity(.light, 16)
                    .foregroundStyle(.appBlack)
            }
            .foregroundStyle(.white)
        }
        .padding(.top, 10)
        .background(.white)
       
    }
    
}

//#Preview {
//    ContentView()
//}
