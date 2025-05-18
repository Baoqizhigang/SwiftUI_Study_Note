
import Foundation
import SwiftUI


struct ViewModifierView3: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding(50)
                .frame(width: 360, height: 180, alignment: .topTrailing)
                .background(
                    LinearGradient(gradient:
                                            Gradient(colors: [.blue, .red]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(20)
                .shadow(color: .gray, radius: 2, x: 8, y: 8)
            
            Text("Hello, world!")
                .padding(50)
                .frame(width: 360, height: 180, alignment: .topTrailing)
                .background(
                    LinearGradient(gradient:
                                    Gradient(colors: [.blue, .red]), startPoint: .top,
                                        endPoint: .bottom)
                )
                .cornerRadius(20)
                .shadow(color: .gray, radius: 6, x: 8, y: 8)
            
            Text("Hello, world!")
                .padding(50)
                .frame(width: 360, height: 180, alignment: .topTrailing)
                .background(
                    LinearGradient(gradient:
                                    Gradient(colors: [.blue, .red]), startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                )
                .cornerRadius(20)
                .shadow(color: .gray, radius: 12, x: 8, y: 8)

        }
        
    }
}

#Preview {
    ViewModifierView3()
}
