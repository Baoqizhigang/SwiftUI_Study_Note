

import SwiftUI

struct DataFlow_Binding_1: View {
    @State var text = "Hello World!"
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
                .font(.headline)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Child_View(text: $text)
        }
    }
}

struct Child_View: View {
    @Binding var text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
            .foregroundColor(.blue)
    }
}

#Preview {
    DataFlow_Binding_1()
}
