
import SwiftUI

struct TapGesture_1: View {
    @State private var isTapped = false
    
    var body: some View {
        Text(isTapped ? "Tapped!":"Tap me")
            .padding()
            .background(isTapped ? Color.green : Color.pink)
            .foregroundColor(.white)
            .cornerRadius(10)
            .onTapGesture {
                isTapped.toggle()
            }
    }
}

#Preview {
    TapGesture_1()
}
