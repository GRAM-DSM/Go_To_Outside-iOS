import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    var body: some View {
        ZStack {
            NavigationLink(destination: SignUpView(), isActive: $loginViewModel.isSuccess) { EmptyView() }
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 113)
                Text("GoToOutside")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 40))
                Text("로그인")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Bold", size: 40))
                    .padding(.bottom, 71)
                TextFieldView(
                    text: $loginViewModel.accountID,
                    placeholder: "아이디",
                    font: .custom("NotoSansKR-Light", size: 18)
                )
                Spacer()
                    .frame(height: 43)
                TextFieldView(
                    text: $loginViewModel.password,
                    placeholder: "비밀번호",
                    font: .custom("NotoSansKR-Light", size: 18),
                    isSecurity: true
                )
                Spacer()
                NavigationLink(destination: SelectView()) {
                    HStack {
                        Spacer()
                        Text("계정이 없다면?")
                            .foregroundColor(.gray3)
                            .font(.custom("NotoSansKR-Regular", size: 18))
                        Text("회원가입")
                            .foregroundColor(.black)
                            .font(.custom("NotoSansKR-Regular", size: 18))
                            .background()
                            .padding(.bottom, 1.0)
                            .background(Color.black)
                        Spacer()
                    }
                    .padding(.bottom, 29)
                }
                RectangleButtonView(
                    title: "로그인",
                    font: .custom("NotoSansKR-Bold", size: 20),
                    action: {
                        loginViewModel.login()
                    }
                )
            }
        }
        .padding(.horizontal, 16)
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
