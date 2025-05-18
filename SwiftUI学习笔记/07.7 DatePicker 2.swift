
import Foundation
import SwiftUI


struct DatePickerView2: View {
    
    @State private var selectedDate = Date()
    @State private var selectedTime = Date()
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text(".graphical Style")
                .font(.headline)
            DatePicker("", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
            
            Divider()
                .padding()
            
            Text(".wheel Style")
                .font(.headline)
            DatePicker("", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.wheel)
        }
        .padding()
        .navigationTitle("Calendar Styles")
    }
    
}

#Preview {
    NavigationStack {
        DatePickerView2()
    }
}



