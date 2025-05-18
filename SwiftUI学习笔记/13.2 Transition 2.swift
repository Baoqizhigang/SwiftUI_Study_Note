import SwiftUI

struct TransitionDemo_2 : View {
    @State private var showObject = false
    
    var body: some View {
        VStack {
            Spacer()
            
            if showObject {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .transition(.scale.combined(with: .opacity))
                    .padding(.bottom, 50)
            }
                
            
            if showObject {
                Circle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                    .transition(.asymmetric(
                        insertion: .scale,
                        removal: .opacity)
                    )
            }
            
            Spacer()
            
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
    TransitionDemo_2()
}
