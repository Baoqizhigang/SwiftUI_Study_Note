
import Foundation
import SwiftUI


struct BasicView5: View {
    var body: some View {
        Button(action: {print("Button tapped! 1")}) {
            Text("Tap me 1")
                .font(.largeTitle)
                .foregroundStyle(.green)
        }
        
        Divider()
        
        Button(action: {print("Button tapped! 2")}) {
            Text("Tap me 2")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding(EdgeInsets(top: 16, leading: 64, bottom: 16, trailing: 64))
                .background(.blue)
                .cornerRadius(16)
        }
        
        Divider()
        
        Button(action: {print("Button tapped! 3")}) {
            Text("Tap me 3")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding(EdgeInsets(top: 16, leading: 64, bottom: 16, trailing: 64))
                .background(.cyan.opacity(0.4))
                .cornerRadius(16)
        }
        
        Divider()
        
        Button(action: {print("Button tapped! 4")}) {
            Text("Tap me 4")
                .font(.largeTitle)
                .foregroundStyle(.blue)
                .padding(EdgeInsets(top: 16, leading: 64, bottom: 16, trailing: 64))
                .background{
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(lineWidth: 2)
                }
                
        }
        
        Divider()
        
        Button(action: {print("Button tapped! 5")}) {
            Text("Tap me 5")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding(EdgeInsets(top: 16, leading: 64, bottom: 16, trailing: 64))
                .background{
                    Capsule().fill(.mint)
                }
            
        }

    }
}

#Preview {
    BasicView5()
}


