
import Foundation
import SwiftUI


struct ViewModifierView5: View {
    var body: some View {
        VStack {
            Text("Customed Font Fail")
                .font(Font.custom("CyberCity-Regular", size: 36))
            Divider()
            
            Text("Title!")
                .font(.title)
            Divider()
            
            Text("LargeTitle")
                .font(.largeTitle)
            Divider()
            
            Text("Subheadline")
                .font(.subheadline)
            Divider()
            
            Text("Body")
                .font(.body)
            Divider()
            
            Text("Caption")
                .font(.caption)
            Divider()
            
            Text("Footnote")
                .font(.footnote)
            Divider()
            
            Text("Title BOLD")
                .font(.title)
                .fontWeight(.bold)
            Divider()
            
            Text("Titlt LIGHT")
                .font(.title)
                .fontWeight(.light)
            Divider()
            
            Text("Title Italic")
                .font(.title)
                .italic(true)
            Divider()
            
            Text("Title Underline")
                .font(.title)
                .underline(true)
            Divider()
            
            Text("Title StrikeThrough")
                .font(.title)
                .strikethrough(true)
            Divider()
            
        }
    }
}

#Preview {
    ViewModifierView5()
}
