
import Foundation
import SwiftUI


struct ListView4: View {
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Settings")) {
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .foregroundColor(.blue)
                        Text("Account: John Doe")
                    }
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.purple)
                        Text("Password")
                    }
                }
                
                Section(header: Text("Notification")) {
                    Toggle(isOn: .constant(true)) {
                        HStack {
                            Image(systemName: "bell.fill")
                                .foregroundColor(.cyan)
                            Text("Messages")
                        }
                    }
                }
                
                Section(header: Text("Privacy")) {
                    HStack {
                        Image(systemName: "hand.raised.fill")
                            .foregroundColor(.green)
                        Text("Privacy Settings")
                    }
                    HStack {
                        Image(systemName: "location.fill")
                            .foregroundColor(.red)
                        Text("Location")
                    }
                }
                
                Section(header: Text("About")) {
                    HStack {
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(.gray)
                        Text("About Us")
                    }
                }
            }
        }
    }
}

#Preview {
    ListView4()
}



