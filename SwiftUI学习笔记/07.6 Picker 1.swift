
import Foundation
import SwiftUI


struct PickerView1: View {
    @State private var selectedFruit: String = "Orange"
    
    var body: some View {
        
        VStack {
            
            Text("Choose a fruit: ") +
            Text(" \(selectedFruit)")
                .foregroundColor(.pink)
                .font(.headline)
            
            Picker("Choose Fruit", selection: $selectedFruit) {
                Text("Apple").tag("Apple")
                Text("Banana").tag("Banana")
                Text("Orange").tag("Orange")
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Divider()
            
            Picker("Choose Fruit", selection: $selectedFruit) {
                Text("Apple").tag("Apple")
                Text("Banana").tag("Banana")
                Text("Orange").tag("Orange")
            }
            .pickerStyle(.menu)
            .padding()
            
            Divider()
            
            Picker("Choose Fruit", selection: $selectedFruit) {
                Text("Apple").tag("Apple")
                Text("Banana").tag("Banana")
                Text("Orange").tag("Orange")
            }
            .pickerStyle(.wheel)
            .padding()
        }
    }
}

#Preview {
    PickerView1()
}



