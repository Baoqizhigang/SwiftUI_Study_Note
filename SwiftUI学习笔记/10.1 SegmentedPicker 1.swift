

import SwiftUI

struct SegmentedPicker_1: View {
    @State private var selectedOption = "Daytime Mode"
    let options = ["Daytime Mode","Nighttime Mode","Rainbow Mode"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Selected Option: " ) 
                    .font(.title2)
                Text("\(selectedOption)")
                    .foregroundColor(.green)
                    .font(.title2)
            }
            .padding()
                
            Picker("Chosse Mode", selection: $selectedOption) {
                ForEach(options, id: \.self) { option in
                    Text(option)
                }
            }
            .pickerStyle(.segmented)
            .padding()
           
        }
    }
}

#Preview {
    SegmentedPicker_1()
}
