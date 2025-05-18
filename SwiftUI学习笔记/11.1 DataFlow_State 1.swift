

import SwiftUI

struct DataFlow_State_1: View {
    @State private var counter = 0
    @State private var isPlaying = false
    var body: some View {
        VStack {
            Text("Count: \(counter)")
            Button(action:  {
                counter += 1
            }) {
                Text("Increment")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20))
            }
            .padding(.bottom)
            
            Button(action:  {
                isPlaying.toggle()
            }) {
                Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(isPlaying ? .red: .green)
            }
            
        }
    }
}

#Preview {
    DataFlow_State_1()
}
