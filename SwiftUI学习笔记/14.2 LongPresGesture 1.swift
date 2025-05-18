
import SwiftUI

struct LongppPressGesture_1: View {
    @State private var isPressed = false
    @State private var message = "Press and Hold"
    @State var isDetectingLongPress = false
    
    var body: some View {
        Text(isPressed ? "Long Pressed":"Pressed and Hold")
            .padding()
            .background(isPressed ? Color.green : Color.pink)
            .foregroundColor(.white)
            .cornerRadius(10)
            .onLongPressGesture {
                isPressed.toggle()
            }
        
        Divider()
            .padding(20)
        
        Text(message)
            .padding()
            .background(isPressed ? Color.yellow : Color.indigo)
            .foregroundColor(.white)
            .cornerRadius(10)
            .onLongPressGesture(minimumDuration: 4.0) {
                isPressed.toggle()
            }
        
        Divider()
            .padding(20)
        
        Circle()
            .fill(isPressed ? Color.blue : Color.brown)
            .frame(width: 100, height: 100)
            .scaleEffect(isDetectingLongPress ? 1.2 : 1)
            .onLongPressGesture(minimumDuration: 4.0, pressing : { pressing in
                isDetectingLongPress = pressing }) {
                    isPressed.toggle()
            }
    }
}

#Preview {
    LongppPressGesture_1()
}
