
import Foundation
import SwiftUI


struct ScrowllView1_2: View {
    
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 20) {
                ForEach(0..<100, id: \.self) { index in
                    Text("Item \(index)")
                        .font(.largeTitle)
                        .frame(width: 300, height: 80)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding()
        }
        .safeAreaInset(edge: .bottom) {
            VStack (spacing: 20){
                Divider()
                Text("Total 20 Items")
                    .font(.largeTitle)
            }
            .background(.regularMaterial)
        }
    }
}

#Preview {
    ScrowllView1_2()
}



