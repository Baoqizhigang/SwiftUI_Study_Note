import SwiftUI

struct TabView3: View {
    
    var body: some View {
        
        TabView{
            ForEach(0..<3){ index in
                VStack {
                    Text("Page \(index + 1)")
                        .font(.largeTitle)
                        .bold()
                        .padding()

                    HStack {
                        ForEach(0..<index + 1)
                        { star in
                            HStack{
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                        }
                    }
                    .padding(.bottom)
                    
                    Image("travel\(index + 1)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                }
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}



#Preview {
    TabView3()
}
