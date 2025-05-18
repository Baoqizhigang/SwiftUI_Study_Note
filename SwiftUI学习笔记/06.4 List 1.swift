
import Foundation
import SwiftUI


struct ListView1: View {
    
    @State private var fruits = ["Apple", "Banana", "Orange", "Pear", "Grape"]
    @State private var drinks = ["Coffee","Milk","Coca Cola","Tea","Water"]
    
    var body: some View {
        List {
            Section(header: Text("Fruit Session")) {
                Text("Choose Ur Favorite Fruit")
                    .font(.title2)
                    .fontWeight(.bold)
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                        .font(.title)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            
            Section(header: Text("Drink Session")) {
                Text("Choose Ur Favorite Drinks")
                    .font(.title2)
                    .fontWeight(.bold)
                ForEach(drinks, id: \.self) { drink in
                    Text(drink)
                        .font(.title)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
        drinks.remove(atOffsets: offsets)
    }
    
    func moveItems(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
        drinks.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    ListView1()
}



