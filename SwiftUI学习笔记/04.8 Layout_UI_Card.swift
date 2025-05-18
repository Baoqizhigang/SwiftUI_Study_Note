
import Foundation
import SwiftUI


struct LayoutView8: View {
    var body: some View {
        ZStack {
            
            Color.white
                .frame(width: 380, height: 340)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 3, x: 3, y: 3)

            
            VStack {
                ZStack (alignment: .bottomLeading) {

                    Image("night")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 250)
                        .cornerRadius(10)
                        .clipped()
                    
                    
                    VStack (alignment: .leading) {
                        Text("Hello, World!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Hello, World!")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                    .padding()
                    
                }

                
                HStack {
                    Image("appicon")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Sky Walker")
                            .font(.headline)
                        Text("New York, USA")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        print("Follow button tapped")
                    }) {
                        Text("Follow")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 100)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    
                }
                .padding(.horizontal, 25)
                
            }
        }
    }
}

#Preview {
    LayoutView8()
}



