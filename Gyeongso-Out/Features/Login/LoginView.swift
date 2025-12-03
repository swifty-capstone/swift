import SwiftUI

struct LoginView: View {
  
  enum Field: Hashable {
    case id, password
  }
  
  @StateObject private var vm = LoginViewModel()
  @FocusState private var focusedField: Field?
  let idMaxLength: Int = 4
  
  var body: some View {
    VStack(alignment: .center) {
      VStack(alignment: .leading, spacing: 6) {
        VStack(alignment: .leading, spacing: 14) {
          Image(.appLogo)
            .font(.system(size: 55))
          Text("경북소프트웨어마이스터고등학교\n외출증 관리 서비스")
            .font(.system(size: 21))
            .fontWeight(.semibold)
//          Text("외출증 관리 서비스 사용을 위해 로그인을 해주세요")
//            .font(.subheadline)
//            .opacity(0.6)
        }
        .padding(.top, 20)
        .padding(.bottom, 40)
        
        Text("학번")
          .font(.system(size: 16))
          .fontWeight(.light)
        TextField("", text: $vm.user.id)
          .focused($focusedField, equals: .id)
          .textInputAutocapitalization(.never)
          .keyboardType(.numberPad)
          .submitLabel(.next)
          .onSubmit {
            focusedField = .password
          }
          .onChange(of: vm.user.id) { oldValue, newValue in
            if newValue.count > idMaxLength {
              vm.user.id = oldValue
            }
          }
        Rectangle()
          .frame(height: focusedField == .id ? 1 : 0.6)
          .foregroundStyle(focusedField == .id ? .black : .gray)
          .padding(.bottom)
          .padding(.bottom, 2)
        
        Text("비밀번호")
          .font(.system(size: 16))
          .fontWeight(.light)
        SecureField("", text: $vm.user.password)
          .focused($focusedField, equals: .password)
          .textFieldStyle(.plain)
          .textInputAutocapitalization(.never)
          .submitLabel(.done)
          .onSubmit {
            print(vm.user.id, vm.user.password)
          }
        Rectangle()
          .frame(height: focusedField == .password ? 1 : 0.6)
          .foregroundStyle(focusedField == .password ? .black : .gray)
        
        Button(action: {
          print("\(vm.user.id)")
          print("\(vm.user.password)")
        }, label: {
          Text("로그인하기")
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: 47)
        })
        .background(.appPrimary)
        .cornerRadius(12)
        .padding(.top, 23)
        .padding(.bottom, 6)
        
        HStack {
          Spacer()
          Button(action: {
            
          }) {
            Text("비밀번호를 잊으셨나요?")
              .frame(width: 200)
              .font(.system(size: 14))
          }
          Spacer()
        }
        Spacer()
      }
      .padding()
    }
    .ignoresSafeArea(.keyboard)
    .padding(.horizontal, 10)
  }
}

#Preview {
  LoginView()
}
