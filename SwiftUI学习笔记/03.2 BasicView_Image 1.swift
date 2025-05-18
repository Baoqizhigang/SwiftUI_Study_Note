
import Foundation
import SwiftUI


struct BasicView2: View {
    var body: some View {
        VStack {
            Image("appicon")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 250)
            
            Image("appicon")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 250)
            
            Image("appicon")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 250)
                .clipped()
           
        }
    }
}

#Preview {
    BasicView2()
}
