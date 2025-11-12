//

import SwiftUI

struct MainTabView: View {
  @State private var tabIndex = 0
  var body: some View {
    TabView(selection: $tabIndex) {
      MainView()
        .tabItem { Label("홈", systemImage: "house") }
        .tag(0)
      
      PassCardListView()
        .appBackground()
        .tabItem { Label("외출증", systemImage: "list.bullet.rectangle.portrait") }
        .tag(1)
      
      ProfileView()
        .appBackground()
        .tabItem { Label("프로필", systemImage: "person.circle") }
        .tag(2)
    }
    .tint(.appPrimary)
  }
}

#Preview {
  MainTabView()
}
