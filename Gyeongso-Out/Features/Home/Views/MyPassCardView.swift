//

import SwiftUI

struct MyPassCardView: View {
  
  var body: some View {
    // let passCard
    VStack(spacing: 10) {
      HStack {
        Text("내 외출증")
          .font(.system(size: 22))
          .fontWeight(.semibold)
        Spacer()
      }
      .frame(maxWidth: .infinity)
      
      
      VStack {
//        if passCardContent = passCard {
//          passCardContent()
//        } else {
          Text("승인된 외출증이 없습니다.")
          .font(.system(size: 14))
          .foregroundStyle(.gray)
//        }
      }
      .frame(maxWidth: .infinity, minHeight: 120, maxHeight: .infinity)
      
      Button(action: {
        print("신청하기")
      }, label: {
        Text("신청하기")
          .foregroundStyle(.white)
          .fontWeight(.semibold)
          .frame(maxWidth: .infinity)
          .frame(height: 46)
      })
      .background(.appPrimary)
      .cornerRadius(12)
    }
    .padding(.horizontal, 14)
    .padding(.vertical)
    .frame(maxWidth: .infinity, minHeight: 190, maxHeight: .infinity)
    .fixedSize(horizontal: false, vertical: true)
    .background(.white)
    .cornerRadius(12)
  }
}

#Preview {
  MyPassCardView()
}
