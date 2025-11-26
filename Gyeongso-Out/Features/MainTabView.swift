import SwiftUI

struct MainTabView: View {
    @State private var tabIndex = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            Group {
                switch tabIndex {
                case 0: MainView()
                case 1: PassCardListView()
                case 2: ProfileView()
                default: MainView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemBackground))
            .ignoresSafeArea()
            
            CustomTabBar(tabIndex: $tabIndex)
        }
        .ignoresSafeArea(.keyboard)
    }
}

struct CustomTabBar: View {
    @Binding var tabIndex: Int
    
    var body: some View {
        HStack(spacing: 85) {
            
            TabItem(
                icon: "house.fill",
                title: "홈",
                isSelected: tabIndex == 0
            ) {
                tabIndex = 0
            }
            
            TabItem(
                icon: "list.bullet.rectangle.portrait",
                title: "외출증",
                isSelected: tabIndex == 1
            ) {
                tabIndex = 1
            }
            
            TabItem(
                icon: "person.circle",
                title: "프로필",
                isSelected: tabIndex == 2
            ) {
                tabIndex = 2
            }
        }
        .padding(.top, 15)
        .padding(.horizontal, 24)
        .frame(maxWidth: .infinity)
        .background(
            Color(.white)
        )
    }
}

struct TabItem: View {
    let icon: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(systemName: icon)
                    .font(.system(size: 22))
                    .foregroundColor(isSelected ? Color.appPrimary : Color.gray)
                
                Text(title)
                    .font(.caption)
                    .foregroundColor(isSelected ? Color.appPrimary : Color.gray)
            }
            .animation(.easeOut(duration: 0.15), value: isSelected)
        }
    }
}

#Preview {
    MainTabView()
}
