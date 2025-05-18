
import Foundation
import SwiftUI


struct ListView3: View {
    
    let travelData = [
        ("sanfrancisco", "1", "San Francisco", "2024.06.08"),
        ("newyork", "2", "New York", "2024.09.21"),
        ("losangeles", "3", "Los Angeles", "2025.02.14")
    ]
   
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Travel")
                .font(.largeTitle)
                .bold()
                .padding(.leading, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(travelData, id: \.0) { data in
                        TravelCardView(imageName: data.0, avatarName: data.1, userName: data.2, date: data.3)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.top, 20)
        
        Spacer()
    }
}

struct TravelCardView: View {
    let imageName: String
    let avatarName: String
    let userName: String
    let date: String
    
    var body: some View {
        
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 300)
                .cornerRadius(15)
                .overlay(
                    VStack{
                        Spacer()
                        HStack{
                            Image(avatarName)
                                .resizable()
                                .frame(width: 36, height: 36)
                                .background(Color.white.opacity(0.5))
                                .clipShape(Circle())
                                //.border(.white, width: 1)
                                
                            VStack(alignment: .leading) {
                                Text(userName)
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                                Text(date)
                                    .font(.system(size: 8))
                                    .foregroundColor(.white)
                            }
                            
                            Spacer()
                        }
                        .padding([.leading, .bottom], 8)
                    }
                    .background(Color.black.opacity(0.2))
                    .cornerRadius(15)
             )
        }
    }
}

#Preview {
    ListView3()
}



