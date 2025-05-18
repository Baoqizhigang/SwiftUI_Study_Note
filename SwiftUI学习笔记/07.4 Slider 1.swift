
import Foundation
import SwiftUI


struct SliderView1: View {
    @State private var value: Double = 50.0
    
    var body: some View {
        
        VStack {
            HStack {
                Text("0")
                Slider(value: $value, in: 0...100, step : 1)
                Text("100")
            }
            .padding(.horizontal)
            
            Text("Current Value: \(Int(value))")
                .font(.title3)
        }
        
    }
}

#Preview {
    SliderView1()
}



