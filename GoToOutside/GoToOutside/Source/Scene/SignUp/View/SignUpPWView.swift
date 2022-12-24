//
//  SignUpView.swift
//  GoToOutside
//
//  Created by 홍승재 on 2022/12/06.
//

import SwiftUI

struct SignUpPWView: View {
    @StateObject var signupViewModel = SignupViewModel()
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
                            text: $signupViewModel.accountPassword,
                            placeholder: "비밀번호",
                            font: .custom("NotoSansKR-Light", size: 18),
                            indicator: "20글자 이상의 비밀번호로 입력해주세요 :)",
                            isSecurity: true
                        )
                        TextFieldView(
                            text: $signupViewModel.accountPassword,
                            placeholder: "비밀번호 확인",
                            font: .custom("NotoSansKR-Light", size: 18),
                            indicator: "위의 비밀번호와 동일한 비밀번호를 입력해 주세요!",
                            isSecurity: true
                        )
                    }
                }
                Spacer()
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Spacer()
                        Text("회원가입")
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

struct SignUpPWView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPWView()
    }
}
