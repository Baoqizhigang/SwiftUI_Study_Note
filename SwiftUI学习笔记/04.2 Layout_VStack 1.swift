
import Foundation
import SwiftUI


struct LayoutView2: View {
    var body: some View {
        VStack(alignment: .center, spacing: 24) {
            Text("View1")
                .foregroundColor(.red)
                .font(.title)
            Divider()
            Text("View2")
                .foregroundColor(.red)
                .font(.title)
            Divider()
            Text("View3")
                .foregroundColor(.red)
                .font(.title)
            Divider()
            
        }
        Divider()
        
        VStack(alignment: .leading, spacing: 18) {
            Text("View1")
                .foregroundColor(.blue)
                .font(.title)
            Divider()
            Text("View2")
                .foregroundColor(.blue)
                .font(.title)
            Divider()
            Text("View3")
                .foregroundColor(.blue)
                .font(.title)
            Divider()
            
        }
        
        Text("Hello, World!")
            .layoutPriority(1)
        
        Divider()
        
        VStack(alignment: .trailing, spacing: 18) {
            Text("View1")
                .foregroundColor(.red)
                .font(.title)
            Divider()
            Text("View2")
                .foregroundColor(.red)
                .font(.title)
            Divider()
            Text("View3")
                .foregroundColor(.red)
                .font(.title)
            Divider()
            
        }
        
        Divider()
        
        
    }
}

#Preview {
    LayoutView2()
}
