

import SwiftUI

struct ModalView_ActivityView_1: View {
    
    private let photo = Image("sanfrancisco")
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            photo
                .resizable()
                .scaledToFit()
            
            Divider()
                .padding(10)
            
            ShareLink(item: photo, preview: SharePreview("sanfrancisco", image: photo)) {
                Label("Share Pictures", systemImage: "photo")
                    .foregroundColor(.red)
            }
            
            Divider()
                .padding(10)
            
            ShareLink(item: "SwiftUI Study Notes") {
                Label("Share Notes", systemImage: "doc.text")
            }
            
            Divider()
                .padding(10)
            
            ShareLink(item: URL(string: "https://www.google.com")!) {
                Label("Share Link - Google", systemImage: "link")
            }
        }
    }
}



#Preview {
    ModalView_ActivityView_1()
}
