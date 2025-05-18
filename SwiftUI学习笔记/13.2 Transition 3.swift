import SwiftUI


struct MyTransition : ViewModifier {
    var rotation: Angle
    func body(content: Content) -> some View {
        content
            .rotationEffect(rotation)
    }
}

extension AnyTransition {
    static var rotation: AnyTransition {
        AnyTransition.modifier(
            active: MyTransition(rotation: .degrees(360)),
            identity: MyTransition(rotation: .zero)
        )
    }
}

struct TransitionDemo_3 : View {
    @State private var showObject = false
    
    var body: some View {
        VStack {
            Spacer()
            
            if showObject {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .transition(.rotation)
                    .padding(.bottom, 50)
            }
            
            if showObject {
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.indigo)
                    .frame(width: 100, height: 100)
                    .transition(.asymmetric(
                        insertion: .rotation.combined(with: .scale),
                        removal: .rotation.combined(with: .scale)
                    ))
                    .padding(.bottom, 50)
            }
                
            
            if showObject {
                Circle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                    .transition(.asymmetric(
                        insertion: .slide.combined(with: .opacity),
                        removal: .slide.combined(with: .scale)
                    ))
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
    TransitionDemo_3()
}
