import SwiftUI
struct RadioItemButtonView: View{
    @Binding var isSelected: Bool
    var body: some View{
        ZStack{
            Circle()
                .stroke(.appBlue, lineWidth: 2)
                .frame(width: 26)
                if isSelected{
                Circle()
                        .fill(.appPink)
                        .frame(width: 18)
                        
            }
        }
        .onTapGesture {
            isSelected.toggle()
        }
    }
}
