//
//  SignUpView.swift
//  GoToOutside
//
//  Created by 홍승재 on 2022/12/06.
//

import SwiftUI

struct SignUpPWView: View {
    @State private var id = ""
    @State private var name = ""
    @State private var number = ""
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
                    SecureField("비밀번호", text: $id)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .foregroundColor(.black)
                        .font(.custom("NotoSansKR-Light", size: 18))
                        .padding(.bottom, 7)
                    Rectangle()
                        .frame(height: 2)
                        .padding(.bottom, 9)
                    Text("20글자 이상의 비밀번호로 입력해주세요 :)")
                        .foregroundColor(.gray1)
                        .font(.custom("NotoSansKR-Light", size: 11))
                        .padding(.bottom, 17)
                    SecureField("비밀번호 확인", text: $name)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .foregroundColor(.black)
                        .font(.custom("NotoSansKR-Light", size: 18))
                        .padding(.bottom, 7)
                    Rectangle()
                        .frame(height: 2)
                        .padding(.bottom, 9)
                    Text("위의 비밀번호와 동일한 비밀번호를 입력해 주세요!")
                        .foregroundColor(.gray1)
                        .font(.custom("NotoSansKR-Light", size: 11))
                        .padding(.bottom, 17)
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
