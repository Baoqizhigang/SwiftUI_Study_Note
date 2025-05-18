
import Foundation
import SwiftUI


struct DatePickerView1: View {
    
    @State private var selectedDate = Date()
    @State private var selectedTime = Date()
    
    var body: some View {
        
        VStack {
            DatePicker("Choose a time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                .padding()
            
            Text("The Chosen Time:  \(selectedTime, style: .time)")
                .font(.headline)
            
            Divider()
            
            DatePicker("Choose a date", selection: $selectedDate, displayedComponents: .date)
                .padding()
            
            Text("The Chosen Date:  \(selectedDate, style: .date)")
                .font(.headline)
            
            Divider()
            
            DatePicker("Choose a date", selection: $selectedDate, displayedComponents: .date)
                .padding()
            
            Text("The Chosen Date:  ") +
            Text("\(selectedDate, formatter: dateFormatter_1)")
                .foregroundColor(.red)
                .font(.title2)
                .fontWeight(.bold)
            
            Divider()
            
            DatePicker("Choose a date", selection: $selectedDate, displayedComponents: .date)
                .padding()
            
            Text("The Chosen Date:  ") +
            Text("\(selectedDate, formatter: dateFormatter_2)")
                .foregroundColor(.blue)
                .font(.title2)
                .fontWeight(.bold)
        }
    }
    
    var dateFormatter_1: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }
    
    var dateFormatter_2: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
}

#Preview {
    DatePickerView1()
}



