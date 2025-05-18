
import Foundation
import SwiftUI


struct ViewModifierView6: View {
    var body: some View {
        VStack {
            Text("Welcome Back!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.primary)
           
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .foregroundColor(Color.blue.opacity(0.8))
                .padding()
                .background(Color.blue.opacity(0.1))
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.4), radius: 1, x: 0, y: 5)
                .padding()
            
            Text("Please log in to continue")
                .font(.subheadline)
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding(.horizontal, 40)
            
        }
    }
}

#Preview {
    ViewModifierView6()
}
