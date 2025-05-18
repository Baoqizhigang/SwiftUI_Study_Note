
import Foundation
import SwiftUI


struct ViewModifierView2: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding(50)
                .frame(width: 360, height: 180, alignment: .topTrailing)
                .border(Color.red, width: 28)
                .background(Color.green)
                .cornerRadius(20)
                .offset(x: 50, y: 200)
                .overlay(
                    Text("Overlay Text")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .offset(x: 10, y: 220)
                )

        }
        
    }
}

#Preview {
    ViewModifierView2()
}
