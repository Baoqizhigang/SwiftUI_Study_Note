
import SwiftUI

struct UserDefaults_1: View {
    @AppStorage("theme") private var theme: String = "light"
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    var body: some View {
        VStack {
            Text("Current theme: \(theme)")
            Toggle("Loing In", isOn: $isLoggedIn)
            
            Button("Switch Mode") {
                theme = theme == "light" ? "dark" : "light"
            }
        }
        .padding()
    }
}

#Preview {
    UserDefaults_1()
}
