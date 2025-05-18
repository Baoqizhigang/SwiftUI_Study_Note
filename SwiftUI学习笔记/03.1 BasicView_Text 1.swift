
import Foundation
import SwiftUI


struct BasicView1: View {
    var body: some View {
        VStack {
            Text("Hello World!")
                .foregroundColor(.red)
            
            Divider()
            
            Text("Hello World!")
                .background(Color.red)
            
            Divider()
            
            Text("Hello World! Hello World! Hello World! hello world!hello world!hello world!")
                .multilineTextAlignment(.center)
            
            Divider()
            
            Text("Hello World! Hello World! Hello World! hello world!hello world!hello world!")
                .multilineTextAlignment(.leading)
            
            Divider()
            
            Text("Hello World! Hello World! Hello World! hello world!hello world!hello world!Hello World! Hello World! Hello World! hello world!hello world!hello world!Hello World! Hello World! Hello World! hello world!hello world!hello world!")
                .foregroundColor(.blue)
                .lineLimit(2).truncationMode(.tail)
            
            Divider()
            
            Text("Hello World! Hello World! Hello World! hello world!hello world!hello world!hello world!hello worldhello world!hello world")
                .lineSpacing(15)
            
            Divider()
            
            Text("Hello World! Hello")
                .kerning(10)
            
            Divider()
            
            Text("Hello World! Hello")
                .padding(20)
                .background(Color.yellow)

            Divider()
            
            Text("Hello World! Hello")
                .frame(width: 200, height: 80, alignment: .bottomLeading)
                .background(Color.cyan)
            
            Divider()
            
            Text("Hello World! Hello")
                .foregroundColor(.purple)
                .opacity(0.5)
                .shadow(color: .black, radius: 5)
            
            Divider()
            
            Text("Hello World! Hello")
                .kerning(10)
            
            Divider()
        }
    }
}

#Preview {
    BasicView1()
}
