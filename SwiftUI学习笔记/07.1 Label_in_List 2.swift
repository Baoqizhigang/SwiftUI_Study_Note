
import Foundation
import SwiftUI


struct LabelView2: View {
    
    
    var body: some View {
        List{
            Label("Contact", systemImage: "person.crop.circle")
            Label("Setting", systemImage: "gear")
            Label("Photos", systemImage: "photo")
            Label("Music", systemImage: "music.note")
            Label("Video", systemImage: "play.rectangle")
            Label("Calender", systemImage: "calendar")
            Label("Map", systemImage: "map")
            Label("Email", systemImage: "envelope")
        }
        .font(.title.bold())

    }
}

#Preview {
    LabelView2()
}



