
import Foundation
import SwiftUI


struct LayoutView6: View {
    var body: some View {
        
        VStack {
            VStack(spacing: -60) {
                HStack{
                    Text("View 1")
                    Text("View 2")
                }
                .background(Color.pink)
                .frame(width: 300, height: 120, alignment: .center)
                
                HStack{
                    Text("View 1")
                    Spacer()
                    Text("View 2")
                }
                .background(Color.blue)
                .frame(width: 300, height: 120, alignment: .center)
            }
            .padding(.vertical, -20)

            HStack{
                
                VStack{
                    Text("View 3")
                    Text("View 4")
                }
                .background(Color.green)
                
                Divider()
                
                VStack{
                    Text("View 3")
                    Spacer()
                    Text("View 4")
                }
                .background(Color.yellow)
            }
            .frame(width: 300, height: 120, alignment: .center)
            
            HStack{
                Image("night")
                    .resizable()
                    .scaledToFill( )
                    .frame(width: 200)
                    .clipped( )
                
                Spacer(minLength: 20)
                
                Text("This is some text...")
            }
            .frame(width: 300, height: 120)
            .background(Color.cyan)
            .font(.title)
            .clipped()
            
            HStack{
                Text("View 1")
                Spacer()
                Text("View 2")
                Spacer()
                Text("View 3")
            }
            .font(.title)
            .background(Color.purple)
            .frame(width: 300, height: 120, alignment: .center)
            
        }
    }
}

#Preview {
    LayoutView6()
}
