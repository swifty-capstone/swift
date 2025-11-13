import SwiftUI

struct LoginView: View {
  @StateObject var vm = LoginViewModel()
  @FocusState var focused1: Bool
  @FocusState var focused2: Bool
  
  var body: some View {
    VStack(alignment: .center) {
      VStack(alignment: .leading, spacing: 6) {
        VStack(alignment: .leading, spacing: 20) {
          Image(.appLogo)
            .font(.system(size: 55))
          Text("경북소프트웨어마이스터고등학교\n외출증 관리 서비스")
            .font(.title2)
            .fontWeight(.semibold)
          Text("외출증 관리 서비스 사용을 위해 로그인을 해주세요")
            .font(.subheadline)
            .opacity(0.6)
        }
        .padding([.top, .bottom], 40)
        .padding(.bottom, 10)
        
        Text("학번")
          .font(.system(size: 16))
          .fontWeight(.light)
        TextField("", text: $vm.user.id)
          .focused($focused1)
          .textInputAutocapitalization(.never)
        Rectangle()
          .frame(height: 0.6)
          .foregroundStyle(focused1 ? .black : .gray)
          .padding(.bottom)
          .padding(.bottom, 2)
        
        Text("비밀번호")
          .font(.system(size: 16))
          .fontWeight(.light)
        SecureField("", text: $vm.user.password)
          .focused($focused2)
          .textFieldStyle(.plain)
          .textInputAutocapitalization(.never)
        Rectangle()
          .frame(height: focused2 ? 1 : 0.6)
          .foregroundStyle(focused2 ? .black : .gray)
        
        Button(action: {
          print("\(vm.user.id)")
          print("\(vm.user.password)")
        }, label: {
          Text("로그인하기")
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: 48)
        })
        .background(.appPrimary)
        .cornerRadius(12)
        .padding(.top, 30)
        .padding(.bottom, 8)
        
        Button(action: {
          
        }) {
          Text("비밀번호를 잊으셨나요?")
            .frame(maxWidth: .infinity)
            .font(.system(size: 16))
        }
        Spacer()
      }
      .padding()
    }
    .padding(.horizontal, 10)
  }
}

#Preview {
  LoginView()
}
