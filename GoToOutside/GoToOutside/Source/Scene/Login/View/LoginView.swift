import SwiftUI

struct LoginView: View {
    @State private var id = ""
    @State private var password = ""
    var body: some View {
        ZStack {
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
                TextField("아이디", text: $id)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 18))
                    .padding(.bottom, 7)
                Rectangle()
                    .frame(height: 2)
                    .padding(.bottom, 43)
                SecureField("비밀번호", text: $password)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 18))
                    .padding(.bottom, 7)
                Rectangle()
                    .frame(height: 2)
                Spacer()
                NavigationLink(destination: SelectView()) {
                    HStack {
                        Spacer()
                        Text("계정이 없다면?")
                            .foregroundColor(.gray1)
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
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Spacer()
                        Text("로그인")
                            .foregroundColor(.white)
                            .font(.custom("NotoSansKR-Bold", size: 20))
                            .padding(.vertical, 14)
                        Spacer()
                    }
                    .background(.black)
                    .cornerRadius(12)
                }
                .padding(.bottom, 10)
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
