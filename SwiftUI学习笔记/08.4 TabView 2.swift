import SwiftUI

struct TabView2: View {
    init (){
        UITabBar.appearance().backgroundColor = UIColor.systemMint
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    }
   
    var body: some View {
        TabView{
            HomeView2().tabItem{
                Image(systemName: "house")
                Text("< -- Home Page -- >")
            }
            
            SettingView2().tabItem{
                Image(systemName: "gear")
                
                Text("< -- Setting Page -- >")
            }
            ProfileView2().tabItem{
                Image(systemName: "person")
                Text("< -- Profile Page -- >")
            }
        }
        .accentColor(.white)

    }
}

struct HomeView2: View {
    var body: some View {
        Text ("This is Home Page")
            .font(.title)
    }
}

struct SettingView2: View {
    var body: some View {
        Text ("This is Setting Page")
            .font(.title)
    }
}
struct ProfileView2: View {
    var body: some View {
        Text ("This is My Profile Page")
            .font(.title)
    }
}

#Preview {
    TabView2()
}
