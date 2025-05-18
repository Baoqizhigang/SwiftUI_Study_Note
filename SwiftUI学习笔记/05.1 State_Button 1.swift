
import Foundation
import SwiftUI


struct StateView1: View {
    @State private var counter = 0
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
            Text("Counts: \(counter)")
                .font(.headline)
            
            Button(action: {
                counter += 1
            }) {
                Text("Tap Me")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 18))
            }
            
            Button(action: {
                isPlaying.toggle()
            }) {
                Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(isPlaying ? .red : .green)
            }
        }
    }
}

#Preview {
    StateView1()
}



