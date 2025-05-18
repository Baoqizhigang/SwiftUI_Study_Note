

import SwiftUI

struct ModalView_Popover_1: View {
    
    @State private var showPopover: Bool = false
    var body: some View {
        VStack {
            Button("🫶Show Popover🫶") {
                showPopover.toggle()
            }
            .font(.title)
            .popover(isPresented: $showPopover) {
                VStack {
                    Text("This is a Popover👑")
                        .font(.headline)
                        .padding(.bottom, 20)
                    Button("👀Close👀") {
                        showPopover = false
                    }
                }
                .padding()
            }
            

        }
    }
}



#Preview {
    ModalView_Popover_1()
}


