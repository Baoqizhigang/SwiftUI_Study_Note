
import Foundation
import SwiftUI


struct StateView3: View {
    @State private var isPlaying = false
    @State private var progress: Double = 3.19

    var body: some View {

        VStack {
            VStack {

                Image("night")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                
                VStack(spacing: 20) {
                    Text("Stary Stary Night")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Little Joe")
                        .font(.headline)
                        .foregroundColor(.secondary)
                }
                
                HStack{
                    Image(systemName: "backward.fill")
                        .font(.title)
                    
                    Button(action: {
                        isPlaying.toggle()
                    }) {
                        Image(systemName: isPlaying ? "play.circle.fill" : "pause.circle.fill")
                            .font(.system(size: 48))
                            .foregroundColor(.green)
                    }
                    
                    Image(systemName: "forward.fill")
                        .font(.title)
                }
                .padding()
                
                VStack{
                    Slider(value: $progress, in : 0...4.37)
                        .accentColor(.green)
                        .padding(.horizontal)
                    
                    HStack {
                        Text("\(progress, specifier: "%.2f")")
                        Spacer()
                        Text("4:37")
                    }
                    .font(.caption)
                    .padding(.horizontal)
                }
                
            }
            .padding()
            
            Spacer()
        }
        .background(Color(UIColor.systemGray6))
    }
}



#Preview {
    StateView3()
}



