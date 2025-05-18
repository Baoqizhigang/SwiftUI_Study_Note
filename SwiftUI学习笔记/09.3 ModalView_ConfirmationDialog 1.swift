

import SwiftUI

struct ModalView_ConfirmationDialog_1: View {
    
    @State private var showConfirmDialog = false

    
    var body: some View {
        VStack {
            Button("Show Confirm Dialog Page") {
                showConfirmDialog.toggle()
            }
            .confirmationDialog("Confirm Dialog?",isPresented: $showConfirmDialog) {
                Button("Delete", role: .destructive) {
                    print("Confirm to Delete! 😱")
                }
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("Are you sure about this? 🤓")
            }
        }
    }
}



#Preview {
    ModalView_ConfirmationDialog_1()
}
