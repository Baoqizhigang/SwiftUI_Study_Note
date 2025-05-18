
import Foundation
import SwiftUI


struct LayoutView3: View {
    var body: some View {
        HStack {
            ZStack (alignment: .center){
                Color.blue
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 164, height: 164)
                Text("Hello")
                    .foregroundColor(.purple)
                    .font(.title)
                    .background(Color.yellow.opacity(0.9))
            }
        }
       
        Divider()
        
        HStack {
            ZStack (alignment: .topLeading){
                Color.green
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 164, height: 164)
                Text("Hello")
                    .foregroundColor(.purple)
                    .font(.title)
                    .background(Color.yellow.opacity(0.9))
            }
        }
        
        Divider()
        
        HStack {
            ZStack (alignment: .top){
                Color.cyan
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 164, height: 164)
                Text("Hello")
                    .foregroundColor(.purple)
                    .font(.title)
                    .background(Color.yellow.opacity(0.9))
            }
        }
        
        Divider()
        
        HStack {
            ZStack (alignment: .bottomLeading){
                Color.red
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 64, height: 64)
                Text("Hello")
                    .foregroundColor(.purple)
                    .font(.title)
                    .background(Color.yellow.opacity(0.9))
            }
        }
        
        Divider()
        
        HStack {
            ZStack (alignment: .bottomTrailing){
                Color.yellow
                Image(systemName: "heart.fill")
                
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 64, height: 64)
                Text("Hello")
                    .foregroundColor(.purple)
                    .font(.title)
                    .background(Color.yellow.opacity(0.9))
            }
        }
        
        Divider()
        
        Image(systemName: "heart.fill")
            .zIndex(1)
        
        
    }
}

#Preview {
    LayoutView3()
}
