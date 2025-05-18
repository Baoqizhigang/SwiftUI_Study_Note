import SwiftUI

struct Gauge_1: View {
    @State private var progress = 0.5 
    
    var body: some View {
        VStack {
            Gauge(value: progress) {
                Text("\(Int(progress * 100))%")
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
            .gaugeStyle(.accessoryCircular)
            .tint(.red)
            .padding()
            
            Slider(value: $progress, in: 0...1, step: 0.1) {
                Text("Progress")
            }
            .padding()
        }
    }
}

#Preview {
    Gauge_1()
}
