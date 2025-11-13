import SwiftUI

struct RootView: View {
  @State var isLoggedIn: Bool = true
  var body: some View {
    // 로그인 여부에 따른 if 분기 처리
    if isLoggedIn {
      MainTabView()
    } else {
      LoginView()
    }
  }
} 

#Preview {
  RootView()
}
