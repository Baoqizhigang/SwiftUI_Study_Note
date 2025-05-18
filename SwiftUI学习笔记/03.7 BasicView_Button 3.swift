
import Foundation
import SwiftUI


struct BasicView7: View {
    var body: some View {
        
        VStack {
            Button("Disabled") { }
                .buttonStyle(.bordered)
                .disabled(true)
        }
        
        Divider()
        
        Button("Enabled") { }
            .buttonStyle(.bordered)
            .disabled(false)
        
        Divider()
        
        Button(action: {print("Button tapped1!")}) {
            Text("Button 1")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .frame(width: 200, height: 60)
                .background(
                    Image("night")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                )
                .cornerRadius(20)
        }
        
        
        Divider()
        
        Button(action: {print("Button tapped2!")}) {
            Image(systemName: "star.fill")
                .font(.title)
            
            Text("Button 2")
                .fontWeight(.bold)
                .font(.title)
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(24)
        
        Divider()
        
        Button("Button 3", systemImage: "star.fill") {

        }
        .fontWeight(.bold)
        .font(.title)
        .padding()
        .foregroundColor(.white)
        .background(Color.indigo)
        .cornerRadius(24)
        
        
        Divider()
                
    }
}

#Preview {
    BasicView7()
}


