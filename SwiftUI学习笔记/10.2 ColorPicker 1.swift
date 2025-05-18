

import SwiftUI

struct ColorPicker_1: View {
    @State private var selectedColor = Color.blue
 
    var body: some View {
        VStack {
            ColorPicker("Choose Color", selection: $selectedColor)
                .font(.title)
                .padding()
            
            Text("Demonstrates a ColorPicker")
                .foregroundColor(selectedColor)
                .font(.title)
                .fontWeight(.bold)
           
        }
    }
}

#Preview {
    ColorPicker_1()
}
