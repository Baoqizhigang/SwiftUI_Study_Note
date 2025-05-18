
import Foundation
import SwiftUI


struct TextFieldView1: View {
    @State private var name: String = ""
    @State private var textFiledData: String = ""
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            TextField("Enter your name", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.indigo)
                    .font(.headline)
                TextField("Enter your email", text: $textFiledData)
                    .padding(.leading, 9)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.indigo, lineWidth: 1))
            .padding(.horizontal)
            
            VStack(spacing: 8) {
                TextField("Please enter your user name", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Please enter your password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    TextFieldView1()
}



