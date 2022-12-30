import SwiftUI

struct StudentSignUpPWView: View {
    @StateObject var signUpViewModel = SignUpViewModel()
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 113)
                Text("회원가입")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 40))
                Text("비밀번호 입력")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Bold", size: 40))
                    .padding(.bottom, 71)
                Group {
                    VStack(spacing: 17) {
                        TextFieldView(
                            text: $signUpViewModel.accountPassword,
                            placeholder: "비밀번호",
                            indicator: "20글자 이상의 비밀번호로 입력해주세요 :)",
                            font: .custom("NotoSansKR-Light", size: 18),
                            isSecurity: true
                        )
                        TextFieldView(
                            text: $signUpViewModel.accountPassword,
                            placeholder: "비밀번호 확인",
                            indicator: "위의 비밀번호와 동일한 비밀번호를 입력해 주세요!",
                            font: .custom("NotoSansKR-Light", size: 18),
                            isSecurity: true
                        )
                    }
                }
                Spacer()
                RectangleButtonView(
                    title: "회원가입",
                    font: .custom("NotoSansKR-Bold", size: 20),
                    action: {
                        print("회원가입")
                    }
                )
            }
        }
        .padding(.horizontal, 16)
        .navigationBarHidden(true)
    }
}

struct StudentSignUpPWView_Previews: PreviewProvider {
    static var previews: some View {
        StudentSignUpPWView()
    }
}
