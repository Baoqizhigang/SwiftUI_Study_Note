

import SwiftUI

struct ModalView_Alert_1: View {
    
    @State private var showAlert = false

    
    var body: some View {
        VStack {
            Button("Show Alert Page") {
                showAlert.toggle()
            }
            .alert("This is an alert!~", isPresented: $showAlert) {
                Button("Confirm!", role: .cancel) {}
            } message: {
                Text("This is the basic alert message! Click confirm to dismiss this page! Thank you for your understanding! Goodbye..")
                    
            }
        }
    }
}



#Preview {
    ModalView_Alert_1()
}
