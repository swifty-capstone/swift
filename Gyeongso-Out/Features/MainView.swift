//

import SwiftUI

struct MainView: View {
  enum Tab { case home, passCardList }
  enum ModalType {}
  @State var selectedTab: Tab = .home
  var body: some View {
    NavigationStack {
      VStack {
        HStack {
          Button("홈") { selectedTab = .home }
            .foregroundStyle(selectedTab == .home ? .black : .gray)
            .padding(.trailing, 12)
          Button("외출증 목록") { selectedTab = .passCardList }
            .foregroundStyle(selectedTab == .passCardList ? .black : .gray)
          Spacer()
          Button(action: {
            
          }) {
            Image(systemName: "bell")
              .font(.system(size: 24))
          }
          .foregroundStyle(.primary)
          .fontWeight(.regular)
          
        }
        .padding(.vertical)
        .padding(.horizontal, 28)
        .font(.system(size: 26))
        .fontWeight(.semibold)
        Spacer()
        
        if selectedTab == .home {
          ScrollView {
            HomeView()
          }
        } else {
          PassCardListView()
        }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(.appBackground)
    }
  }
}
