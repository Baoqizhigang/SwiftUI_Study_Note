
import Foundation
import SwiftUI


struct StateView2: View {
    @State private var text = "Hello, SwiftUI"

    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            ChildView(text: $text)
        }
    }
}

struct ChildView: View {
    @Binding var text: String
    
    var body: some View {
        Text("Child View")
            .foregroundStyle(.blue)
        
        Text("Here is the text: \(text)")
            .font(.largeTitle)
            .foregroundStyle(.green)
    }
}

#Preview {
    StateView2()
}



