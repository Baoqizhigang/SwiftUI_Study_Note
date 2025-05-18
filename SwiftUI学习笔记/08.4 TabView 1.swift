import SwiftUI

struct TabView1: View {
   
   
    var body: some View {
        TabView{
            HomeView().tabItem{
                Image(systemName: "house")
                Text("< -- Home Page -- >")
            }
            
            SettingView().tabItem{
                Image(systemName: "gear")
                
                Text("< -- Setting Page -- >")
            }
            ProfileView().tabItem{
                Image(systemName: "person")
                Text("< -- Profile Page -- >")
            }
        }

    }
}

struct HomeView: View {
    var body: some View {
        Text ("This is Home Page")
            .font(.title)
    }
}

struct SettingView: View {
    var body: some View {
        Text ("This is Setting Page")
            .font(.title)
    }
}
struct ProfileView: View {
    var body: some View {
        Text ("This is My Profile Page")
            .font(.title)
    }
}

#Preview {
    TabView1()
}
