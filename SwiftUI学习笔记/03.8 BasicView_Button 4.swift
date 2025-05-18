
import Foundation
import SwiftUI


struct BasicView8: View {
    var body: some View {
        
        
        VStack {
            
            Image("chair")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(edges: .all)
                .frame(maxWidth: .infinity, maxHeight: 400)
                .clipped()
            
            VStack {
                Text("Modern Chair Design")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                
                Text("$ 2,000.00")
                    .font(.title2)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("As long as people have been furnishing homes, they've been designing—and shopping for—the best chairs to go in them. From antique pieces from the French Renaissance that have inspired modern interpretations to original midcentury designs that are just as (if not more) popular today as when they were first introduced.")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            
           
            
            
            HStack {
                Button(action: {print("Purchase!")}) {
                    Text("Purchase")
                        .fontWeight(.semibold)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            Color.black
                        )
                        .cornerRadius(20)
                }
                
                
                Button(action: {print("Love this chair!")}) {
                    Image(systemName: "heart")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                }
            }
            .padding()
        }
    }
}

#Preview {
    BasicView8()
}


