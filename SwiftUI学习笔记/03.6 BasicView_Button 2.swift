
import Foundation
import SwiftUI


struct BasicView6: View {
    var body: some View {
        Button(action: {print("Button Automatic")}) {
            Text("Automatic")
                .font(.largeTitle)
                .foregroundStyle(.green)
        }
        .buttonStyle(.automatic)
        
        Divider()
        
        Button("Bordered") { }
        .buttonStyle(.bordered)
        
        Divider()
        
        Button("BorderedProminent") { }
            .buttonStyle(.borderedProminent)
        
        Divider()
        
        Button("Plain") { }
            .buttonStyle(.plain)
        
        Divider()
        // 表示一个“破坏性”操作（例如删除数据）
        Button("Destructive", role: .destructive) { }
            .buttonStyle(.bordered)
        
        Divider()
        
        // 表示取消操作
        Button("Cancel", role: .cancel) { }
            .buttonStyle(.bordered)
        
        Divider()
        
        Button("Large") { }
            .buttonStyle(.bordered)
            .controlSize(.large)
        
        Divider()
        
        Button("Small") { }
            .buttonStyle(.bordered)
            .controlSize(.small)
        
        Divider()
        
        
    }
}

#Preview {
    BasicView6()
}


