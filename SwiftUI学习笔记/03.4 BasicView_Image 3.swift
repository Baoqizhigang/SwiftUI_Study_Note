
import Foundation
import SwiftUI


struct BasicView4: View {
    var body: some View {
        VStack {
  
            Image("appicon")
                .resizable()
                .scaledToFill()
                .frame(width: 100)
                .clipShape(Circle())
            
            Image("appicon")
                .resizable()
                .scaledToFill()
                .frame(width: 100)
                .clipShape(Ellipse())
            
            Image("appicon")
                .resizable()
                .scaledToFill()
                .frame(width: 100)
                .clipShape(Capsule())
           
        }
    }
}

#Preview {
    BasicView4()
}
