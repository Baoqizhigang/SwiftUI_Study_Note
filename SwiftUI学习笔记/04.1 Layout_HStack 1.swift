
import Foundation
import SwiftUI


struct LayoutView1: View {
    var body: some View {
        HStack(alignment: .center, spacing: 24) {
            Text("View1")
                .foregroundColor(.red)
                .font(.largeTitle)
            Divider()
            Text("View2")
                .foregroundColor(.red)
                .font(.largeTitle)
            Divider()
            Text("View3")
                .foregroundColor(.red)
                .font(.largeTitle)
            Divider()
            
        }
        
        Divider()
        
        HStack(alignment: .top, spacing: 18) {
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
        
        Divider()
        
        HStack(alignment: .bottom, spacing: 18) {
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
        
        HStack(alignment: .bottom, spacing: 18) {
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
        
        Divider()
        
        HStack(alignment: .firstTextBaseline, spacing: 12) {
            Text("View1")
                .foregroundColor(.purple)
                .font(.title)
            Divider()
            Text("View2")
                .foregroundColor(.purple)
                .font(.title)
            Divider()
            Text("View3")
                .foregroundColor(.purple)
                .font(.title)
            Divider()
            
        }
        
        Divider()
        
        HStack(alignment: .lastTextBaseline, spacing: 12) {
            Text("View1")
                .layoutPriority(1)
                .foregroundColor(.black)
                .font(.title)
            Divider()
            Text("View2")
                .foregroundColor(.black)
                .font(.title)
            Divider()
            Text("View3")
                .foregroundColor(.black)
                .font(.title)
            Divider()
            
        }
        
    }
}

#Preview {
    LayoutView1()
}
