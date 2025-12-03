//

import SwiftUI

struct HomeView: View {
  var body: some View {
    VStack(spacing: 16) {
      MyPassCardView()
      HStack {
        NavigationButton(icon: "calendar", subtitle: "목록부터", title: "외출 일정 보기")
        NavigationButton(icon: "xmark.circle", subtitle: "왜 안 되나요?", title: "거절된 신청 목록")
      }
    }
    .padding(.horizontal, 16)
  }
}
