import SwiftUI

struct TransitionDemo_1 : View {
    @State private var showObject = false
    
    var body: some View {
        VStack {
            if showObject {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .transition(.slide)
            }
            
            if showObject {
                Circle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                    .transition(.asymmetric(
                        insertion: .slide.combined(with: .opacity),
                        removal: .scale.combined(with: .opacity)
                    ))
            }
            
            
            Button("Toggle") {
                withAnimation (.easeInOut(duration: 1.0)) {
                    showObject.toggle()
                }
            }
            .font(.largeTitle)
            .padding()
            .background(Color.gray.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
    
}

#Preview {
    TransitionDemo_1()
}
