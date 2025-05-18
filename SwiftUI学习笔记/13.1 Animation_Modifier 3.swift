import SwiftUI

struct Animation_3: View {
    @State private var animationProgress: CGFloat = 0.0
    

    var body: some View {
        VStack(spacing: 80) {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.blue)
                .frame(width: 200, height: 100)
                //.modifier(CustomAnimationModifier(progress: animationProgress))
                .customAnimation(progress: animationProgress)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 2)) {
                        animationProgress = animationProgress == 0 ? 1 : 0
                    } completion: {
                        print("Animation completed")
                    }
                }
            
        Text("Tap the Rounded Rectangle")
                .font(.headline)
        }
    }
}

struct CustomAnimationModifier: ViewModifier {
    var progress: CGFloat
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(90 * progress))
            .scaleEffect(1 + 0.2 * progress)
            .opacity(0.8 + 0.2 * progress)
            .offset(x: 50 * progress)
    }
}

extension View {
    func customAnimation(progress: CGFloat) -> some View {
        self.modifier(CustomAnimationModifier(progress: progress))
    }
}

#Preview {
    Animation_3()
}
