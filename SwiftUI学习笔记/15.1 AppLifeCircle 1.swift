
import SwiftUI

@main
struct AppLifeCircle_1: App {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { oldPhase, newPhase in
            switch newPhase {
            case .active:
                print("App is active")
            case .inactive:
                print("App is inactive")
            case .background:
                print("App is in background")
            default:
                break
            }
            
        }
    }
}

struct LifeCycleDemo: View {
    @StateObject private var viewModel = ViewModel()
    @State private var count = 0
    
    init() {
        print("ContentView Initialized.")
    }
    
    var body: some View {
        VStack {
            Text("Data: \(viewModel.data)")
            Button("Update Data") {
                count += 1
                viewModel.data = "Updated Data \(count)"
                print("View Model Data Updated. Current count: \(count)")
            }
        }
        .onAppear{
            print("ContentView onAppear")
        }
        .onDisappear {
            print("ContentView onDisapper")
        }
    }
    
}

class ViewModel: ObservableObject {
    @Published var data: String = "Initial Data"
    
    init() {
        print("ViewModel Initialized.")
    }
    
    deinit {
        print("ViewModel deinitialized.")
    }
}
