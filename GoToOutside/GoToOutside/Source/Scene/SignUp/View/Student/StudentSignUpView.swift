import SwiftUI

struct StudentSignUpView: View {
    @StateObject var signUpViewModel = SignUpViewModel()
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 113)
                Text("회원가입")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 40))
                Text("어떻게 부를까요?")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Bold", size: 40))
                    .padding(.bottom, 50)
                Group {
                    VStack(spacing: 17) {
                        TextFieldView(
                            text: $signUpViewModel.accountID,
                            placeholder: "아이디",
                            indicator: "기억하기 쉬운 아이디로 정해주세요 :)",
                            font: .custom("NotoSansKR-Light", size: 18)
                        )
                        TextFieldView(
                            text: $signUpViewModel.accountName,
                            placeholder: "이름",
                            indicator: "본인의 이름으로 작성해 주세요!",
                            font: .custom("NotoSansKR-Light", size: 18)
                        )
                        TextFieldView(
                            text: $signUpViewModel.accountNumber,
                            placeholder: "학번",
                            indicator: "학교 학번 4자리로 입력해주세요!",
                            font: .custom("NotoSansKR-Light", size: 18),
                            keyboardType: .numberPad
                        )
                    }
                }
                Spacer()
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Spacer()
                        Text("계속하기")
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

struct StudentSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        StudentSignUpView()
    }
}
