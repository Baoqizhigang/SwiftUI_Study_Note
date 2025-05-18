

import SwiftUI

struct ModalView_Sheet_1: View {
    
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            Button("Show Modal View") {
                showSheet.toggle()
            }
            .sheet(isPresented: $showSheet){ ModalView()
            }
        }
    }
}

struct ModalView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("This is Modal View")
                .font(.largeTitle)
            Button("Dismiss") {
                dismiss()
            }
        }
        .padding()
    }
}

#Preview {
    ModalView_Sheet_1()
}
