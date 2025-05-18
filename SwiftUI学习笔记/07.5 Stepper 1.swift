
import Foundation
import SwiftUI


struct StepperView1: View {
    @State private var score : Int = 0
    
    var body: some View {
        
        VStack {
            Stepper("Score: \(score)", value: $score, in: 0...100, step: 1)
                .font(.title)
                .padding()
            
            Text("Your final score is: \(score)")
                .font(.title)
                .foregroundStyle(.blue)
        }
        
    }
}

#Preview {
    StepperView1()
}



