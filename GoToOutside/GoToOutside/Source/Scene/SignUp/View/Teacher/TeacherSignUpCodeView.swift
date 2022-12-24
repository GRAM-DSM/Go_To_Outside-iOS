import SwiftUI

struct TeacherSignUpCodeView: View {
    @StateObject var signUpViewModel = SignUpViewModel()
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 113)
                Text("회원가입")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 40))
                Text("가입코드 입력")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Bold", size: 40))
                    .padding(.bottom, 50)
                Group {
                    VStack(spacing: 17) {
                        TextFieldView(
                            text: $signUpViewModel.accessCode,
                            placeholder: "가입코드",
                            indicator: "지정된 가입코드를 입력해주세요",
                            font: .custom("NotoSansKR-Light", size: 18),
                            keyboardType: .numberPad
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

struct TeacherSignUpCodeView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherSignUpCodeView()
    }
}
