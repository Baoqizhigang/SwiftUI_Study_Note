import SwiftUI

struct NavigationStack_Path_View2: View {
    @State private var path: [String] = []
   
    var body: some View {
        NavigationStack(path: $path){
            VStack{
                Text("Home Page")
                    .foregroundColor(.pink)
                    .font(.largeTitle)
                
                Divider().padding()
                
                Button("Jumping to Page 1") {
                    path.append("Page 1")
                }
                
                Divider().padding()
                
                Button("Jumping to Page 2") {
                    path.append("Page 2")
                }
                
                Divider().padding()
                
                Button("Jumping to Page 3") {
                    path.append("Page 3")
                }
            }
            .navigationDestination(for: String.self) { value in
                if value == "Page 1" {
                    Text("Page 1")
                        .navigationTitle("Page 1 has nothing here")
                } else if value == "Page 2" {
                    View2(path: $path)
                } else if value == "Page 3" {
                    View3(path: $path)
                }
            }
            .navigationTitle("This is Home Page")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct View2: View {
    @Binding var path: [String]
    
    var body : some View {
        VStack{
            Text("Page 2")
                .font(.largeTitle)
                .padding()
            Button("Juming to Page 3") {
                path.append("Page 3")
            }
            .padding()
            
            Button("Back to Home Page") {
                path.removeAll()
            }
            .padding()
            .background(Color.yellow)
            .foregroundColor(.black)
            .cornerRadius(10)
        }
        .navigationTitle(Text("Page 2"))
    }
}

struct View3: View {
    @Binding var path: [String]
    
    var body : some View {
        VStack{
            Text("Page 3")
                .font(.largeTitle)
                .padding()
            Button("Juming to Page 2") {
                path.append("Page 2")
            }
            .padding()
            
            Button("Back to Home Page") {
                path.removeAll()
            }
            .padding()
            .background(Color.yellow)
            .foregroundColor(.black)
            .cornerRadius(10)
        }
        .navigationTitle(Text("Page 3"))
    }
}

#Preview {
    NavigationStack_Path_View2()
}
