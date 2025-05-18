import SwiftUI

struct TravelAppView: View {
    @State private var selectedTab = 0

    var body: some View {

        TabView(selection: $selectedTab) {
            
            AppHomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home Page")
                }
                .tag(0)
            
            Text("Explore Page")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
                .tag(1)
            
            Text("Profile Page")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}

struct AppHomeView: View {
    @State private var path: [TravelLocation] = []
    
    var body: some View {

        NavigationStack(path: $path) {
            VStack {
                CarouselView(images: ["travel1","travel2","travel3","sanfrancisco","newyork"])
                TravelListView(path: $path)
            }
            .navigationTitle(Text("Travel App"))
            .navigationDestination(for: TravelLocation.self) {
                location in TravelDetailView(location: location)
            }
        }
    }
}

struct CarouselView: View {
    var images: [String]
    @State private var currentIndex = 3
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<images.count, id: \.self) { index in
                Image(images[index])
                    .resizable()
                    .scaledToFill()
                    .tag(index)
                    .frame(height: 300)
                    .clipped()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 250)
    }
}

struct TravelListView: View {
    @Binding var path: [TravelLocation]
    
    let travelLocation = [
        TravelLocation(image:"travel1", name: "Los Angeles", description: "Beautiful SoCal City... you will love it here!"),
        TravelLocation(image:"travel2", name: "In the middel of nowhere", description: "Ocean and Sunset... you will find peace here!"),
        TravelLocation(image:"travel3", name: "BeiJing", description: "Culture and History... a whole new world!")
    ]
    
    var body: some View {
        List(travelLocation) { location in
            Button(action: {
                path.append(location)
            }) {
                HStack {
                    Image(location.image)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .cornerRadius(8)
                    VStack(alignment: .leading) {
                        Text(location.name)
                            .font(.headline)
                        Text(location.description)
                            .font(.subheadline)
                            .lineLimit(2)
                    }
                    .padding(.leading, 8)
                }
                .padding(8) 
            }
        }
        .listStyle(.plain)
    }
}

struct TravelDetailView: View {
    var location: TravelLocation
    
    var body: some  View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(location.image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 350)
                    .clipped()
                
                Text(location.name)
                    .font(.largeTitle)
                    .padding()
                
                Text(location.description)
                    .font(.body)
                    .padding()
            }
        }
        .navigationTitle(location.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TravelLocation: Identifiable, Hashable {
    let id = UUID()
    let image: String
    let name: String
    let description: String
}

struct TravelAppView_Previews: PreviewProvider {
    static var previews: some View{
        TravelAppView()
    }
}
//
//#Preview {
//    TravelAppView()
//}
