
import Foundation
import SwiftUI


struct LayoutView5: View {
    var body: some View {
        Grid {
            GridRow{
                Color.yellow
                    .gridCellColumns(3)
            }
        }
       
        Divider()
        
        Grid {
            GridRow{
                Color.cyan
                Color.purple
                    .gridCellColumns(2)
            }
        }
        
        Divider()
        
        Grid {
            GridRow{
                Color.pink
                Color.indigo
                Color.pink
            }
        }
        
        Divider()
        
       
    }
}

#Preview {
    LayoutView5()
}
