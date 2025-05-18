
import SwiftUI

struct MagnificationGesture_1: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        Image(systemName: "star.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .scaleEffect(scale)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        scale = value
                    }
                    .onEnded { _ in
                        withAnimation {
                            scale = 1.0
                        }
                    }
            )
        
        Image(systemName: "star")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .scaleEffect(scale)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        scale = min(max(value, 0.5), 2.0)
                    }
                    .onEnded { _ in
                        withAnimation {
                            scale = 1.0
                        }
                    }
            )
    }
}

#Preview {
    MagnificationGesture_1()
}
