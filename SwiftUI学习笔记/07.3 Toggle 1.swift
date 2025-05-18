
import Foundation
import SwiftUI


struct ToggleView1: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        
        VStack {
            Toggle("Receive Message", isOn: $isOn)
                .toggleStyle(SwitchToggleStyle(tint: .blue))
                .padding()
            
            Toggle(isOn: $isOn) {
                Label("Night Mode", systemImage: "moon.fill")
            }
            .padding(.horizontal)
            
            VStack {
                Toggle("Bluetooth", isOn: $isOn)
                Text(isOn ? "Bluetooth is on" : "Bluetooth is off")
                    .foregroundColor(isOn ? .green : .red)
            }
            .padding()
        }
        
    }
}

#Preview {
    ToggleView1()
}



