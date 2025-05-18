
import SwiftUI

struct DragGesture_1: View {
    @State private var offset = CGSize.zero
    
    var body: some View {
        Text("Position: \(Int(offset.width)), \(Int(offset.height))")
            .padding()
        
        Circle()
            .fill(Color.blue)
            .frame(width: 100, height: 100)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        offset = gesture.translation
                    }
                    .onEnded { _ in
                        withAnimation(.easeInOut) {
                            offset = .zero
                        }
                    }
            )
    }
}

#Preview {
    DragGesture_1()
}
