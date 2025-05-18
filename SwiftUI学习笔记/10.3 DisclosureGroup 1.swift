

import SwiftUI

struct DisclosureGroup_1: View {
 
    var body: some View {
        VStack {
            DisclosureGroup("Show Detailed Information") {
                Text("This is detailed information - 1.")
                Text("This is detailed information - 2.")
                Text("This is detailed information - 3.")
            }
            .font(.subheadline)
            .padding()
            
            DisclosureGroup("Setting") {
                DisclosureGroup("Option") {
                    Text("Option 1")
                    Text("Option 2")
                    Text("Option 3")
                }
                .padding(.leading)
                
                DisclosureGroup("Volume") {
                    Text("Volume 1")
                    Text("Volume 2")
                    Text("Volume 3")
                }
                .padding(.leading)
                
            }
            .padding()
            
            Spacer()
        }
        
    }
}

#Preview {
    DisclosureGroup_1()
}
