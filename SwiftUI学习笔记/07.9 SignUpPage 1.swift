
import SwiftUI


struct SignUpDemoView1: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var showPassword: Bool = false
    @State private var enableFaceID: Bool = false
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    
    var body: some View {
        
        VStack (spacing: 20) {
            HStack {
                Image(systemName: "bolt.fill")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Spacer()
                Text("Sign In")
                    .font(.title2)
                    .foregroundColor(.white)
            }
            .padding()
            .background(Color.indigo)
            
            Group {
                VStack(alignment: .leading) {
                    Text("First Name")
                        .font(.caption)
                        .foregroundColor(.gray)
                    TextField("Enter your first name", text: $firstName)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.3), lineWidth: 1))
                }
                
                VStack(alignment: .leading) {
                    Text("Last Name")
                        .font(.caption)
                        .foregroundColor(.gray)
                    TextField("Enter your last name", text: $lastName)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.3), lineWidth: 1))
                }
                
                VStack(alignment: .leading) {
                    Text("Email Address")
                        .font(.caption)
                        .foregroundColor(.gray)
                    TextField("Enter your email", text: $email)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.3), lineWidth: 1))
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                }
                
                VStack(alignment: .leading) {
                    Text("Password")
                        .font(.caption)
                        .foregroundColor(.gray)
                    HStack {
                        if showPassword {
                            TextField("******", text: $password)
                                .padding()
                        } else {
                            SecureField("******", text: $password)
                                .padding()
                        }
                        Button(action: {
                            self.showPassword.toggle()
                        }) {
                            Image(systemName: self.showPassword ? "eye" : "eye.slash")
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing, 8)
                    }
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.3), lineWidth: 1))
                }

            }
            .padding(.horizontal)
            
            Toggle(isOn: $enableFaceID) {
                Text("Enable Face ID")
                    .font(.body)
                    .foregroundColor(.black)
            }
            .padding(.horizontal)
            
            Button (action: {
                print("Sign Up")
            }) {
                Text("SIGN UP")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.indigo)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            HStack {
                Divider()
                Text("OR")
                    .font(.caption)
                    .foregroundColor(.gray)
                Divider()
            }
            .padding(.horizontal)
            
            Button (action: {
                print("Sign Up with Google Account")
            }) {
                HStack{
                    Image(systemName: "g.circle.fill")
                        .foregroundColor(.red)
                    Text("Connect with Google")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.3), lineWidth: 1))
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.top, 40)
        .background(Color.white)
    }
}

#Preview {
    SignUpDemoView1()
}

