//
//  TeacherSignUpPWView.swift
//  GoToOutside
//
//  Created by 조병진 on 2022/12/24.
//

import SwiftUI

struct TeacherSignUpPWView: View {
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
                    .padding(.bottom, 50)
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

struct TeacherSignUpPWView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherSignUpPWView()
    }
}
