import SwiftUI

struct NavigationStack_Path_View1: View {
    @State private var path: [String] = ["Contact Page"]
   
    var body: some View {
        NavigationStack(path: $path){
            VStack{
                Text("Home Page")
                    .foregroundColor(.pink)
                    .font(.largeTitle)
                
                Divider().padding()
                
                Button("Jumping to Detail Page") {
                    path.append("Detail Page")
                }
            }
            .navigationDestination(for: String.self) {
                value in Text("This is: \(value)")
            }
            .navigationTitle("Navigation Stack")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationStack_Path_View1()
}
