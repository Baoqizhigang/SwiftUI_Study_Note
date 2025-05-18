

import SwiftUI

struct ModalView_ContextMenu_1: View {
    
    var body: some View {
        Image(systemName: "photo")
            .resizable()
            .frame(width: 100, height: 100)
            .contextMenu { // press the image for 2 seconds
                Button(action: {
                    print("Edit Image")
                }) {
                    Label("👀Edit👀", systemImage: "pencil")
                }
                
                Button(action: {
                    print("Delete Image")
                }) {
                    Label("😱Delete😱", systemImage: "trash")
                }
            }
    }
}



#Preview {
    ModalView_ContextMenu_1()
}
