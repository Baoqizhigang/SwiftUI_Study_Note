
import Foundation
import SwiftUI


struct ScrowllView2_3: View {
    
    
    var body: some View {
        GeometryReader {gr in
            ScrollView(.horizontal) {
                HStack(spacing: 5) {
                    ForEach(1..<4, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                            .frame(width: gr.size.width - 20, height: 200)
                            .overlay{
                                Text("Item \(index)")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ScrowllView2_3()
}



