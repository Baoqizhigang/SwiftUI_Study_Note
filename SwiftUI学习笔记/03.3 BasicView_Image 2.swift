
import Foundation
import SwiftUI


struct BasicView3: View {
    var body: some View {
        VStack {
  
            Image("appicon")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
                .overlay {
                    
                    Text("Hello, World!")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity,  maxHeight: .infinity)
                        .background(Color.black.opacity(0.5))//加了一层遮罩
                    
                    // Tow different colors in ONE system image
                    Image(systemName: "externaldrive.badge.plus")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.red, .green)
                        .font(.system(size: 300))
                        .opacity(0.5)
                    
                }
           
        }
    }
}

#Preview {
    BasicView3()
}
