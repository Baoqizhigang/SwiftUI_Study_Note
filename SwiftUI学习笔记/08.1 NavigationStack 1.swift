
import SwiftUI

struct NavigationStackView1: View {
     
    var body: some View {
        NavigationStack {
            VStack {
                Text("Home Page")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: DetailedView()) {
                    Text("Go to Detail Page")
                        .font(.title)
                        .foregroundColor(.pink)
                }
                .navigationTitle(Text("Home"))
                
                NavigationLink("Another way to go to the Detailed Page", destination: DetailedView())
                    .padding()
            }
        }
    }
}

struct DetailedView: View {
    var body: some View {
        Text ("This is a detailed page")
            .font(.largeTitle)
            .navigationTitle("Detailed Page")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStackView1()
}

