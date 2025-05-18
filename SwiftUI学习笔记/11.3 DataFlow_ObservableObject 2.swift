
import Combine

class UserSettings_1: ObservableObject {
    @Published var username: String = "Guest"
}

import SwiftUI

struct AppRootView_1: View {
    @StateObject var settings = UserSettings_1()
    
    var body: some View {
        VStack {
            Text("Root View")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .bold()
                .padding()
            
            AppChildView_A()
        }
        .environmentObject(settings)
    }
}

struct AppChildView_A: View {
    @EnvironmentObject var appSettings: UserSettings_1
    
    var body: some View {
        VStack{
            Text("Child View A: \(appSettings.username)")
            AppChildView_B()
        }
    }
}

struct AppChildView_B: View {
    @EnvironmentObject var appSettings: UserSettings_1
    
    var body: some View {
        VStack{
            Text("Child View B: \(appSettings.username)")
            AppChildView_C()
        }
    }
}

struct AppChildView_C: View {
    @EnvironmentObject var appSettings: UserSettings_1
    
    var body: some View {
        VStack{
            Text("Child View C: \(appSettings.username)")
            Button("Change Username") {
                appSettings.username = "Updated by Child View C"
            }
        }
    }
}

#Preview {
    AppRootView_1()
}
