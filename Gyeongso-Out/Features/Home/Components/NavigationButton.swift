//

import SwiftUI

struct NavigationButton: View {
  let icon: String
  let subtitle: String
  let title: String
  var body: some View {
    NavigationStack {
      Button(action: {
        
      }, label: {
        VStack(alignment: .leading, spacing: 8) {
          Image(systemName: icon)
            .foregroundStyle(.appPrimary)
            .font(.system(size: 38))
          Text(subtitle)
            .opacity(0.7)
          Text(title)
            .font(.system(size: 18.5))
            .fontWeight(.semibold)
        }
        .tint(.black)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(14)
      })
      .frame(maxWidth: 180, maxHeight: 131)
      .background(.white)
      .cornerRadius(18)
    }
  }
}
