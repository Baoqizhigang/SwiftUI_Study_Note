
import Foundation
import SwiftUI


struct LabelView1: View {
    
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 20) {
                ForEach(0..<5, id: \.self) { index in
                    Label("Save #\(index) File", systemImage: "square.and.arrow.down")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                }
                
                Divider()
                
                Label{Text("Save")
                        .foregroundColor(.purple)
                } icon: {
                    Image(systemName: "square.and.arrow.down")
                        .foregroundColor(.orange)
                }
                .font(.largeTitle)
                
                Divider()
                
                Button {
                    
                } label: {
                    Label("Share", systemImage: "square.and.arrow.up")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .buttonStyle(BorderedButtonStyle())
                .background(Color.pink)
                .cornerRadius(10)
                
                Divider()
                
                
            }
            .padding()
            
        }
        
    }
}

#Preview {
    LabelView1()
}



