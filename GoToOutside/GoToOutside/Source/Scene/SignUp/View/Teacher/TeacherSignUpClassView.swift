import SwiftUI

struct TeacherSignUpClassView: View {
    @StateObject var signUpViewModel = SignUpViewModel()
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 113)
                Text("회원가입")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Light", size: 40))
                Text("반 입력")
                    .foregroundColor(.black)
                    .font(.custom("NotoSansKR-Bold", size: 40))
                    .padding(.bottom, 50)
                Group {
                    VStack(spacing: 17) {
                        TextFieldView(
                            text: $signUpViewModel.accountGrade,
                            placeholder: "학년",
                            indicator: "가르치시는 학년을 입력해주세요",
                            font: .custom("NotoSansKR-Light", size: 18)
                        )
                        TextFieldView(
                            text: $signUpViewModel.accountClass,
                            placeholder: "반",
                            indicator: "가르치시는 반을 입력해주세요",
                            font: .custom("NotoSansKR-Light", size: 18)
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

struct TeacherSignUpClassView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherSignUpClassView()
    }
}
