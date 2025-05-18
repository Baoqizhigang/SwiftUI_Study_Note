

import SwiftUI

struct ProgresdsView_1: View {
    @State private var progress = 0.3
 
    var body: some View {
        VStack {
            Text("Loading...")
                .padding(.bottom, 10)
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
            
            Divider()
                .padding()
            
            Text("Uploading: \(Int(progress * 100))%")
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle(tint: .pink))
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding()
            
            Divider()
                .padding()
            
            Slider(value: $progress, in: 0...1, step: 0.1) {
                Text("Progress")
            }
            .padding()
        }
    }
}

#Preview {
    ProgresdsView_1()
}
