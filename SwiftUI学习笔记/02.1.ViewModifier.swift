
import Foundation
import SwiftUI


struct ViewModifierView: View {
    var body: some View {
        VStack {
            Image("appicon")
                .resizable()
                .frame(width: 200, height: 200)
                .scaledToFill()
                .clipShape(Circle())
                .overlay(
                    Text("Hello")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(10)
                        .frame(width: 130, height: 100, alignment: .topLeading)
                        .background(Color.blue)
                        .opacity(0.7))
                    
                Image("appicon")
                    .resizable()
                    .frame(width: 400, height: 200)
                    .scaledToFill()
                    .clipShape(Capsule())
            
               Image("appicon")
                    .resizable()
                    .frame(width: 400, height: 200)
                    .scaledToFill()
                    .clipShape(Ellipse())
                    .blur(radius: 5)
            
            Spacer()
                
            HStack {
                Text("Hello World!")
                    .font(.headline)
                    .foregroundColor(.pink)
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .scaledToFit()
                    .foregroundColor(.pink)
                
            }
        }
        
    }
}

#Preview {
    ViewModifierView()
}
