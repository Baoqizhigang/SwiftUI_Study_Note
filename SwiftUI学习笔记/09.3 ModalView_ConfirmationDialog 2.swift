

import SwiftUI

struct ModalView_ConfirmationDialog_2: View {
    
    @State private var showConfirmDialog = false
    @State private var actionType: String = "🤓Save🤓"

    
    var body: some View {
        VStack {
            Button("Show Multiple Confirm Dialog Options") {
                showConfirmDialog.toggle()
            }
            .confirmationDialog("Procede to \(actionType)", isPresented: $showConfirmDialog) {
                Button("\(actionType)") {
                    print("This is to save the file.🤓")
                }
                Button("Delete", role: .destructive) {
                    print("Confirm to Delete! 😱")
                }
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("Are you sure about this? ")
            }
        }
    }
}



#Preview {
    ModalView_ConfirmationDialog_2()
}
