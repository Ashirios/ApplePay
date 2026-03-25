import SwiftUI

struct FieldView: View{
    var placehlder: String
    @Binding var text: String
    var isTextField: Bool = true
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text(placehlder)
                .gravity(.light, 14)
           if isTextField{
                TextField("", text: $text)
                   .frame(height: 48)
                   .padding(.horizontal, 10)
                   .background(Color(.systemGray5))
                   .clipShape(Capsule())
                   .overlay{
                       Capsule()
                           .stroke(lineWidth: 1)
                   }
           }else{
               TextEditor(text: $text)
                   .frame(height: 154)
                   .scrollContentBackground(.hidden)
                   .padding(.horizontal, 10)
                   .background(Color(.systemGray5))
                   .clipShape(RoundedRectangle(cornerRadius: 10))
                   .overlay{
                      RoundedRectangle(cornerRadius: 10)
                           .stroke(lineWidth: 1)
                   }
           }
        }
    }
}
