
import Foundation
import SwiftUI


struct ScrowllView2: View {
    
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 5) {
                ForEach(0..<200, id: \.self) { index in
                    Text("Item \(index)")
                        .font(.largeTitle)
                        .frame(width: 80, height: 100)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScrowllView2()
}



