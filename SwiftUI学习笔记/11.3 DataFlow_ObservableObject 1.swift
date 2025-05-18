
import Combine

class UserSettings: ObservableObject {
    @Published var username: String = "Guest"
}

import SwiftUI

struct DataFlow_ObservableObject_1: View {
    @StateObject var settings = UserSettings()
    
    var body: some View {
        AppChildView(appSettings: settings)
    }
}

struct AppChildView: View {
    @ObservedObject var appSettings: UserSettings
    
    var body: some View {
        VStack{
            Text("Username: \(appSettings.username)")
            Button("Change Username") {
                appSettings.username = "Updated User"
            }
        }
    }
}


#Preview {
    DataFlow_ObservableObject_1()
}
