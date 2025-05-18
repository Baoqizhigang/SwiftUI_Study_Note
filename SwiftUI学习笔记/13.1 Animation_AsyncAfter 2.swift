import SwiftUI

struct Animation_2: View {
    @State private var isExpanded = false
    @State private var isYellow = false
    
    @State private var isExpanded_1 = false
    @State private var isYellow_1 = false
    
    var body: some View {
        VStack {
            Circle()
                .fill(isYellow ? Color.yellow : Color.blue)
                .frame(width: isExpanded ? 200 : 100,
                       height: isExpanded ? 200 : 100)
                .animation(.easeInOut(duration: 1), value: isExpanded)
                .animation(.easeInOut(duration: 1), value: isYellow)
        
            Button("Start Animation - Async") {
                isExpanded.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    isYellow.toggle()
                }
            }
            
            Circle()
                .fill(isYellow_1 ? Color.yellow : Color.blue)
                .frame(width: isExpanded_1 ? 200 : 100,
                       height: isExpanded_1 ? 200 : 100)
                .animation(.easeInOut(duration: 1), value: isExpanded_1)
                .animation(.easeInOut(duration: 1), value: isYellow_1)
            
            Button("Start Animation - No Async") {
                isExpanded_1.toggle()
                isYellow_1.toggle()
            }
            
        }
    }
}

#Preview {
    Animation_2()
}
