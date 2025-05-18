
import Foundation
import SwiftUI


struct LayoutView4: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 36, verticalSpacing: 36) {
            GridRow{
                Text("1, 1")
                Text("1, 2")
                Text("1, 3")
            }
            .font(.title)
            .background(Color.blue)
        }
       
        Divider()
        
        Grid(alignment: .center, horizontalSpacing: 36, verticalSpacing: 36) {
            GridRow{
                Text("2, 1")
                Text("2, 2")
                Text("2, 3")
            }
            .font(.title)
            .background(Color.green)
        }
        
        Divider()
        
        Grid(alignment: .center, horizontalSpacing: 36, verticalSpacing: 36) {
            GridRow{
                Text("3, 1")
                Text("3, 2")
                Text("3, 3")
            }
            .font(.title)
            .background(Color.yellow)
        }
        
        Divider()
    }
}

#Preview {
    LayoutView4()
}
