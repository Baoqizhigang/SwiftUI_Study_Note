
import Foundation
import SwiftUI


struct ViewModifierView4: View {
    var body: some View {
        VStack {
            Text("Hello")
                .font(.title)
                .border(Color.blue, width: 3)
            Divider()
            
            Text("Hello")
                .font(.title)
                .padding(30)
                .border(Color.blue, width: 3)
            Divider()
            
            Text("Hello Swift")
                .padding()
                .font(.title)
                .background(Color.yellow)
                .cornerRadius(10)
                .shadow(radius: 5)
            Divider()
            
            Text("Hello Swift")
                .padding()
                .font(.title)
                .background(Color.yellow)
                .shadow(radius: 5)
                .cornerRadius(10) // no shadow shown
            Divider()
            
            
        }
    }
}

#Preview {
    ViewModifierView4()
}
