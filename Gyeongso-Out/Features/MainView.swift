import SwiftUI

struct MainView: View {
    enum Tab { case home, passCardList }
    
    @State private var selectedTab: Tab = .home

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) { // VStack 내부 뷰 사이 간격
                // 상단 탭 + 알림 버튼
                HStack {
                    Button("홈") { selectedTab = .home }
                        .foregroundStyle(selectedTab == .home ? .black : .gray)
                        .padding(.trailing, 12)
                    
                    Button("외출증 목록") { selectedTab = .passCardList }
                        .foregroundStyle(selectedTab == .passCardList ? .black : .gray)
                    
                    Spacer()
                    
                    Button(action: {
                        // 알림 버튼 액션
                    }) {
                        Image(systemName: "bell")
                            .font(.system(size: 24))
                    }
                    .foregroundStyle(.primary)
                    .fontWeight(.regular)
                }
                .padding(.horizontal, 28)
                .padding(.vertical, 12)
                .font(.system(size: 26))
                .fontWeight(.semibold)
                
                // 선택된 탭 컨텐츠
                if selectedTab == .home {
                    ScrollView {
                        HomeView()
                            .padding(.top, 10) // 상단과 간격
                    }
                } else {
                    PassCardListView()
                        .padding(.top, 10)
                }

                Spacer() // 화면 하단까지 채움
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.appBackground)
        }
    }
}

#Preview {
    MainView()
}
