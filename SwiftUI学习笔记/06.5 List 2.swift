
import Foundation
import SwiftUI


struct ListView2: View {
    @State private var selectedFruits: Set<String> = []
    @State private var fruits = ["Apple", "Banana", "Orange", "Pear", "Grape"]
   
    
    var body: some View {
        NavigationView {
            VStack {
                List(fruits, id: \.self, selection: $selectedFruits) { fruit in
                    HStack {
                        Text(fruit)
                            .font(.headline)
                    }
                    .listRowBackground(selectedFruits.contains(fruit) ? Color.yellow : Color.clear)
                    .listRowSeparatorTint(.blue)
                }
                //.listRowSpacing(10)
                .navigationTitle(Text("Selected fruits"))
                .toolbar{
                    EditButton()
                }
                
                if !selectedFruits.isEmpty {
                    Text("Selected fruits: \(selectedFruits.sorted().joined(separator: ", "))")
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ListView2()
}



