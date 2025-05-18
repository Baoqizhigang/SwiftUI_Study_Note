import SwiftUI

struct Animation_1: View {
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: isExpanded ? 200 : 100,
                       height: isExpanded ? 200 : 100)
                .animation(.easeInOut(duration: 0.5), value: isExpanded)
            
            
            Button(action: {isExpanded.toggle()} )  {
                Text("Expand")
                    .foregroundColor(.indigo)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.indigo, lineWidth: 1))
            }
            
            Rectangle()
                .fill(isExpanded ? Color.pink : Color.green)
                .frame(width: isExpanded ? 400 : 100,
                       height: isExpanded ? 100 : 100)
                .overlay(
                    Text(isExpanded ? "Expanded" : "Collapsed")
                        .foregroundColor(isExpanded ? Color.white : Color.yellow)
                        .font(isExpanded ? .largeTitle : .title3 )
                )
            
            
            Button("Animate") {
                withAnimation(.easeInOut(duration: 0.5)) {
                    isExpanded.toggle()
                }
            }
        }
    }
}

#Preview {
    Animation_1()
}
