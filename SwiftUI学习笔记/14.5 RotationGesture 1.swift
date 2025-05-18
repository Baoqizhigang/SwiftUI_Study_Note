
import SwiftUI

struct RotationGestureDemo_1: View {
    @State private var angle: Angle = .zero
    
    @State private var offset = CGSize.zero
    @State private var isPressed = false
    @State private var message = "Press and Hold"
    @State var isDetectingLongPress = false
    
    var body: some View {
        Text("Roatation")
        Image(systemName: "arrow.triangle.2.circlepath")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        angle = value
                    }
                    .onEnded { _ in
                        
                    }
            )
            .padding(.bottom, 50)
        Text("Roatation within [-45, 45]")
        Image(systemName: "arrow.triangle.2.circlepath")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        let degrees = value.degrees
                        angle = Angle(degrees: min(max(degrees, -45), 45))
                    }
            )
        
        Text("Simultaneous Gesture")
        Image(systemName: "arrow.triangle.2.circlepath")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .rotationEffect(angle)
            .gesture(
                SimultaneousGesture(
                    RotationGesture()
                        .onChanged { value in
                            let degrees = value.degrees
                            angle = Angle(degrees: min(max(degrees, -45), 45))
                        },
                    DragGesture()
                        .onChanged { value in
                            offset = value.translation
                        }
                )
                
            )
        
        Text("Exclusive Gesture")
        Text(message)
            .padding()
            .background(isPressed ? Color.yellow : Color.indigo)
            .foregroundColor(.white)
            .cornerRadius(10)
            .gesture (
                ExclusiveGesture(
                    TapGesture()
                        .onEnded {
                            message = "Tapped!"
                        },
                    LongPressGesture(minimumDuration: 4.0)
                        .onEnded { _ in
                            message = "Long Pressed!"
                        }
                )
            )
            .padding(.bottom, 30)
        
        Text("Sequence Gesture !")
        Text("Position: \(Int(offset.width)), \(Int(offset.height))")
            .padding()
        Circle()
            .fill(Color.blue)
            .frame(width: 100, height: 100)
            .offset(offset)
            .gesture (
                SequenceGesture(
                    LongPressGesture(minimumDuration: 2.0)
                        .onEnded { _ in
                            isPressed = true
                        },
                    DragGesture()
                        .onChanged { value in
                            offset = value.translation
                        }
                )
            )

    }
}

#Preview {
    RotationGestureDemo_1()
}
