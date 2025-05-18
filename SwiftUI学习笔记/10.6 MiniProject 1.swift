import SwiftUI

struct MiniProject_1: View {
    @State private var noticationEnable = true
    @State private var displayMode = "Light Color"
    @State private var themeColor = Color.blue
    @State private var volumeLevel: Double = 0.5
    @State private var showPrivacyInfo = false
    
    let displayOptions = ["Light Mode","Dark Mode"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Notification")) {
                    Toggle("Enable Notification", isOn: $noticationEnable)
                }
                
                Section(header: Text("Theme")) {
                    Picker("Theme", selection: $displayMode){
                        ForEach(displayOptions, id: \.self) { option in
                            Text(option)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Color")) {
                    ColorPicker("Choose Color", selection: $themeColor)
                    Text("This is the color you choose")
                        .foregroundColor(themeColor)
                        .font(.title3)
                        .fontWeight(.bold)
                    }
                
                Section(header: Text("Volume")) {
                    VStack {
                        Slider(value: $volumeLevel)
                        Text("Volume: \(Int(volumeLevel * 100))")
                    }
                    .padding(.vertical)
                }
                
                Section(header: Text("Privacy")) {
                    DisclosureGroup("Privacy Info", isExpanded: $showPrivacyInfo) {
                        Text("This App will not collect your private info.")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .padding(.top, 5)
                    }
                }

                }
            }
            .navigationTitle(Text("Seeting Page"))
    }
}

#Preview {
    MiniProject_1()
}
