import SwiftUI

struct NavigationStackView2: View {
    // init() is executed when the view is created, modifying the global navigation bar style. This affects all views using UINavigationBar (global setting).
    init() {
        // Create a UINavigationBarAppearance instance to customize the navigation bar's appearance.
        let appearance = UINavigationBarAppearance()
        // Configure the navigation bar background to be opaque (non-transparent effect).
        appearance.configureWithOpaqueBackground()
        // Set the navigation bar background color to system blue (UIColor.systemBlue).
        appearance.backgroundColor = .systemBlue
        
        // Set the navigation bar appearance for standard mode.
        UINavigationBar.appearance().standardAppearance = appearance
        // Set the navigation bar appearance for compact mode (e.g., landscape or small screens).
        UINavigationBar.appearance().compactAppearance = appearance
        // Set the navigation bar appearance for scroll edge mode (e.g., large title mode).
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("First View")
                    .foregroundColor(.pink)
                    .font(.largeTitle)
            }
            .navigationTitle("Navigation Stack")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationStackView2()
}
