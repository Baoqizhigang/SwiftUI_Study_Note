

import SwiftUI

struct ModalView_Alert_2: View {
    
    @State private var showAlert = false
    @State private var itemName : String = "File A"

    
    var body: some View {
        VStack {
            Button("Show Multiple Alert Pages") {
                showAlert.toggle()
            }
            .alert("Think twice before you delete it!", isPresented: $showAlert) {
                Button("Delete", role: .destructive) {
                    print("\(itemName) deleted!")
                }
                Button("Cancel", role: .cancel) {
                    print("Cancel clicked")
                }
            } message: {
                Text("Are you sure you want to delete \(itemName)?")
            }
        }
    }
}



#Preview {
    ModalView_Alert_2()
}
